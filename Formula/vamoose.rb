class Vamoose < Formula
  desc "Calendar workflow engine for time off, approvals, and quick actions"
  homepage "https://vamoose.dev"
  version "0.34.1"
  license "BUSL-1.1"

  on_macos do
    on_arm do
      url "https://github.com/dcadolph/vamoose/releases/download/v0.34.1/vamoose_0.34.1_Darwin_arm64.tar.gz"
      sha256 "e6f386bf334537fcf0102b9fb08c105de25bffc49053504f54d2079588d897f1"
    end
    on_intel do
      url "https://github.com/dcadolph/vamoose/releases/download/v0.34.1/vamoose_0.34.1_Darwin_x86_64.tar.gz"
      sha256 "b6c8a7c8d95b11fcf5f89fa1db8327c427c551c1f219fd55fa87adcd49f4f5b0"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/dcadolph/vamoose/releases/download/v0.34.1/vamoose_0.34.1_Linux_arm64.tar.gz"
      sha256 "b60f39538c9d0313beeb637e1dec7b2629f2e2d2a5628e55844cb72a7d9099d3"
    end
    on_intel do
      url "https://github.com/dcadolph/vamoose/releases/download/v0.34.1/vamoose_0.34.1_Linux_x86_64.tar.gz"
      sha256 "ff46640b53b4848a58f03191cf73528fb02c8bd6414f062c74cf74f1cc903c25"
    end
  end

  def install
    bin.install "vamoose"
  end

  test do
    system "#{bin}/vamoose", "version"
  end
end
