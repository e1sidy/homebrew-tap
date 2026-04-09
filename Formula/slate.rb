# typed: false
# frozen_string_literal: true

class Slate < Formula
  desc "Lightweight task management CLI backed by SQLite"
  homepage "https://github.com/e1sidy/slate"
  version "0.4.1"
  license "MIT"

  on_macos do
    on_intel do
      url "https://github.com/e1sidy/slate/releases/download/v0.4.1/slate_0.4.1_darwin_amd64.tar.gz"
      sha256 "0bbd492d8703eb81b2c7584f31fc0aa0f68a6273ee8110fbb73a4751583b2bc3"
    end
    on_arm do
      url "https://github.com/e1sidy/slate/releases/download/v0.4.1/slate_0.4.1_darwin_arm64.tar.gz"
      sha256 "2f0ced44780338b6cdb709d078fd6b3410f3b5504155105cdda52e39f8a4a0f6"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/e1sidy/slate/releases/download/v0.4.1/slate_0.4.1_linux_amd64.tar.gz"
      sha256 "92cc9286a5ae6605d28e3635eb82b66d914c9f3cf320a332e31a7cb5652ea31e"
    end
    on_arm do
      url "https://github.com/e1sidy/slate/releases/download/v0.4.1/slate_0.4.1_linux_arm64.tar.gz"
      sha256 "7a133862d603b1971a4db733c625aaa7d5ce2cb8d8b1a9c753f9da60b1f5a054"
    end
  end

  def install
    bin.install "slate"
  end

  test do
    assert_match "slate", shell_output("#{bin}/slate version")
  end
end
