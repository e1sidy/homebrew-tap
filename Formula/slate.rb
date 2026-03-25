# typed: false
# frozen_string_literal: true

class Slate < Formula
  desc "Lightweight task management CLI backed by SQLite"
  homepage "https://github.com/e1sidy/slate"
  version "0.4.0"
  license "MIT"

  on_macos do
    on_intel do
      url "https://github.com/e1sidy/slate/releases/download/v0.4.0/slate_0.4.0_darwin_amd64.tar.gz"
      sha256 "883bddc64011a0813c643663d894eaeb6e3d6f632a44e96983d9fa6b74f3d63c"
    end
    on_arm do
      url "https://github.com/e1sidy/slate/releases/download/v0.4.0/slate_0.4.0_darwin_arm64.tar.gz"
      sha256 "a3a4aaa0a884a5acb397eb46469b70cc8f45bcf19ee8c10c2899645e1de08817"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/e1sidy/slate/releases/download/v0.4.0/slate_0.4.0_linux_amd64.tar.gz"
      sha256 "7a0be1ee56692616557c0ac9b0e3fe252440b231933396bc01b732dcb10887d6"
    end
    on_arm do
      url "https://github.com/e1sidy/slate/releases/download/v0.4.0/slate_0.4.0_linux_arm64.tar.gz"
      sha256 "a17e5350c12cc8d1021bed7bbb2bef00e21e08b22c16800d2d0b7df3f7805874"
    end
  end

  def install
    bin.install "slate"
  end

  test do
    assert_match "slate", shell_output("#{bin}/slate version")
  end
end
