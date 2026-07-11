class Vamoose < Formula
  desc "Calendar workflow engine for time off, approvals, and quick actions"
  homepage "https://github.com/dcadolph/vamoose"
  version "0.20.0"
  license "BUSL-1.1"

  on_macos do
    on_arm do
      url "https://github.com/dcadolph/vamoose/releases/download/v0.20.0/vamoose_0.20.0_Darwin_arm64.tar.gz"
      sha256 "f42cbfd563d14c62ff97f99b108e7f90f2c298ab62e529edd1a027528b3984fe"
    end
    on_intel do
      url "https://github.com/dcadolph/vamoose/releases/download/v0.20.0/vamoose_0.20.0_Darwin_x86_64.tar.gz"
      sha256 "cdf4ffc749fc59b9e4fdadbc87bc73716a9d5e639f0d853ea0a0e42dd3966775"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/dcadolph/vamoose/releases/download/v0.20.0/vamoose_0.20.0_Linux_arm64.tar.gz"
      sha256 "052ab8572dda1494b74c037ab2d8684719f3ac7234181e3b75306235cc9bb783"
    end
    on_intel do
      url "https://github.com/dcadolph/vamoose/releases/download/v0.20.0/vamoose_0.20.0_Linux_x86_64.tar.gz"
      sha256 "50c09cc7b7121ce3c6b1c24905143ac54b86af62f0bcdd9559f0d4e2427451b4"
    end
  end

  def install
    bin.install "vamoose"
  end

  test do
    system "#{bin}/vamoose", "version"
  end
end
