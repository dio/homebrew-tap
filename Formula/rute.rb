# typed: false
# frozen_string_literal: true

# This file is published by the rute release workflow. DO NOT EDIT.
class Rute < Formula
  desc "Run Claude Code, Codex CLI, and Command Code on your subscriptions"
  homepage "https://github.com/dio/rute"

  on_macos do
    on_arm do
      url "https://github.com/dio/rute/releases/download/v0.4.7/rute_0.4.7_darwin_arm64.tar.gz"
      sha256 "ce30650a93dfc90955cfe281bc5c95e508b0bfa5db577ad973c59c0063a5d4a3"
    end
    on_intel do
      url "https://github.com/dio/rute/releases/download/v0.4.7/rute_0.4.7_darwin_amd64.tar.gz"
      sha256 "659331a5a9d868ffe57c5d827437c88deabbdc0306e11fc23d599ee6fd2b3555"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/dio/rute/releases/download/v0.4.7/rute_0.4.7_linux_arm64.tar.gz"
      sha256 "c6c3b332310c2681f7bf89bdf5f56df90ad3f52997fe9c99d4290dc7a0627d01"
    end
    on_intel do
      url "https://github.com/dio/rute/releases/download/v0.4.7/rute_0.4.7_linux_amd64.tar.gz"
      sha256 "54ac3f5e62e9a06041d9101eeddab5c2e4965117ff17814d4c13efbc6a7530b9"
    end
  end

  def install
    bin.install "rute"
  end

  test do
    system bin/"rute", "version"
  end
end
