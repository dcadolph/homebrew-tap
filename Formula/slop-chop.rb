class SlopChop < Formula
  desc "Strip AI writing tells so text reads like a human wrote it"
  homepage "https://github.com/dcadolph/slop-chop"
  version "0.18.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/dcadolph/slop-chop/releases/download/v0.18.1/slop-chop_0.18.1_Darwin_arm64.tar.gz"
      sha256 "144d9aed604ffbe1d0cef6896fcd4011a6b8b25d7ba91d056a5c3bb0490f80ad"
    end
    on_intel do
      url "https://github.com/dcadolph/slop-chop/releases/download/v0.18.1/slop-chop_0.18.1_Darwin_x86_64.tar.gz"
      sha256 "e794a0cffc2304b7e4ad024f148d459015ec1bee623e6ac040d9bd7e2b307ada"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/dcadolph/slop-chop/releases/download/v0.18.1/slop-chop_0.18.1_Linux_arm64.tar.gz"
      sha256 "645d1091017f8759073caf94201df143f7983a0648d844d883a4ad8616f2ff87"
    end
    on_intel do
      url "https://github.com/dcadolph/slop-chop/releases/download/v0.18.1/slop-chop_0.18.1_Linux_x86_64.tar.gz"
      sha256 "f9ac9464ff19d17d976c5cf8aac12fdf7fdea7398d27806ba52274962fa4f42c"
    end
  end

  def install
    bin.install "slop-chop"
  end

  test do
    system "#{bin}/slop-chop", "--version"
  end
end
