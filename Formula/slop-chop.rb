class SlopChop < Formula
  desc "Strip AI writing tells so text reads like a human wrote it"
  homepage "https://github.com/dcadolph/slop-chop"
  version "0.29.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/dcadolph/slop-chop/releases/download/v0.29.1/slop-chop_0.29.1_Darwin_arm64.tar.gz"
      sha256 "77da08ed06e61e5f494840d0a3d6ebc7d6e0ec45a50f780464a430ca3a9a0b44"
    end
    on_intel do
      url "https://github.com/dcadolph/slop-chop/releases/download/v0.29.1/slop-chop_0.29.1_Darwin_x86_64.tar.gz"
      sha256 "75d37280d40b20e406749609c828c4fbe587cfb736328b9c383b1220b41dc6af"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/dcadolph/slop-chop/releases/download/v0.29.1/slop-chop_0.29.1_Linux_arm64.tar.gz"
      sha256 "70a7ef6164fa6accf6a8a197535f469ced760b38446c19635fca7f9edf02657d"
    end
    on_intel do
      url "https://github.com/dcadolph/slop-chop/releases/download/v0.29.1/slop-chop_0.29.1_Linux_x86_64.tar.gz"
      sha256 "11464d95c03ba3cfd65243803537d216adec6299695b1375b858e82e0d0e8b52"
    end
  end

  def install
    bin.install "slop-chop"
  end

  test do
    system "#{bin}/slop-chop", "--version"
  end
end
