class SlopChop < Formula
  desc "Strip AI writing tells so text reads like a human wrote it"
  homepage "https://github.com/dcadolph/slop-chop"
  version "0.25.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/dcadolph/slop-chop/releases/download/v0.25.1/slop-chop_0.25.1_Darwin_arm64.tar.gz"
      sha256 "f61f9305c66fa9da0fdd347e0b8f427d26a4c32e52ec9abd317383b172fcf71f"
    end
    on_intel do
      url "https://github.com/dcadolph/slop-chop/releases/download/v0.25.1/slop-chop_0.25.1_Darwin_x86_64.tar.gz"
      sha256 "95ca822c98799badd804556aa58304b695c51e0c6986859971653381e7a3bc60"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/dcadolph/slop-chop/releases/download/v0.25.1/slop-chop_0.25.1_Linux_arm64.tar.gz"
      sha256 "60c849f3f24844cb336df348a9aa8f517358f814c9138e5fb05f33b6e88a366d"
    end
    on_intel do
      url "https://github.com/dcadolph/slop-chop/releases/download/v0.25.1/slop-chop_0.25.1_Linux_x86_64.tar.gz"
      sha256 "b6c17dc17e0f2b794ba37138f01055ffc06cf7de65c3e8cebe91ca1cdd230f66"
    end
  end

  def install
    bin.install "slop-chop"
  end

  test do
    system "#{bin}/slop-chop", "--version"
  end
end
