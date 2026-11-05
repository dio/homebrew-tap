# typed: false
# frozen_string_literal: true

# This file is published by the rute release workflow. DO NOT EDIT.
class Rute < Formula
  desc "Run Claude Code, Codex CLI, and Command Code on your subscriptions"
  homepage "https://github.com/dio/rute"

  on_macos do
    on_arm do
      url "https://github.com/dio/rute/releases/download/v0.4.2/rute_0.4.2_darwin_arm64.tar.gz"
      sha256 "8041ac4c0074be1faa970841618949a654dde5864a0ce76cb45acf068e1ba8e8"
    end
    on_intel do
      url "https://github.com/dio/rute/releases/download/v0.4.2/rute_0.4.2_darwin_amd64.tar.gz"
      sha256 "6149e894176304b7f23e1d7b9b159e4e9094686e92796017340dfe7af8c896d7"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/dio/rute/releases/download/v0.4.2/rute_0.4.2_linux_arm64.tar.gz"
      sha256 "50a3e4035f57dc175aff636a84006f217fbd5a4f1219aa2d3727d91251ac49f4"
    end
    on_intel do
      url "https://github.com/dio/rute/releases/download/v0.4.2/rute_0.4.2_linux_amd64.tar.gz"
      sha256 "1cadb38f7eba6b0461db1f1559c00cad83072dedf8e1250768974e7f1f2df46e"
    end
  end

  def install
    bin.install "rute"
  end

  test do
    system bin/"rute", "version"
  end
end
