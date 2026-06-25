# typed: false
# frozen_string_literal: true

class Ccswitch < Formula
  desc "Multi-account switcher for Claude Code"
  homepage "https://github.com/fairy-pitta/cc-account-switcher"
  url "https://github.com/fairy-pitta/cc-account-switcher/archive/refs/tags/v0.4.1.tar.gz"
  sha256 "d44168cce49689700883683d77cc33db91f52950a43307368b45196b095c93f1"
  license "MIT"

  depends_on "jq"

  def install
    bin.install "ccswitch.sh" => "ccs"
  end

  test do
    system "#{bin}/ccs", "version"
  end
end
