# typed: false
# frozen_string_literal: true

# This file is published by the rute release workflow. DO NOT EDIT.
class Rute < Formula
  desc "Run Claude Code, Codex CLI, and Command Code on your subscriptions"
  homepage "https://github.com/dio/rute"

  on_macos do
    on_arm do
      url "https://github.com/dio/rute/releases/download/v0.4.3/rute_0.4.3_darwin_arm64.tar.gz"
      sha256 "abbc956c687da3a3add8e55161633cd5df79e9b3c55fa0d2995ccb3c9a6675d1"
    end
    on_intel do
      url "https://github.com/dio/rute/releases/download/v0.4.3/rute_0.4.3_darwin_amd64.tar.gz"
      sha256 "a1c89439402f8a10a8d627cab166dcea14b52a46a8bb0220ad5fee38dbf3ad8f"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/dio/rute/releases/download/v0.4.3/rute_0.4.3_linux_arm64.tar.gz"
      sha256 "e09d321fd37962f25b3620d73d110e41149be9a5bd477494efb88939a93dbfc6"
    end
    on_intel do
      url "https://github.com/dio/rute/releases/download/v0.4.3/rute_0.4.3_linux_amd64.tar.gz"
      sha256 "101c38dcb6b57251e9d14d5e1b852c1c967ffa71b92e437282b3b50a9efd34a6"
    end
  end

  def install
    bin.install "rute"
  end

  test do
    system bin/"rute", "version"
  end
end
