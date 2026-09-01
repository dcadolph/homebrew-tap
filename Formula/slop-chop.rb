class SlopChop < Formula
  desc "Strip AI writing tells so text reads like a human wrote it"
  homepage "https://github.com/dcadolph/slop-chop"
  version "0.35.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/dcadolph/slop-chop/releases/download/v0.35.0/slop-chop_0.35.0_Darwin_arm64.tar.gz"
      sha256 "7e78c9c4d88d7aa3b6c67a78249e2278aa56d04d1e84b5c64f5633333b6f96ef"
    end
    on_intel do
      url "https://github.com/dcadolph/slop-chop/releases/download/v0.35.0/slop-chop_0.35.0_Darwin_x86_64.tar.gz"
      sha256 "612e5647352efdc5b70e28529b827909181e2d9b3a5a6b32c03c095e6e9dc5b5"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/dcadolph/slop-chop/releases/download/v0.35.0/slop-chop_0.35.0_Linux_arm64.tar.gz"
      sha256 "6bbf885ba7105b757ae66a6a15fac34d6df4a2e8c3c98b002da6fd809106b66a"
    end
    on_intel do
      url "https://github.com/dcadolph/slop-chop/releases/download/v0.35.0/slop-chop_0.35.0_Linux_x86_64.tar.gz"
      sha256 "134f55aebd3b3f5163f141a8209e2a9538af3b9307eb1ebb44f710dda3261794"
    end
  end

  def install
    bin.install "slop-chop"
  end

  test do
    system "#{bin}/slop-chop", "--version"
  end
end
