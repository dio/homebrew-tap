# typed: false
# frozen_string_literal: true

# This file is published by the rute release workflow. DO NOT EDIT.
class Rute < Formula
  desc "Run Claude Code, Codex CLI, and Command Code on your subscriptions"
  homepage "https://github.com/dio/rute"

  on_macos do
    on_arm do
      url "https://github.com/dio/rute/releases/download/v0.4.10/rute_0.4.10_darwin_arm64.tar.gz"
      sha256 "87d98ccfd818720686462bbde21cacb6e2e9c7b0347c578b1ceceb730c5b02b1"
    end
    on_intel do
      url "https://github.com/dio/rute/releases/download/v0.4.10/rute_0.4.10_darwin_amd64.tar.gz"
      sha256 "9b952b56e7ebd5aff52e5128696f92366f621bcb26027a7fd0ba9eb9fb6a94eb"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/dio/rute/releases/download/v0.4.10/rute_0.4.10_linux_arm64.tar.gz"
      sha256 "4eb62cb91c275034f0b17b9d9d33ec8a1b976ef904f5700eb15808946ba1e10c"
    end
    on_intel do
      url "https://github.com/dio/rute/releases/download/v0.4.10/rute_0.4.10_linux_amd64.tar.gz"
      sha256 "111da54e01403f6c52941f9acf955c6cf3c66e6b8cd2e4868c5096111b10e212"
    end
  end

  def install
    bin.install "rute"
  end

  test do
    system bin/"rute", "version"
  end
end
