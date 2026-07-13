class Vamoose < Formula
  desc "Calendar workflow engine for time off, approvals, and quick actions"
  homepage "https://vamoose.dev"
  version "0.31.1"
  license "BUSL-1.1"

  on_macos do
    on_arm do
      url "https://github.com/dcadolph/vamoose/releases/download/v0.31.1/vamoose_0.31.1_Darwin_arm64.tar.gz"
      sha256 "4778c322f6b9c6c8b2e44e9cb9638b125e8e0051bb89ab4e16fedbf15af2d802"
    end
    on_intel do
      url "https://github.com/dcadolph/vamoose/releases/download/v0.31.1/vamoose_0.31.1_Darwin_x86_64.tar.gz"
      sha256 "6d3ab5e02eb283da6e5e20f22113864d28f3d056e39c46037b95e1cc9dc756b4"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/dcadolph/vamoose/releases/download/v0.31.1/vamoose_0.31.1_Linux_arm64.tar.gz"
      sha256 "55b0602ce3eeed1d48e67f0f1c1c04f4ed9a6370737a2e3bd69dc5c3af23fdab"
    end
    on_intel do
      url "https://github.com/dcadolph/vamoose/releases/download/v0.31.1/vamoose_0.31.1_Linux_x86_64.tar.gz"
      sha256 "5a12f66f6a83fec7e174b0f5209cccc2b26eccd63e3ae136eac116c3f40e7ac0"
    end
  end

  def install
    bin.install "vamoose"
  end

  test do
    system "#{bin}/vamoose", "version"
  end
end
