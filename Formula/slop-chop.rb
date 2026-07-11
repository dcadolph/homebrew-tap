class SlopChop < Formula
  desc "Strip AI writing tells so text reads like a human wrote it"
  homepage "https://github.com/dcadolph/slop-chop"
  version "0.11.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/dcadolph/slop-chop/releases/download/v0.11.0/slop-chop_0.11.0_Darwin_arm64.tar.gz"
      sha256 "a10d44eae1ae2cf24b9843809f4ff8e11c8d52c9329c584d44e8c09a34687695"
    end
    on_intel do
      url "https://github.com/dcadolph/slop-chop/releases/download/v0.11.0/slop-chop_0.11.0_Darwin_x86_64.tar.gz"
      sha256 "3f917e3559d106c007cd688401837188cdeb753fb665e6ca37e952cec2d3db8d"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/dcadolph/slop-chop/releases/download/v0.11.0/slop-chop_0.11.0_Linux_arm64.tar.gz"
      sha256 "e679d91576bbebd0200419f97a5570451eb1f55d54261bb9601d8f7033c3088c"
    end
    on_intel do
      url "https://github.com/dcadolph/slop-chop/releases/download/v0.11.0/slop-chop_0.11.0_Linux_x86_64.tar.gz"
      sha256 "9cbad272750335fae16bffcecc211f61f5d4583e397a58d473ff24a3ddafde23"
    end
  end

  def install
    bin.install "slop-chop"
  end

  test do
    system "#{bin}/slop-chop", "--version"
  end
end
