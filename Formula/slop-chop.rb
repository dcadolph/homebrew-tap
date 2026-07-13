class SlopChop < Formula
  desc "Strip AI writing tells so text reads like a human wrote it"
  homepage "https://github.com/dcadolph/slop-chop"
  version "0.25.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/dcadolph/slop-chop/releases/download/v0.25.0/slop-chop_0.25.0_Darwin_arm64.tar.gz"
      sha256 "f901e3e7056e6280c140e9ac190ffc7bd1e86a4e7d84786138e782d9f8b347e8"
    end
    on_intel do
      url "https://github.com/dcadolph/slop-chop/releases/download/v0.25.0/slop-chop_0.25.0_Darwin_x86_64.tar.gz"
      sha256 "04d10309b43efa1b8af664e8f13f56e0c83d80b3c641849dde1708156f9d4f1e"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/dcadolph/slop-chop/releases/download/v0.25.0/slop-chop_0.25.0_Linux_arm64.tar.gz"
      sha256 "175815227e5554b8387b2ca4c37284de7ffe53636141d10aff776837bc098c03"
    end
    on_intel do
      url "https://github.com/dcadolph/slop-chop/releases/download/v0.25.0/slop-chop_0.25.0_Linux_x86_64.tar.gz"
      sha256 "ca2ca0f44e36a9240760f8caec0676994c8ad61018db958fb6394ff18208c992"
    end
  end

  def install
    bin.install "slop-chop"
  end

  test do
    system "#{bin}/slop-chop", "--version"
  end
end
