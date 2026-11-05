# typed: false
# frozen_string_literal: true

# This file is published by the rute release workflow. DO NOT EDIT.
class Rute < Formula
  desc "Run Claude Code, Codex CLI, and Command Code on your subscriptions"
  homepage "https://github.com/dio/rute"

  on_macos do
    on_arm do
      url "https://github.com/dio/rute/releases/download/v0.4.4/rute_0.4.4_darwin_arm64.tar.gz"
      sha256 "e0c459d16bad2e9e19433b3147483ca0cb89a984a41a52924343f829f81b8fdd"
    end
    on_intel do
      url "https://github.com/dio/rute/releases/download/v0.4.4/rute_0.4.4_darwin_amd64.tar.gz"
      sha256 "7d5b24178591ecdcc382a16e9260734fe161b4b64fe89df16f1da82e3440e2c9"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/dio/rute/releases/download/v0.4.4/rute_0.4.4_linux_arm64.tar.gz"
      sha256 "0c6abc72b6771c61b447c1f8a4b86ec7932f0dc25acfad6255cd63129056092e"
    end
    on_intel do
      url "https://github.com/dio/rute/releases/download/v0.4.4/rute_0.4.4_linux_amd64.tar.gz"
      sha256 "703f9f67ad9f99eac16d9fe26a61c513d0c1245b076a1fed4271b005080b58ef"
    end
  end

  def install
    bin.install "rute"
  end

  test do
    system bin/"rute", "version"
  end
end
