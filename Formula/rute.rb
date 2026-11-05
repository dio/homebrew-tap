# typed: false
# frozen_string_literal: true

# This file is published by the rute release workflow. DO NOT EDIT.
class Rute < Formula
  desc "Run Claude Code, Codex CLI, and Command Code on your subscriptions"
  homepage "https://github.com/dio/rute"

  on_macos do
    on_arm do
      url "https://github.com/dio/rute/releases/download/v0.4.9/rute_0.4.9_darwin_arm64.tar.gz"
      sha256 "f1d93ab762f0ab3dffb439af5c53f422fbd90a0a7a2ffcd4d47ec578d34e9df7"
    end
    on_intel do
      url "https://github.com/dio/rute/releases/download/v0.4.9/rute_0.4.9_darwin_amd64.tar.gz"
      sha256 "301f3618e104ebdbfd59be43a24622c88f6d95ae1bacc00376429a7c5231b43d"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/dio/rute/releases/download/v0.4.9/rute_0.4.9_linux_arm64.tar.gz"
      sha256 "c52c2bfdc3c3c3208896e51705f5269132aac2a313b620836c186ac924e46127"
    end
    on_intel do
      url "https://github.com/dio/rute/releases/download/v0.4.9/rute_0.4.9_linux_amd64.tar.gz"
      sha256 "6f9661182d881c5d2a7cd787c106885cceba2efb22a8d97279021079de97f618"
    end
  end

  def install
    bin.install "rute"
  end

  test do
    system bin/"rute", "version"
  end
end
