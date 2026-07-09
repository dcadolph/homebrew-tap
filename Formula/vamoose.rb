class Vamoose < Formula
  desc "Calendar workflow engine for time off, approvals, and quick actions"
  homepage "https://github.com/dcadolph/vamoose"
  version "0.4.1"
  license "BUSL-1.1"

  on_macos do
    on_arm do
      url "https://github.com/dcadolph/vamoose/releases/download/v0.4.1/vamoose_0.4.1_Darwin_arm64.tar.gz"
      sha256 "741c4170037054b6aa6737d442fcd77b29957b1f17ef2f2a1696a7c7802d3840"
    end
    on_intel do
      url "https://github.com/dcadolph/vamoose/releases/download/v0.4.1/vamoose_0.4.1_Darwin_x86_64.tar.gz"
      sha256 "8e18e76fded11fb63fe49d1fb800cdae2bedb6136e272013e1994950f131c3ea"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/dcadolph/vamoose/releases/download/v0.4.1/vamoose_0.4.1_Linux_arm64.tar.gz"
      sha256 "72c7bc8034c1175d8cf5821ac6a3b70ce4e12060cdb234bcdee6f14c00e4393c"
    end
    on_intel do
      url "https://github.com/dcadolph/vamoose/releases/download/v0.4.1/vamoose_0.4.1_Linux_x86_64.tar.gz"
      sha256 "aad3033790a2e6485e5fb936d0861e0e3015cd9b9b911836949393a0e4eeb01e"
    end
  end

  def install
    bin.install "vamoose"
  end

  test do
    system "#{bin}/vamoose", "version"
  end
end
