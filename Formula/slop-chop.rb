class SlopChop < Formula
  desc "Strip AI writing tells so text reads like a human wrote it"
  homepage "https://github.com/dcadolph/slop-chop"
  version "0.27.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/dcadolph/slop-chop/releases/download/v0.27.0/slop-chop_0.27.0_Darwin_arm64.tar.gz"
      sha256 "ad46d34318959615c72cddba68997a1a111c75a23da455ae3565e2761f6b7c73"
    end
    on_intel do
      url "https://github.com/dcadolph/slop-chop/releases/download/v0.27.0/slop-chop_0.27.0_Darwin_x86_64.tar.gz"
      sha256 "a9671bb4b2ac4d4eef69a6135f3cd6c4fad5c6c52888e94ff5d60e887b0f2bb6"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/dcadolph/slop-chop/releases/download/v0.27.0/slop-chop_0.27.0_Linux_arm64.tar.gz"
      sha256 "656ff178f83b86794978e00e43b37746186498d16676cf9c2809782bc1d8eead"
    end
    on_intel do
      url "https://github.com/dcadolph/slop-chop/releases/download/v0.27.0/slop-chop_0.27.0_Linux_x86_64.tar.gz"
      sha256 "af25fb875837c375087e7ef2db71fdadc1cf565d26fe8982a5b9786e0caa4576"
    end
  end

  def install
    bin.install "slop-chop"
  end

  test do
    system "#{bin}/slop-chop", "--version"
  end
end
