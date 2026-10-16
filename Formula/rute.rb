# typed: false
# frozen_string_literal: true

# This file is published by the rute release workflow. DO NOT EDIT.
class Rute < Formula
  desc "Loopback OpenAI-compatible proxy backed by Codex OAuth"
  homepage "https://github.com/dio/rute"
  url "https://github.com/dio/rute/releases/download/v0.2.1/rute_0.2.1_source.tar.gz"
  sha256 "f95c3698532abfd22eea4a6374d97f9966deb5da74dd4f31ee10461723bc1440"

  depends_on "go" => :build

  def install
    ldflags = %W[
      -s -w
      -X main.version=#{version}
      -X main.commit=793e40fb4b587087f41cd0a46e0f8e40bc03ad5a
      -X main.buildDate=2026-10-16T10:16:40+07:00
    ].join(" ")

    system "go", "build", *std_go_args(ldflags: ldflags, output: libexec/"rute-proxy"), "./cmd/proxy"
    bin.write_exec_script libexec/"rute-proxy"
    bin.install_symlink bin/"rute-proxy" => "rute"
  end

  test do
    system bin/"rute", "version"
  end
end
