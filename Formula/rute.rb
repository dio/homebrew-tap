# typed: false
# frozen_string_literal: true

# This file is published by the rute release workflow. DO NOT EDIT.
class Rute < Formula
  desc "Loopback OpenAI-compatible proxy backed by Codex OAuth"
  homepage "https://github.com/dio/rute"
  url "https://github.com/dio/rute/releases/download/v0.2.0/rute_0.2.0_source.tar.gz"
  sha256 "0b8837ac3b4e4bc7f8b42b9ee9b687d113b67675ef9cbaf9c8bd3597e5071d71"

  depends_on "go" => :build

  def install
    ldflags = %W[
      -s -w
      -X main.version=#{version}
      -X main.commit=776efd930de51514a9586b3b2b6f79ed4dbe46fd
      -X main.buildDate=2026-07-27T05:32:05+07:00
    ].join(" ")

    system "go", "build", *std_go_args(ldflags: ldflags, output: libexec/"rute-proxy"), "./cmd/proxy"
    bin.write_exec_script libexec/"rute-proxy"
    bin.install_symlink bin/"rute-proxy" => "rute"
  end

  test do
    system bin/"rute", "version"
  end
end
