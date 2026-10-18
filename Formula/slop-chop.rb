class SlopChop < Formula
  desc "Strip AI writing tells so text reads like a human wrote it"
  homepage "https://github.com/dcadolph/slop-chop"
  version "0.49.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/dcadolph/slop-chop/releases/download/v0.49.0/slop-chop_0.49.0_Darwin_arm64.tar.gz"
      sha256 "cdbec8550760f0bce0185e03a34e1d9e70c3831db3b743ffdaf3f7af02ef0fd0"
    end
    on_intel do
      url "https://github.com/dcadolph/slop-chop/releases/download/v0.49.0/slop-chop_0.49.0_Darwin_x86_64.tar.gz"
      sha256 "95830a19b504e62817631a909f7fa73a085230c06060f8041aee3cc4062cf878"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/dcadolph/slop-chop/releases/download/v0.49.0/slop-chop_0.49.0_Linux_arm64.tar.gz"
      sha256 "fe9e7f6d4193c594072569296968470583c0eb5222086ba6ac4da4e4aeaafeaf"
    end
    on_intel do
      url "https://github.com/dcadolph/slop-chop/releases/download/v0.49.0/slop-chop_0.49.0_Linux_x86_64.tar.gz"
      sha256 "154d8035c031914d763f8ad410795ba71e5454fea6f5cdc9bd6728c0e29b9abd"
    end
  end

  def install
    bin.install "slop-chop"
  end

  test do
    system "#{bin}/slop-chop", "--version"
  end
end
