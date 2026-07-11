class Vamoose < Formula
  desc "Calendar workflow engine for time off, approvals, and quick actions"
  homepage "https://github.com/dcadolph/vamoose"
  version "0.18.0"
  license "BUSL-1.1"

  on_macos do
    on_arm do
      url "https://github.com/dcadolph/vamoose/releases/download/v0.18.0/vamoose_0.18.0_Darwin_arm64.tar.gz"
      sha256 "c4f8e6614e631c792759c7117bfe25453ae8e9a186c1eea1e098e2b72438009e"
    end
    on_intel do
      url "https://github.com/dcadolph/vamoose/releases/download/v0.18.0/vamoose_0.18.0_Darwin_x86_64.tar.gz"
      sha256 "20d6793c248fbd1afebbecb1b3443d56dc1820c697fc73026e96b4f440a8db3c"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/dcadolph/vamoose/releases/download/v0.18.0/vamoose_0.18.0_Linux_arm64.tar.gz"
      sha256 "90b0de2d5a6062bc3c051987f363d5b7866e60a809d4c0eef7ab2d4b8691dc6b"
    end
    on_intel do
      url "https://github.com/dcadolph/vamoose/releases/download/v0.18.0/vamoose_0.18.0_Linux_x86_64.tar.gz"
      sha256 "5f82c14c46a817b09954bf3dbd2a693fa58d5ee5af97358a2e448cae28b320bb"
    end
  end

  def install
    bin.install "vamoose"
  end

  test do
    system "#{bin}/vamoose", "version"
  end
end
