class SlopChop < Formula
  desc "Strip AI writing tells so text reads like a human wrote it"
  homepage "https://github.com/dcadolph/slop-chop"
  version "0.39.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/dcadolph/slop-chop/releases/download/v0.39.1/slop-chop_0.39.1_Darwin_arm64.tar.gz"
      sha256 "bb7a09e058cc019c8cc75f4b160b9e5f9281643341bc78d2f6820ee992b4a909"
    end
    on_intel do
      url "https://github.com/dcadolph/slop-chop/releases/download/v0.39.1/slop-chop_0.39.1_Darwin_x86_64.tar.gz"
      sha256 "020ffa01bc072567de0bac8781dffa330fea6b846d620898919b1bd8bb29e25b"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/dcadolph/slop-chop/releases/download/v0.39.1/slop-chop_0.39.1_Linux_arm64.tar.gz"
      sha256 "ad07a2a1f2e5a6755b3fa08d77656a14f099a8b132d4741886b2ca044673356e"
    end
    on_intel do
      url "https://github.com/dcadolph/slop-chop/releases/download/v0.39.1/slop-chop_0.39.1_Linux_x86_64.tar.gz"
      sha256 "c997ccb15a1ade9ac7de784979ba21ccfd69a6b0df58dcdcc89739cc437fb10a"
    end
  end

  def install
    bin.install "slop-chop"
  end

  test do
    system "#{bin}/slop-chop", "--version"
  end
end
