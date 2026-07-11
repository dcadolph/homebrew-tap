class Vamoose < Formula
  desc "Calendar workflow engine for time off, approvals, and quick actions"
  homepage "https://github.com/dcadolph/vamoose"
  version "0.25.0"
  license "BUSL-1.1"

  on_macos do
    on_arm do
      url "https://github.com/dcadolph/vamoose/releases/download/v0.25.0/vamoose_0.25.0_Darwin_arm64.tar.gz"
      sha256 "f29c61e8e82d0f708fb0bbf10d9d1039a39f910bf581ff3c78f177486219afaf"
    end
    on_intel do
      url "https://github.com/dcadolph/vamoose/releases/download/v0.25.0/vamoose_0.25.0_Darwin_x86_64.tar.gz"
      sha256 "978be1c37c618e221b5ca144a6c13aefa7ea00c0775fecd1261c2a85efca0c78"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/dcadolph/vamoose/releases/download/v0.25.0/vamoose_0.25.0_Linux_arm64.tar.gz"
      sha256 "3d4a07baa35e6e72294497024a7f22e7c21e0fd93e279196ff9624b62285c7fe"
    end
    on_intel do
      url "https://github.com/dcadolph/vamoose/releases/download/v0.25.0/vamoose_0.25.0_Linux_x86_64.tar.gz"
      sha256 "fbc88d7f82e1114d8f83111c411e8de75744c92c1b415063bc3b66256ca11eef"
    end
  end

  def install
    bin.install "vamoose"
  end

  test do
    system "#{bin}/vamoose", "version"
  end
end
