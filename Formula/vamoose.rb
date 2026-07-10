class Vamoose < Formula
  desc "Calendar workflow engine for time off, approvals, and quick actions"
  homepage "https://github.com/dcadolph/vamoose"
  version "0.11.0"
  license "BUSL-1.1"

  on_macos do
    on_arm do
      url "https://github.com/dcadolph/vamoose/releases/download/v0.11.0/vamoose_0.11.0_Darwin_arm64.tar.gz"
      sha256 "04399a3a1d0b49323f59850e1e275ff1deadc145cbd7962fc6f0d0e99677e5e9"
    end
    on_intel do
      url "https://github.com/dcadolph/vamoose/releases/download/v0.11.0/vamoose_0.11.0_Darwin_x86_64.tar.gz"
      sha256 "51a021798166306d609a8f17e45a7425553f8b6866d5e6f777d9f33759df3638"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/dcadolph/vamoose/releases/download/v0.11.0/vamoose_0.11.0_Linux_arm64.tar.gz"
      sha256 "4733af01706cdcb5ede9f029a31010af948aabd237c992ae0b2cdd31946e8d62"
    end
    on_intel do
      url "https://github.com/dcadolph/vamoose/releases/download/v0.11.0/vamoose_0.11.0_Linux_x86_64.tar.gz"
      sha256 "443c812e2ab41c2261a06eb56c5bd748700f2104e3e3b5f7b5e31c19b2d3ab24"
    end
  end

  def install
    bin.install "vamoose"
  end

  test do
    system "#{bin}/vamoose", "version"
  end
end
