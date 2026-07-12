class SlopChop < Formula
  desc "Strip AI writing tells so text reads like a human wrote it"
  homepage "https://github.com/dcadolph/slop-chop"
  version "0.20.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/dcadolph/slop-chop/releases/download/v0.20.0/slop-chop_0.20.0_Darwin_arm64.tar.gz"
      sha256 "8fee8d4b0e95bfd4dfa09889786a325b282dd88c9b0d24427e9e9e561f02755f"
    end
    on_intel do
      url "https://github.com/dcadolph/slop-chop/releases/download/v0.20.0/slop-chop_0.20.0_Darwin_x86_64.tar.gz"
      sha256 "19da2c442d298908c03f1d8d857fc724229a34e285463017d995b06ba4b0fad8"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/dcadolph/slop-chop/releases/download/v0.20.0/slop-chop_0.20.0_Linux_arm64.tar.gz"
      sha256 "b24c8d6782286f3d380d0e181f8f0fd8d3ea47c35d080301294b26105e5b3c0c"
    end
    on_intel do
      url "https://github.com/dcadolph/slop-chop/releases/download/v0.20.0/slop-chop_0.20.0_Linux_x86_64.tar.gz"
      sha256 "92f07b345f56266daa196089a3da02f519960113f5056be4a6eac4992e7b5a89"
    end
  end

  def install
    bin.install "slop-chop"
  end

  test do
    system "#{bin}/slop-chop", "--version"
  end
end
