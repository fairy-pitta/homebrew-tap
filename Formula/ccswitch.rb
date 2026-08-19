# typed: false
# frozen_string_literal: true

class Ccswitch < Formula
  desc "Multi-account switcher for Claude Code"
  homepage "https://github.com/fairy-pitta/cc-account-switcher"
  url "https://github.com/fairy-pitta/cc-account-switcher/archive/refs/tags/v0.6.0.tar.gz"
  sha256 "9e707fd7cf73d095c2b9cb209c90aa659514986c67c708b26f7764370a932b49"
  license "MIT"

  depends_on "jq"

  def install
    bin.install "ccswitch.sh" => "ccs"
    # `ccs rate-setup` / `ccs statusline-setup` look for these next to the
    # script and then in <prefix>/share/ccswitch.
    pkgshare.install "hooks", "statusline"
  end

  test do
    system "#{bin}/ccs", "version"
  end
end
