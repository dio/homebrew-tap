# typed: false
# frozen_string_literal: true

# This file is published by the rute release workflow. DO NOT EDIT.
class Rute < Formula
  desc "Loopback OpenAI-compatible proxy backed by Codex OAuth"
  homepage "https://github.com/dio/rute"
  url "https://github.com/dio/rute/releases/download/v0.1.2/rute_0.1.2_source.tar.gz"
  sha256 "f9c9d1e343adc71845ed16f4825ab7cd2d91c6a436df0faa595c4f10681bb2c5"

  depends_on "go" => :build

  def install
    ldflags = %W[
      -s -w
      -X main.version=#{version}
      -X main.commit=e876a65341398db5df990520784bd1ca0d855519
      -X main.buildDate=2026-07-26T19:28:11+07:00
    ].join(" ")

    system "go", "build", *std_go_args(ldflags: ldflags, output: libexec/"rute-proxy"), "./cmd/proxy"
    bin.write_exec_script libexec/"rute-proxy"
    bin.install_symlink bin/"rute-proxy" => "rute"
  end

  test do
    system bin/"rute", "version"
  end
end
