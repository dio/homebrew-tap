# typed: false
# frozen_string_literal: true

# This file is published by the rute release workflow. DO NOT EDIT.
class Rute < Formula
  desc "Run Claude Code, Codex CLI, and Command Code on your subscriptions"
  homepage "https://github.com/dio/rute"

  on_macos do
    on_arm do
      url "https://github.com/dio/rute/releases/download/v0.4.5/rute_0.4.5_darwin_arm64.tar.gz"
      sha256 "ac0d8e0dc8bdd851a232ba1e4ad7dc8d2ce4a7e23f70e1bb3c969e7ec345eab4"
    end
    on_intel do
      url "https://github.com/dio/rute/releases/download/v0.4.5/rute_0.4.5_darwin_amd64.tar.gz"
      sha256 "dae9bed005d7c0c6fb69e39e33f41d95e0227889251393467dd07f5a0ce80c48"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/dio/rute/releases/download/v0.4.5/rute_0.4.5_linux_arm64.tar.gz"
      sha256 "365cf1d06c3977114f56ba96a97635b10f9b5b2ea3791114b2153b77d19c4583"
    end
    on_intel do
      url "https://github.com/dio/rute/releases/download/v0.4.5/rute_0.4.5_linux_amd64.tar.gz"
      sha256 "20c66b013a93f366e97ef4f4ec3613efae71cba15283796a097f00388667cbac"
    end
  end

  def install
    bin.install "rute"
  end

  test do
    system bin/"rute", "version"
  end
end
