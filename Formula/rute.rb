# typed: false
# frozen_string_literal: true

# This file is published by the rute release workflow. DO NOT EDIT.
class Rute < Formula
  desc "Run Claude Code, Codex CLI, and Command Code on your subscriptions"
  homepage "https://github.com/dio/rute"

  on_macos do
    on_arm do
      url "https://github.com/dio/rute/releases/download/v0.4.6/rute_0.4.6_darwin_arm64.tar.gz"
      sha256 "23b567281617d4a1bbeef2ede7e353bb6e4c8ffcb8f1920563b71eeff8534bf3"
    end
    on_intel do
      url "https://github.com/dio/rute/releases/download/v0.4.6/rute_0.4.6_darwin_amd64.tar.gz"
      sha256 "1e318c070b400dc620de6c1eb46695d99e2e147cb74833fd227a2323cc460a42"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/dio/rute/releases/download/v0.4.6/rute_0.4.6_linux_arm64.tar.gz"
      sha256 "536040218e8f4df98fe4a26a3585f73cebedea690e315906099813e3efea130d"
    end
    on_intel do
      url "https://github.com/dio/rute/releases/download/v0.4.6/rute_0.4.6_linux_amd64.tar.gz"
      sha256 "29cc68bb8b55f56c4bb1b109d08c8b5f889e6dd028dae63160cb52ce19c49371"
    end
  end

  def install
    bin.install "rute"
  end

  test do
    system bin/"rute", "version"
  end
end
