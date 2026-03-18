# typed: false
# frozen_string_literal: true

class Ccswitch < Formula
  desc "Multi-account switcher for Claude Code"
  homepage "https://github.com/fairy-pitta/cc-account-switcher"
  url "https://github.com/fairy-pitta/cc-account-switcher/archive/refs/tags/v0.2.0.tar.gz"
  sha256 "9c7bc81c4f64e95405ec27900107d73c5e964b7196514e245121ec4909a5634f"
  license "MIT"

  depends_on "bash" => "4.0"
  depends_on "jq"

  def install
    bin.install "ccswitch.sh" => "ccs"
  end

  test do
    system "#{bin}/ccs", "version"
  end
end
