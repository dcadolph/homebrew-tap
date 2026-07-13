class Vamoose < Formula
  desc "Calendar workflow engine for time off, approvals, and quick actions"
  homepage "https://vamoose.dev"
  version "0.35.0"
  license "BUSL-1.1"

  on_macos do
    on_arm do
      url "https://github.com/dcadolph/vamoose/releases/download/v0.35.0/vamoose_0.35.0_Darwin_arm64.tar.gz"
      sha256 "bba43246369aa9ed0bc2bf8e88040daa0e038920c31c8e33808f1d66ec63dced"
    end
    on_intel do
      url "https://github.com/dcadolph/vamoose/releases/download/v0.35.0/vamoose_0.35.0_Darwin_x86_64.tar.gz"
      sha256 "1292d78b1080b24323d44f7eecc6f667a72a86af2cf890f13c6aa4463a2872b1"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/dcadolph/vamoose/releases/download/v0.35.0/vamoose_0.35.0_Linux_arm64.tar.gz"
      sha256 "24253e95e914e3a4946089891bd98e76b8824c4c21408950ec2ab6a3d385dda9"
    end
    on_intel do
      url "https://github.com/dcadolph/vamoose/releases/download/v0.35.0/vamoose_0.35.0_Linux_x86_64.tar.gz"
      sha256 "8458963c9fa1b0e760dd4003746c7524928242a4aba81df9daab52ff25845ef7"
    end
  end

  def install
    bin.install "vamoose"
  end

  test do
    system "#{bin}/vamoose", "version"
  end
end
