class SlopChop < Formula
  desc "Strip AI writing tells so text reads like a human wrote it"
  homepage "https://github.com/dcadolph/slop-chop"
  version "0.30.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/dcadolph/slop-chop/releases/download/v0.30.0/slop-chop_0.30.0_Darwin_arm64.tar.gz"
      sha256 "bdd4407e8ee64ac5aa977e86f10dfb564268b989292c42296a2de00f8118a08f"
    end
    on_intel do
      url "https://github.com/dcadolph/slop-chop/releases/download/v0.30.0/slop-chop_0.30.0_Darwin_x86_64.tar.gz"
      sha256 "fbb1fc974362598293124bbb2862ea080e4912ee8b9651b3033d9af6dcb34654"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/dcadolph/slop-chop/releases/download/v0.30.0/slop-chop_0.30.0_Linux_arm64.tar.gz"
      sha256 "4e82c8d5f69c4eb1a448f058254b43c7ebb30a5292c38978182835da66e3b9ea"
    end
    on_intel do
      url "https://github.com/dcadolph/slop-chop/releases/download/v0.30.0/slop-chop_0.30.0_Linux_x86_64.tar.gz"
      sha256 "502dfcd7118c0644106b0b2e534825887ad06f9bc331663d6800ee5e91423777"
    end
  end

  def install
    bin.install "slop-chop"
  end

  test do
    system "#{bin}/slop-chop", "--version"
  end
end
