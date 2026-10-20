class DataplaneProxy < Formula
  desc "Binary-only Dataplane Envoy with the combined LLM and MCP extension bundle"
  homepage "https://github.com/dio/envoy-builder"
  url "https://github.com/dio/envoy-builder/releases/download/dataplane-proxy-4df1998da2ae-dcdbfe165202-darwin-arm64/dataplane-proxy-4df1998da2ae-dcdbfe165202-darwin-arm64.tar.gz"
  version "0.0.20261020.2"
  sha256 "396108784686534fff99089c89b88267023e2457bc364db9bea65c62dbddfa40"
  license "Apache-2.0"

  depends_on arch: :arm64
  depends_on macos: :ventura

  def install
    bin.install "envoy" => "dataplane-envoy"
    libexec.install "libproxy_bundle.so", "provenance.json"
    pkgshare.install "LICENSE.envoy", "NOTICE.envoy", "LICENSE.dataplane"
  end

  def caveats
    <<~EOS
      Experimental macOS arm64 binary pair; no compilation is required.
      Envoy: #{bin}/dataplane-envoy
      Bundle: #{libexec}/libproxy_bundle.so
      Set ENVOY_DYNAMIC_MODULES_SEARCH_PATH=#{libexec} when launching Envoy.
      Supply a Dataplane-generated Envoy configuration; no gateway starts on install.
      The Dataplane runtime/management launcher is not included.
      Built for macOS 13; runtime qualified on macOS 26.5.1.
    EOS
  end

  test do
    assert_match "0eda42d56fb8", shell_output("#{bin}/dataplane-envoy --version")
    assert_path_exists libexec/"libproxy_bundle.so"
    assert_equal "0b63d0e621b7530547b384b8a99f212f95d9b318cd14e019d6670a2a2f3734a3",
                 Digest::SHA256.file(libexec/"libproxy_bundle.so").hexdigest
  end
end
