class Vamoose < Formula
  desc "Calendar workflow engine for time off, approvals, and quick actions"
  homepage "https://github.com/dcadolph/vamoose"
  version "0.7.0"
  license "BUSL-1.1"

  on_macos do
    on_arm do
      url "https://github.com/dcadolph/vamoose/releases/download/v0.7.0/vamoose_0.7.0_Darwin_arm64.tar.gz"
      sha256 "17454e1fdbc48150b3561734f183f0ff91641792b1e0af9e997ff12646bc2cc1"
    end
    on_intel do
      url "https://github.com/dcadolph/vamoose/releases/download/v0.7.0/vamoose_0.7.0_Darwin_x86_64.tar.gz"
      sha256 "9b069789d015973b0daef8f565c0aa8d63c40707614023b5bb0a6ab75d2b8139"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/dcadolph/vamoose/releases/download/v0.7.0/vamoose_0.7.0_Linux_arm64.tar.gz"
      sha256 "7f847f2be6dc62ae40dc343fc9e4d45b04c8412bab0c72ef5f022826e5d18563"
    end
    on_intel do
      url "https://github.com/dcadolph/vamoose/releases/download/v0.7.0/vamoose_0.7.0_Linux_x86_64.tar.gz"
      sha256 "75306e7d511f8bb4ebc37f86af671580392c26bd3504b4223255e11f21b5b3bc"
    end
  end

  def install
    bin.install "vamoose"
  end

  test do
    system "#{bin}/vamoose", "version"
  end
end
