class SlopChop < Formula
  desc "Strip AI writing tells so text reads like a human wrote it"
  homepage "https://github.com/dcadolph/slop-chop"
  version "0.42.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/dcadolph/slop-chop/releases/download/v0.42.1/slop-chop_0.42.1_Darwin_arm64.tar.gz"
      sha256 "57fe31d4c4c0fd609f94ea690bc7e59c3eabcfeb4bb46e314252f19a31752bbd"
    end
    on_intel do
      url "https://github.com/dcadolph/slop-chop/releases/download/v0.42.1/slop-chop_0.42.1_Darwin_x86_64.tar.gz"
      sha256 "028bdf5f41a9cd3e56232681f746faec75b4a18babbc523686aa9ce7b13a5405"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/dcadolph/slop-chop/releases/download/v0.42.1/slop-chop_0.42.1_Linux_arm64.tar.gz"
      sha256 "7f782ec7f039bcd4bee2490876e855c3c2f47f8fc31fcf3cfaf495b0a2fcb95e"
    end
    on_intel do
      url "https://github.com/dcadolph/slop-chop/releases/download/v0.42.1/slop-chop_0.42.1_Linux_x86_64.tar.gz"
      sha256 "66da70152fa7206a1b120ad8bdbea2c158376f64acf23c5a8f74917d8410ca0f"
    end
  end

  def install
    bin.install "slop-chop"
  end

  test do
    system "#{bin}/slop-chop", "--version"
  end
end
