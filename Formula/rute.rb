# typed: false
# frozen_string_literal: true

# This file is published by the rute release workflow. DO NOT EDIT.
class Rute < Formula
  desc "Run Claude Code, Codex CLI, and Command Code on your subscriptions"
  homepage "https://github.com/dio/rute"

  on_macos do
    on_arm do
      url "https://github.com/dio/rute/releases/download/v0.4.11/rute_0.4.11_darwin_arm64.tar.gz"
      sha256 "34e1d20784831266d968687d8fc38e8f0d0a5f968efa5947a36fee404c018fb8"
    end
    on_intel do
      url "https://github.com/dio/rute/releases/download/v0.4.11/rute_0.4.11_darwin_amd64.tar.gz"
      sha256 "e54252e418f48c777ae88fb78a66f1b823e6060877a9f0b2f36c0b56a6ef4708"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/dio/rute/releases/download/v0.4.11/rute_0.4.11_linux_arm64.tar.gz"
      sha256 "f651c3a4503ea3a1683ffa63ae2ffe3f8be5d2e39d62e4a3f46b80798159a746"
    end
    on_intel do
      url "https://github.com/dio/rute/releases/download/v0.4.11/rute_0.4.11_linux_amd64.tar.gz"
      sha256 "cf5d06aa0e224d8bc50a1498495fdf4923bd06cbea847d19db5fb8df12dcac46"
    end
  end

  def install
    bin.install "rute"
  end

  test do
    system bin/"rute", "version"
  end
end
