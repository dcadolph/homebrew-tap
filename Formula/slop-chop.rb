class SlopChop < Formula
  desc "Strip AI writing tells so text reads like a human wrote it"
  homepage "https://github.com/dcadolph/slop-chop"
  version "0.19.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/dcadolph/slop-chop/releases/download/v0.19.0/slop-chop_0.19.0_Darwin_arm64.tar.gz"
      sha256 "d66e1e66a6d70452fb81b5b078aa6e359be808b18f1fa56c0a3cf4e62540e5a6"
    end
    on_intel do
      url "https://github.com/dcadolph/slop-chop/releases/download/v0.19.0/slop-chop_0.19.0_Darwin_x86_64.tar.gz"
      sha256 "fd5be29c688d55e57d422e7cd1ccbcd29cf6eed3b75ce5175a1811115f0d1cb6"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/dcadolph/slop-chop/releases/download/v0.19.0/slop-chop_0.19.0_Linux_arm64.tar.gz"
      sha256 "a3281858d9a8a05e9d66c9573a8c39e5f4322846a2b0bf796d38ad53451c9c21"
    end
    on_intel do
      url "https://github.com/dcadolph/slop-chop/releases/download/v0.19.0/slop-chop_0.19.0_Linux_x86_64.tar.gz"
      sha256 "1f715ba65be130974da61127da2851aa03dc103f2c815c210124c684a357ea32"
    end
  end

  def install
    bin.install "slop-chop"
  end

  test do
    system "#{bin}/slop-chop", "--version"
  end
end
