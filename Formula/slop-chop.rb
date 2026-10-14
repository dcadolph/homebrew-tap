class SlopChop < Formula
  desc "Strip AI writing tells so text reads like a human wrote it"
  homepage "https://github.com/dcadolph/slop-chop"
  version "0.45.2"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/dcadolph/slop-chop/releases/download/v0.45.2/slop-chop_0.45.2_Darwin_arm64.tar.gz"
      sha256 "96dd6072963ce0635c5d0853e5eedbff3334db53a6b1bca6365fd6564c83d31d"
    end
    on_intel do
      url "https://github.com/dcadolph/slop-chop/releases/download/v0.45.2/slop-chop_0.45.2_Darwin_x86_64.tar.gz"
      sha256 "526fde58fe5a0a3cfd093881be18075b93d5556e1dc121c8725d10c22e1a2497"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/dcadolph/slop-chop/releases/download/v0.45.2/slop-chop_0.45.2_Linux_arm64.tar.gz"
      sha256 "4bfe56fca053fcb5dc6689f445a27449d1d372710a216444a72d46243afbe611"
    end
    on_intel do
      url "https://github.com/dcadolph/slop-chop/releases/download/v0.45.2/slop-chop_0.45.2_Linux_x86_64.tar.gz"
      sha256 "2093301a70778c920a731215d5b96c297dba4723a87deb5c830d832d42dfbdbf"
    end
  end

  def install
    bin.install "slop-chop"
  end

  test do
    system "#{bin}/slop-chop", "--version"
  end
end
