class SlopChop < Formula
  desc "Strip AI writing tells so text reads like a human wrote it"
  homepage "https://github.com/dcadolph/slop-chop"
  version "0.16.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/dcadolph/slop-chop/releases/download/v0.16.0/slop-chop_0.16.0_Darwin_arm64.tar.gz"
      sha256 "d16501e1ec8e3781e17ddbb18919e40cb3e4c847e9551e9da1198a7b58f9af24"
    end
    on_intel do
      url "https://github.com/dcadolph/slop-chop/releases/download/v0.16.0/slop-chop_0.16.0_Darwin_x86_64.tar.gz"
      sha256 "df614804f47113e28925b0edb5a2c0eb9066a3917325650d53343bb4db67db9e"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/dcadolph/slop-chop/releases/download/v0.16.0/slop-chop_0.16.0_Linux_arm64.tar.gz"
      sha256 "55639027e66c2fc6e35ba74b1fee889c0e42d4699f045e03141a2495c3ddb9f0"
    end
    on_intel do
      url "https://github.com/dcadolph/slop-chop/releases/download/v0.16.0/slop-chop_0.16.0_Linux_x86_64.tar.gz"
      sha256 "2bfd99546838ba252dbf3096beadd43437d0472afc45121c19ee6e2edf55c32d"
    end
  end

  def install
    bin.install "slop-chop"
  end

  test do
    system "#{bin}/slop-chop", "--version"
  end
end
