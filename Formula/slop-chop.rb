class SlopChop < Formula
  desc "Strip AI writing tells so text reads like a human wrote it"
  homepage "https://github.com/dcadolph/slop-chop"
  version "0.52.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/dcadolph/slop-chop/releases/download/v0.52.0/slop-chop_0.52.0_Darwin_arm64.tar.gz"
      sha256 "308a8668de4390c152c9a673e4e33b37f355392cbe78f5ed7465cefe48c1d400"
    end
    on_intel do
      url "https://github.com/dcadolph/slop-chop/releases/download/v0.52.0/slop-chop_0.52.0_Darwin_x86_64.tar.gz"
      sha256 "a85b959ed2c20e81055ea6f05945504503e25853fdb1e2c6a4569c35ddda0147"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/dcadolph/slop-chop/releases/download/v0.52.0/slop-chop_0.52.0_Linux_arm64.tar.gz"
      sha256 "3ef49d816ec465e3fc745cc246ea4ccce869302e1c03437b930e34c6d87c07aa"
    end
    on_intel do
      url "https://github.com/dcadolph/slop-chop/releases/download/v0.52.0/slop-chop_0.52.0_Linux_x86_64.tar.gz"
      sha256 "dfb6c20048bd7ac885c634d3f4c4ceaba66a6189ff60d8d4bf2b5ed28676c53b"
    end
  end

  def install
    bin.install "slop-chop"
  end

  test do
    system "#{bin}/slop-chop", "--version"
  end
end
