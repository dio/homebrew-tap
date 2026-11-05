# typed: false
# frozen_string_literal: true

# This file is published by the rute release workflow. DO NOT EDIT.
class Rute < Formula
  desc "Run Claude Code, Codex CLI, and Command Code on your subscriptions"
  homepage "https://github.com/dio/rute"

  on_macos do
    on_arm do
      url "https://github.com/dio/rute/releases/download/v0.4.1/rute_0.4.1_darwin_arm64.tar.gz"
      sha256 "35c947cb295f01082d16abefac316f6cc8f36faca53be3bb2e0727942f8e2bba"
    end
    on_intel do
      url "https://github.com/dio/rute/releases/download/v0.4.1/rute_0.4.1_darwin_amd64.tar.gz"
      sha256 "0e215bcccfb274536210f62376ca2ec5a1fdfbcd8887495d23bfaf8c2adba764"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/dio/rute/releases/download/v0.4.1/rute_0.4.1_linux_arm64.tar.gz"
      sha256 "65453d8ebca66fb954b74e0e7aa6e01b7b010609f16cfc05d5c902de7da56cc9"
    end
    on_intel do
      url "https://github.com/dio/rute/releases/download/v0.4.1/rute_0.4.1_linux_amd64.tar.gz"
      sha256 "9673d3d0b2017907b73cba8218da5ea635a0c1bfaa17b61bb181ab2366b5c608"
    end
  end

  def install
    bin.install "rute"
  end

  test do
    system bin/"rute", "version"
  end
end
