class SlopChop < Formula
  desc "Strip AI writing tells so text reads like a human wrote it"
  homepage "https://github.com/dcadolph/slop-chop"
  version "0.18.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/dcadolph/slop-chop/releases/download/v0.18.0/slop-chop_0.18.0_Darwin_arm64.tar.gz"
      sha256 "f4940fe54518e4e5c797c7e667864f3b3fc6e461b2dfead45a37e38d784972a4"
    end
    on_intel do
      url "https://github.com/dcadolph/slop-chop/releases/download/v0.18.0/slop-chop_0.18.0_Darwin_x86_64.tar.gz"
      sha256 "53b5c665b020ef492fc8cf830acf597ef85792f000e4a1f37b161360d83971f5"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/dcadolph/slop-chop/releases/download/v0.18.0/slop-chop_0.18.0_Linux_arm64.tar.gz"
      sha256 "6c7650076239073e24e1c1f0d9981ba51917014f49b835b28a4729e1e34d3418"
    end
    on_intel do
      url "https://github.com/dcadolph/slop-chop/releases/download/v0.18.0/slop-chop_0.18.0_Linux_x86_64.tar.gz"
      sha256 "c3b54c2811c143734cc13f5c3b45762bf173b68a72cb42b416394d07d56ed132"
    end
  end

  def install
    bin.install "slop-chop"
  end

  test do
    system "#{bin}/slop-chop", "--version"
  end
end
