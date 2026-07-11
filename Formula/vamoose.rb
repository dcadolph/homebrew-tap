class Vamoose < Formula
  desc "Calendar workflow engine for time off, approvals, and quick actions"
  homepage "https://github.com/dcadolph/vamoose"
  version "0.26.0"
  license "BUSL-1.1"

  on_macos do
    on_arm do
      url "https://github.com/dcadolph/vamoose/releases/download/v0.26.0/vamoose_0.26.0_Darwin_arm64.tar.gz"
      sha256 "2ef8791f113d191efb3f1c0e0fc3e5132e974bebe367521055246c9b0012d2a6"
    end
    on_intel do
      url "https://github.com/dcadolph/vamoose/releases/download/v0.26.0/vamoose_0.26.0_Darwin_x86_64.tar.gz"
      sha256 "2cafed0e9c39be9eddce72cfbbf82192a836ffd05558fcb2b7a16c1b722f2bc5"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/dcadolph/vamoose/releases/download/v0.26.0/vamoose_0.26.0_Linux_arm64.tar.gz"
      sha256 "1bfd9f0941ffefb7afe509dac0f6459824fc9ad9030fbf78fec175fb52dd27dc"
    end
    on_intel do
      url "https://github.com/dcadolph/vamoose/releases/download/v0.26.0/vamoose_0.26.0_Linux_x86_64.tar.gz"
      sha256 "7f6caab1e1c00bd9335d91e68a959ee33941839b75b8c01e3f316efc585c3ea0"
    end
  end

  def install
    bin.install "vamoose"
  end

  test do
    system "#{bin}/vamoose", "version"
  end
end
