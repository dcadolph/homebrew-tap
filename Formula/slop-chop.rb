class SlopChop < Formula
  desc "Strip AI writing tells so text reads like a human wrote it"
  homepage "https://github.com/dcadolph/slop-chop"
  version "0.46.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/dcadolph/slop-chop/releases/download/v0.46.0/slop-chop_0.46.0_Darwin_arm64.tar.gz"
      sha256 "69d3e46820fa3510fbe2179ee0d7a5adab806c4429da4c2d1f34f4278f8ef73f"
    end
    on_intel do
      url "https://github.com/dcadolph/slop-chop/releases/download/v0.46.0/slop-chop_0.46.0_Darwin_x86_64.tar.gz"
      sha256 "d3ad6a0d102f76bee98b9e09ad30769a78a3846d28251203cbe3eebba98c8896"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/dcadolph/slop-chop/releases/download/v0.46.0/slop-chop_0.46.0_Linux_arm64.tar.gz"
      sha256 "6a6fd44a22e42d8275ba0a47cc27452025e9413c1b29e9daff3baf1c0c1b30db"
    end
    on_intel do
      url "https://github.com/dcadolph/slop-chop/releases/download/v0.46.0/slop-chop_0.46.0_Linux_x86_64.tar.gz"
      sha256 "93abd5a527fa4bcc713b943fe5386ec8ba65b8ac8b6d424b32b3524ab06e8a08"
    end
  end

  def install
    bin.install "slop-chop"
  end

  test do
    system "#{bin}/slop-chop", "--version"
  end
end
