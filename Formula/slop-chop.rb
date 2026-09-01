class SlopChop < Formula
  desc "Strip AI writing tells so text reads like a human wrote it"
  homepage "https://github.com/dcadolph/slop-chop"
  version "0.36.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/dcadolph/slop-chop/releases/download/v0.36.0/slop-chop_0.36.0_Darwin_arm64.tar.gz"
      sha256 "e7e4c81db4293384992859f4730e019e525a1a51fa7d5f02ffb0cd39b961a29d"
    end
    on_intel do
      url "https://github.com/dcadolph/slop-chop/releases/download/v0.36.0/slop-chop_0.36.0_Darwin_x86_64.tar.gz"
      sha256 "75f4fd6e0d8988c70dfe16019b6ee408d70d3857631ad58fa24fb6209fba8427"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/dcadolph/slop-chop/releases/download/v0.36.0/slop-chop_0.36.0_Linux_arm64.tar.gz"
      sha256 "2bce81cc03187721e64df0fef9db7c4ed582fd17d390afcc7a15fbd728a3c1d0"
    end
    on_intel do
      url "https://github.com/dcadolph/slop-chop/releases/download/v0.36.0/slop-chop_0.36.0_Linux_x86_64.tar.gz"
      sha256 "1ee217d01ad5552c2b910c6ca52acb22771cd7b9d8ca9bcad520c1a4249ba4ad"
    end
  end

  def install
    bin.install "slop-chop"
  end

  test do
    system "#{bin}/slop-chop", "--version"
  end
end
