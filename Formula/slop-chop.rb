class SlopChop < Formula
  desc "Strip AI writing tells so text reads like a human wrote it"
  homepage "https://github.com/dcadolph/slop-chop"
  version "0.23.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/dcadolph/slop-chop/releases/download/v0.23.0/slop-chop_0.23.0_Darwin_arm64.tar.gz"
      sha256 "69fff9455cf45b3c72586305fb1cb1e466ad6ba93556bc360df077600248f041"
    end
    on_intel do
      url "https://github.com/dcadolph/slop-chop/releases/download/v0.23.0/slop-chop_0.23.0_Darwin_x86_64.tar.gz"
      sha256 "493931a7a1adec5ad2c79e0d1958ce3e488dd3868dd84c6ddc019b90e90bd6fd"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/dcadolph/slop-chop/releases/download/v0.23.0/slop-chop_0.23.0_Linux_arm64.tar.gz"
      sha256 "3d5b1ed0b1db023f441fdd16ebd22f90e4732fe4e8b01d2ef87cb7d3f8b63465"
    end
    on_intel do
      url "https://github.com/dcadolph/slop-chop/releases/download/v0.23.0/slop-chop_0.23.0_Linux_x86_64.tar.gz"
      sha256 "8c8a6813313aeacf73be63abdde7c4b016f683a2c0a8e75655daf9318f469006"
    end
  end

  def install
    bin.install "slop-chop"
  end

  test do
    system "#{bin}/slop-chop", "--version"
  end
end
