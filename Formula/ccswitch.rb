# typed: false
# frozen_string_literal: true

class Ccswitch < Formula
  desc "Multi-account switcher for Claude Code"
  homepage "https://github.com/fairy-pitta/cc-account-switcher"
  url "https://github.com/fairy-pitta/cc-account-switcher/archive/refs/tags/v0.4.0.tar.gz"
  sha256 "6063f0d13ec317a75b26cbdf64ed153c707b1ffce4d697fafa27ab66a774f924"
  license "MIT"

  depends_on "jq"

  def install
    bin.install "ccswitch.sh" => "ccs"
  end

  test do
    system "#{bin}/ccs", "version"
  end
end
