class Vamoose < Formula
  desc "Calendar workflow engine for time off, approvals, and quick actions"
  homepage "https://github.com/dcadolph/vamoose"
  version "0.16.0"
  license "BUSL-1.1"

  on_macos do
    on_arm do
      url "https://github.com/dcadolph/vamoose/releases/download/v0.16.0/vamoose_0.16.0_Darwin_arm64.tar.gz"
      sha256 "364fe1d964932ae05e4638a631d5bdc26cd56c4dc4d382c8b005f6e0b22e9c2d"
    end
    on_intel do
      url "https://github.com/dcadolph/vamoose/releases/download/v0.16.0/vamoose_0.16.0_Darwin_x86_64.tar.gz"
      sha256 "be67d58bee1d1119a557ac40847a389771ba460856ab4161575f0ee19535a7aa"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/dcadolph/vamoose/releases/download/v0.16.0/vamoose_0.16.0_Linux_arm64.tar.gz"
      sha256 "f64ce88567953cfd3d6259063d0c0eddd8fe81a2f92882ce7d08719310de2c38"
    end
    on_intel do
      url "https://github.com/dcadolph/vamoose/releases/download/v0.16.0/vamoose_0.16.0_Linux_x86_64.tar.gz"
      sha256 "fbde30be2715c735118e286266e63f10f26b3a4893c08707b62b2fc65d837b84"
    end
  end

  def install
    bin.install "vamoose"
  end

  test do
    system "#{bin}/vamoose", "version"
  end
end
