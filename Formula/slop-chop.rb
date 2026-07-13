class SlopChop < Formula
  desc "Strip AI writing tells so text reads like a human wrote it"
  homepage "https://github.com/dcadolph/slop-chop"
  version "0.24.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/dcadolph/slop-chop/releases/download/v0.24.0/slop-chop_0.24.0_Darwin_arm64.tar.gz"
      sha256 "7b0938efda6ab49ef008e34c6d0bcfa1c88a0a5d18abdc3835ed1d2245f35a31"
    end
    on_intel do
      url "https://github.com/dcadolph/slop-chop/releases/download/v0.24.0/slop-chop_0.24.0_Darwin_x86_64.tar.gz"
      sha256 "df3bbb4fb5dd5e779d5017b8e2897f939d76fd20a95a392b3d277bc32b940399"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/dcadolph/slop-chop/releases/download/v0.24.0/slop-chop_0.24.0_Linux_arm64.tar.gz"
      sha256 "b818f1e86ad8de4637a7f85e9d9e0c35c0652bdfd9b7a30f2d1031dad379a8af"
    end
    on_intel do
      url "https://github.com/dcadolph/slop-chop/releases/download/v0.24.0/slop-chop_0.24.0_Linux_x86_64.tar.gz"
      sha256 "48bc1af2e658c4eaa11eff397b4d850485703d3152261c1206e8b5fa1c09e2f6"
    end
  end

  def install
    bin.install "slop-chop"
  end

  test do
    system "#{bin}/slop-chop", "--version"
  end
end
