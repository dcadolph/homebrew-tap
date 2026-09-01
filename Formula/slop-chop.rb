class SlopChop < Formula
  desc "Strip AI writing tells so text reads like a human wrote it"
  homepage "https://github.com/dcadolph/slop-chop"
  version "0.32.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/dcadolph/slop-chop/releases/download/v0.32.0/slop-chop_0.32.0_Darwin_arm64.tar.gz"
      sha256 "e30585711710bdc088626362048d71d9df89a4076bec92dac38acf0b3aa9a803"
    end
    on_intel do
      url "https://github.com/dcadolph/slop-chop/releases/download/v0.32.0/slop-chop_0.32.0_Darwin_x86_64.tar.gz"
      sha256 "56a7784cee896afce9af90d626e9eb84f129421103f08b67eb2c18f5cf96ac12"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/dcadolph/slop-chop/releases/download/v0.32.0/slop-chop_0.32.0_Linux_arm64.tar.gz"
      sha256 "c6aba65fbec4b46addb1163f513a45e3fe3d0b4f9c74a66e5180bc786e61c199"
    end
    on_intel do
      url "https://github.com/dcadolph/slop-chop/releases/download/v0.32.0/slop-chop_0.32.0_Linux_x86_64.tar.gz"
      sha256 "984fa423cdb8996cdb98d93efbbf95230218c68981d6a04b4f9ab25af2bd75aa"
    end
  end

  def install
    bin.install "slop-chop"
  end

  test do
    system "#{bin}/slop-chop", "--version"
  end
end
