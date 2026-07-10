class SlopChop < Formula
  desc "Strip AI writing tells so text reads like a human wrote it"
  homepage "https://github.com/dcadolph/slop-chop"
  version "0.10.2"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/dcadolph/slop-chop/releases/download/v0.10.2/slop-chop_0.10.2_Darwin_arm64.tar.gz"
      sha256 "9e9155afd44ed5540363725777d0a0dcfce9bf84ca1d389a10dab1963ffe33d0"
    end
    on_intel do
      url "https://github.com/dcadolph/slop-chop/releases/download/v0.10.2/slop-chop_0.10.2_Darwin_x86_64.tar.gz"
      sha256 "cbb59a543f3f49703d9e8a9ee3b269666eaa885b00ea8d2585728a003d6c9524"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/dcadolph/slop-chop/releases/download/v0.10.2/slop-chop_0.10.2_Linux_arm64.tar.gz"
      sha256 "bb25a51fcefe79b5d60112a10bd6ad7d7f100ea169735e0f1313e1e2e9b7cd4b"
    end
    on_intel do
      url "https://github.com/dcadolph/slop-chop/releases/download/v0.10.2/slop-chop_0.10.2_Linux_x86_64.tar.gz"
      sha256 "cee10093c3af36a3fc07a8bac4fc5f3436069399252fdb17ebe40a3b802f2e82"
    end
  end

  def install
    bin.install "slop-chop"
  end

  test do
    system "#{bin}/slop-chop", "--version"
  end
end
