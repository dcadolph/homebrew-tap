class SlopChop < Formula
  desc "Strip AI writing tells so text reads like a human wrote it"
  homepage "https://github.com/dcadolph/slop-chop"
  version "0.43.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/dcadolph/slop-chop/releases/download/v0.43.0/slop-chop_0.43.0_Darwin_arm64.tar.gz"
      sha256 "e589529fd18db3ea6a825f7e35ea6340c0f393196c54f85dd6487d4efa424f0b"
    end
    on_intel do
      url "https://github.com/dcadolph/slop-chop/releases/download/v0.43.0/slop-chop_0.43.0_Darwin_x86_64.tar.gz"
      sha256 "006fa98479a23c81040a0068ec5e608aa19c18038ca706a221303f5d5c157039"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/dcadolph/slop-chop/releases/download/v0.43.0/slop-chop_0.43.0_Linux_arm64.tar.gz"
      sha256 "c118d71a63150bb71d329f0e989ff9952d123d1d6cc65fc4cec8f2f06cee3544"
    end
    on_intel do
      url "https://github.com/dcadolph/slop-chop/releases/download/v0.43.0/slop-chop_0.43.0_Linux_x86_64.tar.gz"
      sha256 "a75a16904db44d3341c2873575b801cdda21bd9c90c50363ffcc8198ab86becb"
    end
  end

  def install
    bin.install "slop-chop"
  end

  test do
    system "#{bin}/slop-chop", "--version"
  end
end
