class SlopChop < Formula
  desc "Strip AI writing tells so text reads like a human wrote it"
  homepage "https://github.com/dcadolph/slop-chop"
  version "0.13.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/dcadolph/slop-chop/releases/download/v0.13.0/slop-chop_0.13.0_Darwin_arm64.tar.gz"
      sha256 "c9c138a6aedd8e7e4d0e0f5fd42547b048d0a666336972d88cf4b99605f2cbc2"
    end
    on_intel do
      url "https://github.com/dcadolph/slop-chop/releases/download/v0.13.0/slop-chop_0.13.0_Darwin_x86_64.tar.gz"
      sha256 "e2038fd3040dac5cc08b95e89863642b8492a7fa51bbae0783bf34d333c6f2cc"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/dcadolph/slop-chop/releases/download/v0.13.0/slop-chop_0.13.0_Linux_arm64.tar.gz"
      sha256 "43da6c7536981725d478438fbfc334f7e186a20b830309e4b4e73256ebfc67f0"
    end
    on_intel do
      url "https://github.com/dcadolph/slop-chop/releases/download/v0.13.0/slop-chop_0.13.0_Linux_x86_64.tar.gz"
      sha256 "02682afd43a047a4f07db274ca9fc5f2101e2c60bf8e23b7450e4f3d09602d6f"
    end
  end

  def install
    bin.install "slop-chop"
  end

  test do
    system "#{bin}/slop-chop", "--version"
  end
end
