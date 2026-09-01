class SlopChop < Formula
  desc "Strip AI writing tells so text reads like a human wrote it"
  homepage "https://github.com/dcadolph/slop-chop"
  version "0.34.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/dcadolph/slop-chop/releases/download/v0.34.0/slop-chop_0.34.0_Darwin_arm64.tar.gz"
      sha256 "dd444c3e5c3e268520442f47170aeb3278e824fa08510e3f746e84d38ff55575"
    end
    on_intel do
      url "https://github.com/dcadolph/slop-chop/releases/download/v0.34.0/slop-chop_0.34.0_Darwin_x86_64.tar.gz"
      sha256 "99f77ba2e1c8404723dc47d54b2098513308ed5c473d094b68f1850d562931bb"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/dcadolph/slop-chop/releases/download/v0.34.0/slop-chop_0.34.0_Linux_arm64.tar.gz"
      sha256 "e9ab0c779c99d7c16b7f8533a19ecb7dba11ab6e88cd540f2fceecd4544c1145"
    end
    on_intel do
      url "https://github.com/dcadolph/slop-chop/releases/download/v0.34.0/slop-chop_0.34.0_Linux_x86_64.tar.gz"
      sha256 "9ca6e207f87e03117d6d334f352bee286eef90905714f1b0ba36ee4579720ef4"
    end
  end

  def install
    bin.install "slop-chop"
  end

  test do
    system "#{bin}/slop-chop", "--version"
  end
end
