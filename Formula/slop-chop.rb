class SlopChop < Formula
  desc "Strip AI writing tells so text reads like a human wrote it"
  homepage "https://github.com/dcadolph/slop-chop"
  version "0.45.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/dcadolph/slop-chop/releases/download/v0.45.0/slop-chop_0.45.0_Darwin_arm64.tar.gz"
      sha256 "ef42be6db21108560a7318eb6a8c1a9b9889e78ecbec9b2e4b7344d92e7454fe"
    end
    on_intel do
      url "https://github.com/dcadolph/slop-chop/releases/download/v0.45.0/slop-chop_0.45.0_Darwin_x86_64.tar.gz"
      sha256 "dde8a02a404b7e06975ca28214aa30818845f17bf1449fa8c702cea57e0863e5"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/dcadolph/slop-chop/releases/download/v0.45.0/slop-chop_0.45.0_Linux_arm64.tar.gz"
      sha256 "f0ad765373cd12021e9235f7ac46521350df5d32a0e061052b2fbb86ed835c01"
    end
    on_intel do
      url "https://github.com/dcadolph/slop-chop/releases/download/v0.45.0/slop-chop_0.45.0_Linux_x86_64.tar.gz"
      sha256 "ec64be7f06838d482ce28fbd6f3a5f6660b8b8dbfafc365ff0b11c5f62727e91"
    end
  end

  def install
    bin.install "slop-chop"
  end

  test do
    system "#{bin}/slop-chop", "--version"
  end
end
