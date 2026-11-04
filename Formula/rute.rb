# typed: false
# frozen_string_literal: true

# This file is published by the rute release workflow. DO NOT EDIT.
class Rute < Formula
  desc "Local proxy for Claude Code and Codex CLI across several subscriptions"
  homepage "https://github.com/dio/rute"

  on_macos do
    on_arm do
      url "https://github.com/dio/rute/releases/download/v0.4.0/rute_0.4.0_darwin_arm64.tar.gz"
      sha256 "81978f88ecb4d7c59f6d444c751a43f4cfc61fb392340488dacff4691d57385f"
    end
    on_intel do
      url "https://github.com/dio/rute/releases/download/v0.4.0/rute_0.4.0_darwin_amd64.tar.gz"
      sha256 "d402ef68b9d51f5e16418a885cd3aa0b9dd837871edbe1d0dfe4795492bc893e"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/dio/rute/releases/download/v0.4.0/rute_0.4.0_linux_arm64.tar.gz"
      sha256 "ff7d8c8c99cf50d27c79da449d7aed4adde6e34a2e75ab5ba200ecdeed312509"
    end
    on_intel do
      url "https://github.com/dio/rute/releases/download/v0.4.0/rute_0.4.0_linux_amd64.tar.gz"
      sha256 "3bd61a162616527b118d1eb93623654528ee2e6819e525f6208b4ddcc450341f"
    end
  end

  def install
    bin.install "rute"
  end

  test do
    system bin/"rute", "version"
  end
end
