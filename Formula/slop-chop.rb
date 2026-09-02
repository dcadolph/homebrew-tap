class SlopChop < Formula
  desc "Strip AI writing tells so text reads like a human wrote it"
  homepage "https://github.com/dcadolph/slop-chop"
  version "0.36.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/dcadolph/slop-chop/releases/download/v0.36.1/slop-chop_0.36.1_Darwin_arm64.tar.gz"
      sha256 "1210e610d0a9bd68ad0e91cdb95d0417db2f03944be9be9a3ac3cb969e9240f0"
    end
    on_intel do
      url "https://github.com/dcadolph/slop-chop/releases/download/v0.36.1/slop-chop_0.36.1_Darwin_x86_64.tar.gz"
      sha256 "e191f60c7f6659edeb430eda4135b4f742ae8e26975c5f9f46cfabbacd06fa81"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/dcadolph/slop-chop/releases/download/v0.36.1/slop-chop_0.36.1_Linux_arm64.tar.gz"
      sha256 "41bcf87b9b7b6d06d565bbc3700e93563ae2ad9dac8204149511f58b7d55a584"
    end
    on_intel do
      url "https://github.com/dcadolph/slop-chop/releases/download/v0.36.1/slop-chop_0.36.1_Linux_x86_64.tar.gz"
      sha256 "752d5e955997f32bce2a0b0edd8295fe25491c92a62a3ec11913c9131d268469"
    end
  end

  def install
    bin.install "slop-chop"
  end

  test do
    system "#{bin}/slop-chop", "--version"
  end
end
