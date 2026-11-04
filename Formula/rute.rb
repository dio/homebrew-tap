# typed: false
# frozen_string_literal: true

# This file is published by the rute release workflow. DO NOT EDIT.
class Rute < Formula
  desc "Loopback OpenAI-compatible proxy backed by Codex OAuth"
  homepage "https://github.com/dio/rute"
  url "https://github.com/dio/rute/releases/download/v0.3.1/rute_0.3.1_source.tar.gz"
  sha256 "1f2567fcdd8d28a7c8164eaf6210ff167756fdb53b8a4854a5cab664dbaf9043"

  depends_on "go" => :build

  def install
    ldflags = %W[
      -s -w
      -X main.version=#{version}
      -X main.commit=d35fc89db5293c7f77fac8aeaa8f2a39c2231d7b
      -X main.buildDate=2026-11-04T16:20:47+07:00
    ].join(" ")

    system "go", "build", *std_go_args(ldflags: ldflags, output: libexec/"rute-proxy"), "./cmd/proxy"
    bin.write_exec_script libexec/"rute-proxy"
    bin.install_symlink bin/"rute-proxy" => "rute"
  end

  test do
    system bin/"rute", "version"
  end
end
