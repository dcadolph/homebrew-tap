class SlopChop < Formula
  desc "Strip AI writing tells so text reads like a human wrote it"
  homepage "https://github.com/dcadolph/slop-chop"
  version "0.54.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/dcadolph/slop-chop/releases/download/v0.54.0/slop-chop_0.54.0_Darwin_arm64.tar.gz"
      sha256 "36e1dc92392c70511d611103e87508034ea584f241edb6d7e63410cbbc2e1bfe"
    end
    on_intel do
      url "https://github.com/dcadolph/slop-chop/releases/download/v0.54.0/slop-chop_0.54.0_Darwin_x86_64.tar.gz"
      sha256 "ffa6dd6cebd5cff5533e9b8747aa1ca7d7e544c24a0d7f206e61230c86168416"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/dcadolph/slop-chop/releases/download/v0.54.0/slop-chop_0.54.0_Linux_arm64.tar.gz"
      sha256 "9d125a2bc7fd5d329e850284e2d932fa4bae7aa203e57a13a2ba70aedf0a8cda"
    end
    on_intel do
      url "https://github.com/dcadolph/slop-chop/releases/download/v0.54.0/slop-chop_0.54.0_Linux_x86_64.tar.gz"
      sha256 "7507e3f43536c428461aac0377635fb64e81a902072db0a073f34ad3dfefbd99"
    end
  end

  def install
    bin.install "slop-chop"
  end

  test do
    system "#{bin}/slop-chop", "--version"
  end
end
