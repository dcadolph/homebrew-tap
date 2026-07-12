class SlopChop < Formula
  desc "Strip AI writing tells so text reads like a human wrote it"
  homepage "https://github.com/dcadolph/slop-chop"
  version "0.17.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/dcadolph/slop-chop/releases/download/v0.17.0/slop-chop_0.17.0_Darwin_arm64.tar.gz"
      sha256 "d1658617ea820d83714bd3fd2b207ef48614b4c7a3124aba3f4d28653eb3c513"
    end
    on_intel do
      url "https://github.com/dcadolph/slop-chop/releases/download/v0.17.0/slop-chop_0.17.0_Darwin_x86_64.tar.gz"
      sha256 "3b212bd6ba6f1d5d4d19d3ffd225f5b0e75f3deac5fd87d2d5dc27c87b83b03a"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/dcadolph/slop-chop/releases/download/v0.17.0/slop-chop_0.17.0_Linux_arm64.tar.gz"
      sha256 "7cf6b2f6438292c5479dca99a77b67b9826e48f0dbe4f7fdef2922d869182efd"
    end
    on_intel do
      url "https://github.com/dcadolph/slop-chop/releases/download/v0.17.0/slop-chop_0.17.0_Linux_x86_64.tar.gz"
      sha256 "a1e73abe5ffbb810d798be39ed762fc9baa9e3cacb79ec951c7cdd3e27b74cba"
    end
  end

  def install
    bin.install "slop-chop"
  end

  test do
    system "#{bin}/slop-chop", "--version"
  end
end
