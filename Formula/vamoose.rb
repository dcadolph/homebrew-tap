class Vamoose < Formula
  desc "Calendar workflow engine for time off, approvals, and quick actions"
  homepage "https://vamoose.dev"
  version "0.33.0"
  license "BUSL-1.1"

  on_macos do
    on_arm do
      url "https://github.com/dcadolph/vamoose/releases/download/v0.33.0/vamoose_0.33.0_Darwin_arm64.tar.gz"
      sha256 "006dc55ef25271952f294c53de85657e51e641202363b4e6062b55a73b4c4504"
    end
    on_intel do
      url "https://github.com/dcadolph/vamoose/releases/download/v0.33.0/vamoose_0.33.0_Darwin_x86_64.tar.gz"
      sha256 "b9aa4beb4d0582419535da58807cef4900f21ca18f10029fbb78305962d8b350"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/dcadolph/vamoose/releases/download/v0.33.0/vamoose_0.33.0_Linux_arm64.tar.gz"
      sha256 "a77859744deea3aa388853a4bc6880035ae7f1b0c3f4ac9c429e4e781d652353"
    end
    on_intel do
      url "https://github.com/dcadolph/vamoose/releases/download/v0.33.0/vamoose_0.33.0_Linux_x86_64.tar.gz"
      sha256 "34f501546ad4f654587d615d3d8f41d379fa33d7ab7b78b40e4626b58f281428"
    end
  end

  def install
    bin.install "vamoose"
  end

  test do
    system "#{bin}/vamoose", "version"
  end
end
