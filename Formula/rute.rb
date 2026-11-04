# typed: false
# frozen_string_literal: true

# This file is published by the rute release workflow. DO NOT EDIT.
class Rute < Formula
  desc "Local proxy for Claude Code and Codex CLI across several subscriptions"
  homepage "https://github.com/dio/rute"

  on_macos do
    on_arm do
      url "https://github.com/dio/rute/releases/download/v0.3.3/rute_0.3.3_darwin_arm64.tar.gz"
      sha256 "ff16c923b7595a71378d1268e6aaa47728eb29f74cfc265eace059850d0aa4f9"
    end
    on_intel do
      url "https://github.com/dio/rute/releases/download/v0.3.3/rute_0.3.3_darwin_amd64.tar.gz"
      sha256 "ea036f826a0967b4e37be62a4e37493681b17fafd34f919066c0effd7cffcc77"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/dio/rute/releases/download/v0.3.3/rute_0.3.3_linux_arm64.tar.gz"
      sha256 "9ae1b299bc75f80d2316e57b3d315bd9e7c5a4286c50191cb92d9eeacbe92d43"
    end
    on_intel do
      url "https://github.com/dio/rute/releases/download/v0.3.3/rute_0.3.3_linux_amd64.tar.gz"
      sha256 "deb93e40ab296110d94fc49c9d83748c5dc3488056276c916812df03636b0ee0"
    end
  end

  def install
    bin.install "rute"
  end

  test do
    system bin/"rute", "version"
  end
end
