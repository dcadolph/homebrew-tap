class SlopChop < Formula
  desc "Strip AI writing tells so text reads like a human wrote it"
  homepage "https://github.com/dcadolph/slop-chop"
  version "0.51.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/dcadolph/slop-chop/releases/download/v0.51.0/slop-chop_0.51.0_Darwin_arm64.tar.gz"
      sha256 "b4f929b50311cb3ff8b8098162b21cdae76caee22465aa82b135b9b52bb92805"
    end
    on_intel do
      url "https://github.com/dcadolph/slop-chop/releases/download/v0.51.0/slop-chop_0.51.0_Darwin_x86_64.tar.gz"
      sha256 "007b6f8fcdf3432ced18c28837e09a40bee45d959cf22f87b45c7084f7c343bb"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/dcadolph/slop-chop/releases/download/v0.51.0/slop-chop_0.51.0_Linux_arm64.tar.gz"
      sha256 "8760e3839cf03ef58e22b0da86d3654500381efd6331fbbcbf8552450ad755ec"
    end
    on_intel do
      url "https://github.com/dcadolph/slop-chop/releases/download/v0.51.0/slop-chop_0.51.0_Linux_x86_64.tar.gz"
      sha256 "65be292daf75a2ae6a2112378a7ac23a4e3e3f4a5aacbaf934cf36c6ec184ec2"
    end
  end

  def install
    bin.install "slop-chop"
  end

  test do
    system "#{bin}/slop-chop", "--version"
  end
end
