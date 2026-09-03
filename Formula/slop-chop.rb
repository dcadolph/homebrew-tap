class SlopChop < Formula
  desc "Strip AI writing tells so text reads like a human wrote it"
  homepage "https://github.com/dcadolph/slop-chop"
  version "0.37.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/dcadolph/slop-chop/releases/download/v0.37.0/slop-chop_0.37.0_Darwin_arm64.tar.gz"
      sha256 "77817be4378770de392fada51c8af0ac1e170833e41e453c98a5b6275c2852ce"
    end
    on_intel do
      url "https://github.com/dcadolph/slop-chop/releases/download/v0.37.0/slop-chop_0.37.0_Darwin_x86_64.tar.gz"
      sha256 "11483bd062e607fc8915a005007e9b414b6749858c2733ef29cb239c1ece1cc6"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/dcadolph/slop-chop/releases/download/v0.37.0/slop-chop_0.37.0_Linux_arm64.tar.gz"
      sha256 "8d057ac78518a51407eb9b7fc8dcd531457ef075f737fcc82dba7835cba69feb"
    end
    on_intel do
      url "https://github.com/dcadolph/slop-chop/releases/download/v0.37.0/slop-chop_0.37.0_Linux_x86_64.tar.gz"
      sha256 "67bbe01113954551fea107de47e5675f2a6c250386036ace65f8f17d9d59d1a5"
    end
  end

  def install
    bin.install "slop-chop"
  end

  test do
    system "#{bin}/slop-chop", "--version"
  end
end
