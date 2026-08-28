class SlopChop < Formula
  desc "Strip AI writing tells so text reads like a human wrote it"
  homepage "https://github.com/dcadolph/slop-chop"
  version "0.29.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/dcadolph/slop-chop/releases/download/v0.29.0/slop-chop_0.29.0_Darwin_arm64.tar.gz"
      sha256 "ed5b26ac60a9ef2f0d3beafc4f87fe5c1f701e1ddae4ead3ae3910700874b539"
    end
    on_intel do
      url "https://github.com/dcadolph/slop-chop/releases/download/v0.29.0/slop-chop_0.29.0_Darwin_x86_64.tar.gz"
      sha256 "156840e672cd75fbfec3b221765c2e5778c8a6e5accb9710bd0ae489769b175a"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/dcadolph/slop-chop/releases/download/v0.29.0/slop-chop_0.29.0_Linux_arm64.tar.gz"
      sha256 "044c37dbee13a9b1c1bb5fce0c0f965579e769df252d10fb53cd64e40c9a3516"
    end
    on_intel do
      url "https://github.com/dcadolph/slop-chop/releases/download/v0.29.0/slop-chop_0.29.0_Linux_x86_64.tar.gz"
      sha256 "cffa007988ff6facb1717f76a803a1d6b9ddadfc03db0cf18e0293274eb87b8d"
    end
  end

  def install
    bin.install "slop-chop"
  end

  test do
    system "#{bin}/slop-chop", "--version"
  end
end
