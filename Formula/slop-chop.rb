class SlopChop < Formula
  desc "Strip AI writing tells so text reads like a human wrote it"
  homepage "https://github.com/dcadolph/slop-chop"
  version "0.50.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/dcadolph/slop-chop/releases/download/v0.50.0/slop-chop_0.50.0_Darwin_arm64.tar.gz"
      sha256 "6d3dbb7d266baa775a47dcfb30683c7244fbe9040924e0aa379248a91b477ca8"
    end
    on_intel do
      url "https://github.com/dcadolph/slop-chop/releases/download/v0.50.0/slop-chop_0.50.0_Darwin_x86_64.tar.gz"
      sha256 "0ab203d8ac31984c4cd0fb2d17046cbf9d06fe2f0d2830ae8815bd099b8fc8b4"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/dcadolph/slop-chop/releases/download/v0.50.0/slop-chop_0.50.0_Linux_arm64.tar.gz"
      sha256 "89173ed79b5776c29ca1bad9f94798904353d1345a7e891d5977c848b123b69e"
    end
    on_intel do
      url "https://github.com/dcadolph/slop-chop/releases/download/v0.50.0/slop-chop_0.50.0_Linux_x86_64.tar.gz"
      sha256 "67a6cc3b89cfb4d0d71828704e359e0733f2750094da8427e7937629d6e22b88"
    end
  end

  def install
    bin.install "slop-chop"
  end

  test do
    system "#{bin}/slop-chop", "--version"
  end
end
