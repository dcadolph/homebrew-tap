class Vamoose < Formula
  desc "Calendar workflow engine for time off, approvals, and quick actions"
  homepage "https://github.com/dcadolph/vamoose"
  version "0.10.0"
  license "BUSL-1.1"

  on_macos do
    on_arm do
      url "https://github.com/dcadolph/vamoose/releases/download/v0.10.0/vamoose_0.10.0_Darwin_arm64.tar.gz"
      sha256 "9f8c1963a6eb20f69d654d8369a2df5937bcf63c277c98a3e41fd4fc19888be9"
    end
    on_intel do
      url "https://github.com/dcadolph/vamoose/releases/download/v0.10.0/vamoose_0.10.0_Darwin_x86_64.tar.gz"
      sha256 "f2a19114501e5acd0af2f23091d4cc341402752c29e8e5dd884b1f34e7aa1ac8"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/dcadolph/vamoose/releases/download/v0.10.0/vamoose_0.10.0_Linux_arm64.tar.gz"
      sha256 "3e303cc6c67ec0e6f1cc1c3d79460e3928596142135fbfce1ff17504467f47b0"
    end
    on_intel do
      url "https://github.com/dcadolph/vamoose/releases/download/v0.10.0/vamoose_0.10.0_Linux_x86_64.tar.gz"
      sha256 "f2cab380d7b7c68bab1af7dddabb2d483549da787d95cea4341de3b8e57e224c"
    end
  end

  def install
    bin.install "vamoose"
  end

  test do
    system "#{bin}/vamoose", "version"
  end
end
