# typed: false
# frozen_string_literal: true

class Ccswitch < Formula
  desc "Multi-account switcher for Claude Code"
  homepage "https://github.com/fairy-pitta/cc-account-switcher"
  url "https://github.com/fairy-pitta/cc-account-switcher/archive/refs/tags/v0.7.0.tar.gz"
  sha256 "e29ea0988b82b1e55ac75af71c7a53f9dc7951b3184aa13b1ac937c6661fc453"
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
