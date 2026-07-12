class SlopChop < Formula
  desc "Strip AI writing tells so text reads like a human wrote it"
  homepage "https://github.com/dcadolph/slop-chop"
  version "0.16.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/dcadolph/slop-chop/releases/download/v0.16.1/slop-chop_0.16.1_Darwin_arm64.tar.gz"
      sha256 "732a4d3217db1b9cd68f5db9047bcc0729e559fb116e779113014acd3b3d973d"
    end
    on_intel do
      url "https://github.com/dcadolph/slop-chop/releases/download/v0.16.1/slop-chop_0.16.1_Darwin_x86_64.tar.gz"
      sha256 "6e44c7e8e735c2d4ff06dd038adb1277e608de7a6666e8a189b2d0d1281da7a8"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/dcadolph/slop-chop/releases/download/v0.16.1/slop-chop_0.16.1_Linux_arm64.tar.gz"
      sha256 "fed7437c5e30e9138c9eb7919ec8180b08dce689da608404f6a272869185bccf"
    end
    on_intel do
      url "https://github.com/dcadolph/slop-chop/releases/download/v0.16.1/slop-chop_0.16.1_Linux_x86_64.tar.gz"
      sha256 "14631890eec75d9f0958b4bbcded050908c18820d17b5b61bd00a5cb2c7c303b"
    end
  end

  def install
    bin.install "slop-chop"
  end

  test do
    system "#{bin}/slop-chop", "--version"
  end
end
