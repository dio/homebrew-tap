# typed: false
# frozen_string_literal: true

# This file is published by the rute release workflow. DO NOT EDIT.
class Rute < Formula
  desc "Run Claude Code, Codex CLI, and Command Code on your subscriptions"
  homepage "https://github.com/dio/rute"

  on_macos do
    on_arm do
      url "https://github.com/dio/rute/releases/download/v0.4.8/rute_0.4.8_darwin_arm64.tar.gz"
      sha256 "23eb69a0dfa6d4810971536f24b3b894ebf3710a2fa381573d65c518cd6b9dca"
    end
    on_intel do
      url "https://github.com/dio/rute/releases/download/v0.4.8/rute_0.4.8_darwin_amd64.tar.gz"
      sha256 "0ea70edd426949f02ae6ac761e594a4ca7ff6aabc3510065640ecdb324918b9f"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/dio/rute/releases/download/v0.4.8/rute_0.4.8_linux_arm64.tar.gz"
      sha256 "171b2b40133c85ad4f4d05649ec22b108c05e0e09b528ea4c27d0df6da6d28fd"
    end
    on_intel do
      url "https://github.com/dio/rute/releases/download/v0.4.8/rute_0.4.8_linux_amd64.tar.gz"
      sha256 "3b45f28973a18ec47408733001d8aedc4ffcf2ac7cf1a380b52a418e976b4ca9"
    end
  end

  def install
    bin.install "rute"
  end

  test do
    system bin/"rute", "version"
  end
end
