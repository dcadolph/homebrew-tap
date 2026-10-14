class SlopChop < Formula
  desc "Strip AI writing tells so text reads like a human wrote it"
  homepage "https://github.com/dcadolph/slop-chop"
  version "0.48.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/dcadolph/slop-chop/releases/download/v0.48.0/slop-chop_0.48.0_Darwin_arm64.tar.gz"
      sha256 "dd907de41d886ee659d96b8d84b94b4b2bf56c089ab48d80375b470c58a06876"
    end
    on_intel do
      url "https://github.com/dcadolph/slop-chop/releases/download/v0.48.0/slop-chop_0.48.0_Darwin_x86_64.tar.gz"
      sha256 "17879202b742045daf9e5f72bce04f373c4fbc23525182be7e08225a8d1673fd"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/dcadolph/slop-chop/releases/download/v0.48.0/slop-chop_0.48.0_Linux_arm64.tar.gz"
      sha256 "501ffc28f1426f59c8b19eeb56a4ef82d12886bf3be7fe3d697f05ac429c5314"
    end
    on_intel do
      url "https://github.com/dcadolph/slop-chop/releases/download/v0.48.0/slop-chop_0.48.0_Linux_x86_64.tar.gz"
      sha256 "5eed9a59f9e823293a55acff7d204946d832fe65b206f0883df4cd5cf1a3c95e"
    end
  end

  def install
    bin.install "slop-chop"
  end

  test do
    system "#{bin}/slop-chop", "--version"
  end
end
