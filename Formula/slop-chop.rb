class SlopChop < Formula
  desc "Strip AI writing tells so text reads like a human wrote it"
  homepage "https://github.com/dcadolph/slop-chop"
  version "0.54.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/dcadolph/slop-chop/releases/download/v0.54.1/slop-chop_0.54.1_Darwin_arm64.tar.gz"
      sha256 "d509815daa631420dc6ba42ee66a0dff51baa1b473119cdb72ccb407c58a074c"
    end
    on_intel do
      url "https://github.com/dcadolph/slop-chop/releases/download/v0.54.1/slop-chop_0.54.1_Darwin_x86_64.tar.gz"
      sha256 "c15fce6b74e0e45f1afad12e381e1a7803f48079487f8da4867335d1655d9b35"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/dcadolph/slop-chop/releases/download/v0.54.1/slop-chop_0.54.1_Linux_arm64.tar.gz"
      sha256 "2056e13a80bf7b306eccae84449eb0349cd3f8f03114308a00c26d3b0eb6352d"
    end
    on_intel do
      url "https://github.com/dcadolph/slop-chop/releases/download/v0.54.1/slop-chop_0.54.1_Linux_x86_64.tar.gz"
      sha256 "154c1a44ca32c7a761ea37239d4f585a825a5cbcd24bddc5924236bb239ee028"
    end
  end

  def install
    bin.install "slop-chop"
  end

  test do
    system "#{bin}/slop-chop", "--version"
  end
end
