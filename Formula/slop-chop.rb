class SlopChop < Formula
  desc "Strip AI writing tells so text reads like a human wrote it"
  homepage "https://github.com/dcadolph/slop-chop"
  version "0.40.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/dcadolph/slop-chop/releases/download/v0.40.0/slop-chop_0.40.0_Darwin_arm64.tar.gz"
      sha256 "48d8e925d8c4a61dfc996d3c73bfcb6c1c1951578acb5aafe5e950432bbd0c20"
    end
    on_intel do
      url "https://github.com/dcadolph/slop-chop/releases/download/v0.40.0/slop-chop_0.40.0_Darwin_x86_64.tar.gz"
      sha256 "790d8f352ac066af36beb4de82fb2afdca41d7db55bb71fa114c67fa3395cac1"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/dcadolph/slop-chop/releases/download/v0.40.0/slop-chop_0.40.0_Linux_arm64.tar.gz"
      sha256 "fb4ab393843ac0aba5bf0b70966ed400528dfa24b3c8a8c6e7d4b1a96bb3d887"
    end
    on_intel do
      url "https://github.com/dcadolph/slop-chop/releases/download/v0.40.0/slop-chop_0.40.0_Linux_x86_64.tar.gz"
      sha256 "800e039c361aea1b8106a057b71674d94546f2b61f99a1d4fa30ff7de56de4ab"
    end
  end

  def install
    bin.install "slop-chop"
  end

  test do
    system "#{bin}/slop-chop", "--version"
  end
end
