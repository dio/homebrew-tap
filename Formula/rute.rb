# typed: false
# frozen_string_literal: true

# This file is published by the rute release workflow. DO NOT EDIT.
class Rute < Formula
  desc "Loopback OpenAI-compatible proxy backed by Codex OAuth"
  homepage "https://github.com/dio/rute"
  url "https://github.com/dio/rute/archive/refs/tags/v0.1.0.tar.gz"
  sha256 "d7f881c72e222a1136226ce0542c98870dfa161e2f9ae1ff7b302f7af84d15c7"

  depends_on "go" => :build

  def install
    ldflags = %W[
      -s -w
      -X main.version=#{version}
      -X main.commit=ec5c0f7a872900736feafea732c463ed16b1dbfe
      -X main.buildDate=2026-07-26T18:49:06+07:00
    ].join(" ")

    system "go", "build", *std_go_args(ldflags: ldflags), "./cmd/proxy"
  end

  test do
    system bin/"rute", "version"
  end
end
