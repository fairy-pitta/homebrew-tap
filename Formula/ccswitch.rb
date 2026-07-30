# typed: false
# frozen_string_literal: true

class Ccswitch < Formula
  desc "Multi-account switcher for Claude Code"
  homepage "https://github.com/fairy-pitta/cc-account-switcher"
  url "https://github.com/fairy-pitta/cc-account-switcher/archive/refs/tags/v0.5.0.tar.gz"
  sha256 "d2eb962b341a60fb1b7a4701a3f2776d29a8c6656adaef532d035674f4a8dba0"
  license "MIT"

  depends_on "jq"

  def install
    bin.install "ccswitch.sh" => "ccs"
  end

  test do
    system "#{bin}/ccs", "version"
  end
end
