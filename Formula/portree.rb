# typed: false
# frozen_string_literal: true

class Portree < Formula
  desc "Git Worktree Server Manager"
  homepage "https://github.com/fairy-pitta/portree"
  version "0.1.0"
  license "MIT"

  on_macos do
    on_intel do
      url "https://github.com/fairy-pitta/portree/releases/download/v0.1.0/portree_0.1.0_darwin_amd64.tar.gz"
      sha256 "6d82a1bf87d3f9011630131eae28a391e632a107dfd4d3e0bbd61dc1cc98dfcd"
    end
    on_arm do
      url "https://github.com/fairy-pitta/portree/releases/download/v0.1.0/portree_0.1.0_darwin_arm64.tar.gz"
      sha256 "2ece712afca8b7da9cb7189cab45df7012cd03ffb660a20420112da339abb242"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/fairy-pitta/portree/releases/download/v0.1.0/portree_0.1.0_linux_amd64.tar.gz"
      sha256 "1fce112413ea29b747793b8eb7df96c9db6c1c8291d4d0b25559a990ef8e5778"
    end
    on_arm do
      url "https://github.com/fairy-pitta/portree/releases/download/v0.1.0/portree_0.1.0_linux_arm64.tar.gz"
      sha256 "84d56739393801be27c6fa9b68d4b19826a694e28fa16db520f04999de117047"
    end
  end

  def install
    bin.install "portree"
  end

  test do
    system "#{bin}/portree", "version"
  end
end
