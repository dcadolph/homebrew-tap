class SlopChop < Formula
  desc "Strip AI writing tells so text reads like a human wrote it"
  homepage "https://github.com/dcadolph/slop-chop"
  version "0.53.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/dcadolph/slop-chop/releases/download/v0.53.0/slop-chop_0.53.0_Darwin_arm64.tar.gz"
      sha256 "999f8870e7937cb8557a1cbeda64b0280b0f9957bf5b749fde0af1b897a27a7a"
    end
    on_intel do
      url "https://github.com/dcadolph/slop-chop/releases/download/v0.53.0/slop-chop_0.53.0_Darwin_x86_64.tar.gz"
      sha256 "1babf4c00177a248030d694057f097efdff9d8141ce5003aa48023c040da6023"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/dcadolph/slop-chop/releases/download/v0.53.0/slop-chop_0.53.0_Linux_arm64.tar.gz"
      sha256 "24b5e02c679bdd0ec136ebb47666b40eb86f0519e4d1566e77273117a54ea7b8"
    end
    on_intel do
      url "https://github.com/dcadolph/slop-chop/releases/download/v0.53.0/slop-chop_0.53.0_Linux_x86_64.tar.gz"
      sha256 "0523a8935fc5c63a30a27ad89fc95f50376df269457afa219f19332d152e4741"
    end
  end

  def install
    bin.install "slop-chop"
  end

  test do
    system "#{bin}/slop-chop", "--version"
  end
end
