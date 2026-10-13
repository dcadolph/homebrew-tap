class SlopChop < Formula
  desc "Strip AI writing tells so text reads like a human wrote it"
  homepage "https://github.com/dcadolph/slop-chop"
  version "0.45.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/dcadolph/slop-chop/releases/download/v0.45.1/slop-chop_0.45.1_Darwin_arm64.tar.gz"
      sha256 "4bbcb9127307e60ff321c7819591b8d5f6310892a01017bae30e51b5e7cc2a1d"
    end
    on_intel do
      url "https://github.com/dcadolph/slop-chop/releases/download/v0.45.1/slop-chop_0.45.1_Darwin_x86_64.tar.gz"
      sha256 "af71805d08bc477152bda907464b2c0544d171ead229ef9a141cb33f2d46a69d"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/dcadolph/slop-chop/releases/download/v0.45.1/slop-chop_0.45.1_Linux_arm64.tar.gz"
      sha256 "0bc90e0bf4fd37ddc0b04b010eee3a6ddb2ada2315a4c8bdf79cf832f931cff8"
    end
    on_intel do
      url "https://github.com/dcadolph/slop-chop/releases/download/v0.45.1/slop-chop_0.45.1_Linux_x86_64.tar.gz"
      sha256 "8d015c2c098ac61842db55d24d709f56895bd36c1ab4da2a2cec290f7e4fc1c0"
    end
  end

  def install
    bin.install "slop-chop"
  end

  test do
    system "#{bin}/slop-chop", "--version"
  end
end
