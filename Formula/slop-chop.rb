class SlopChop < Formula
  desc "Strip AI writing tells so text reads like a human wrote it"
  homepage "https://github.com/dcadolph/slop-chop"
  version "0.26.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/dcadolph/slop-chop/releases/download/v0.26.0/slop-chop_0.26.0_Darwin_arm64.tar.gz"
      sha256 "c0577e5da2014856d01dec70440ba3491f607b2b27abcc54b9285efe1268fbc8"
    end
    on_intel do
      url "https://github.com/dcadolph/slop-chop/releases/download/v0.26.0/slop-chop_0.26.0_Darwin_x86_64.tar.gz"
      sha256 "6df3eca93575022689a2eece033b640e03db6439c008d8f6b4840bdf4889bffd"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/dcadolph/slop-chop/releases/download/v0.26.0/slop-chop_0.26.0_Linux_arm64.tar.gz"
      sha256 "6e0a2edce0389f63261737667010f31bd4cde9f40690eaded628dd94d0970274"
    end
    on_intel do
      url "https://github.com/dcadolph/slop-chop/releases/download/v0.26.0/slop-chop_0.26.0_Linux_x86_64.tar.gz"
      sha256 "9056260a07c594670c7332fabe5714184f12b6032452874df49fc8c26ff05f9d"
    end
  end

  def install
    bin.install "slop-chop"
  end

  test do
    system "#{bin}/slop-chop", "--version"
  end
end
