class SlopChop < Formula
  desc "Strip AI writing tells so text reads like a human wrote it"
  homepage "https://github.com/dcadolph/slop-chop"
  version "0.55.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/dcadolph/slop-chop/releases/download/v0.55.0/slop-chop_0.55.0_Darwin_arm64.tar.gz"
      sha256 "2dc09b13f9666000163825b1e1ac846fc0b7500928540f92bb2f8b556a7802ab"
    end
    on_intel do
      url "https://github.com/dcadolph/slop-chop/releases/download/v0.55.0/slop-chop_0.55.0_Darwin_x86_64.tar.gz"
      sha256 "b28122832ba5927ca38d7763909b9fde2c2a68793bba5c34d6c42273ec0a8a92"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/dcadolph/slop-chop/releases/download/v0.55.0/slop-chop_0.55.0_Linux_arm64.tar.gz"
      sha256 "441496f6233277dba9fa565fd36e3430a43e6e275effe1d2460c37353c8cd434"
    end
    on_intel do
      url "https://github.com/dcadolph/slop-chop/releases/download/v0.55.0/slop-chop_0.55.0_Linux_x86_64.tar.gz"
      sha256 "8e14fd80880e52c4808186e70fe77a73faa1adafeae43d295b78b08e11fce3e5"
    end
  end

  def install
    bin.install "slop-chop"
  end

  test do
    system "#{bin}/slop-chop", "--version"
  end
end
