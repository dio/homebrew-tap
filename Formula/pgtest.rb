class Pgtest < Formula
  desc "Run parallel Go package tests against one temporary PostgreSQL server"
  homepage "https://github.com/dio/pgtest"
  url "https://github.com/dio/pgtest/releases/download/v0.2.0/pgtest_0.2.0_source.tar.gz"
  sha256 "ceb081be7ec671a3757757cbf883a4a3397992f77ffab2622a0493ac5cf0f404"
  license "MIT"

  depends_on "go" => :build

  def install
    ENV["CGO_ENABLED"] = "0"
    system "go", "build", *std_go_args(ldflags: "-s -w -X main.version=#{version}"), "./cmd/pgtest"
  end

  def caveats
    <<~EOS
      Add github.com/dio/pgtest v0.2.0 or newer to your application's Go module.
      Run all package tests with: pgtest -- go test -count=1 ./...
      PostgreSQL binaries are downloaded and cached on first use.
    EOS
  end

  test do
    assert_match "pgtest #{version}", shell_output("#{bin}/pgtest version")
    assert_match "Usage: pgtest", shell_output("#{bin}/pgtest -h 2>&1")
  end
end
