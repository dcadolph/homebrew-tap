class SlopChop < Formula
  desc "Strip AI writing tells so text reads like a human wrote it"
  homepage "https://github.com/dcadolph/slop-chop"
  version "0.12.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/dcadolph/slop-chop/releases/download/v0.12.0/slop-chop_0.12.0_Darwin_arm64.tar.gz"
      sha256 "7a8325ebcbe617de01e8bec92c5ae8fd19ff783f47cc22539e4918144344b790"
    end
    on_intel do
      url "https://github.com/dcadolph/slop-chop/releases/download/v0.12.0/slop-chop_0.12.0_Darwin_x86_64.tar.gz"
      sha256 "11174825133dd4137c268e9516deb1cda326145bb5ecab18394f4b005ebbfd01"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/dcadolph/slop-chop/releases/download/v0.12.0/slop-chop_0.12.0_Linux_arm64.tar.gz"
      sha256 "cc98620a0d6ccc7e3d463498fe052991d8bc3ee58e9a5a6d3e0b59a1129d6ea0"
    end
    on_intel do
      url "https://github.com/dcadolph/slop-chop/releases/download/v0.12.0/slop-chop_0.12.0_Linux_x86_64.tar.gz"
      sha256 "3d03692f10c0c84071d53acb4442428bc277876a214365ca58c13d392d6cde15"
    end
  end

  def install
    bin.install "slop-chop"
  end

  test do
    system "#{bin}/slop-chop", "--version"
  end
end
