class SlopChop < Formula
  desc "Strip AI writing tells so text reads like a human wrote it"
  homepage "https://github.com/dcadolph/slop-chop"
  version "0.38.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/dcadolph/slop-chop/releases/download/v0.38.0/slop-chop_0.38.0_Darwin_arm64.tar.gz"
      sha256 "1c2e7052375fddf0a07a755fb2d151c7cf3d46943f96fdc7bfa2897a458cc884"
    end
    on_intel do
      url "https://github.com/dcadolph/slop-chop/releases/download/v0.38.0/slop-chop_0.38.0_Darwin_x86_64.tar.gz"
      sha256 "cdffb7d16b5e9477bdf4911df9d6db51412426d44930901945ed4f7d66dc7b97"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/dcadolph/slop-chop/releases/download/v0.38.0/slop-chop_0.38.0_Linux_arm64.tar.gz"
      sha256 "a6953362b0b87d186195b2a6352295d31abb24ee148bbb9ac6acde693650af10"
    end
    on_intel do
      url "https://github.com/dcadolph/slop-chop/releases/download/v0.38.0/slop-chop_0.38.0_Linux_x86_64.tar.gz"
      sha256 "e3fff2d249bc81971c91fd4de015ace3761d18ac330a6f062aaffdc9e73ab680"
    end
  end

  def install
    bin.install "slop-chop"
  end

  test do
    system "#{bin}/slop-chop", "--version"
  end
end
