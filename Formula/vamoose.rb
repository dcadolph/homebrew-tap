class Vamoose < Formula
  desc "Calendar workflow engine for time off, approvals, and quick actions"
  homepage "https://github.com/dcadolph/vamoose"
  version "0.14.0"
  license "BUSL-1.1"

  on_macos do
    on_arm do
      url "https://github.com/dcadolph/vamoose/releases/download/v0.14.0/vamoose_0.14.0_Darwin_arm64.tar.gz"
      sha256 "25c64703529b760ea3f33ad4be0af4a7a60bd5e0e172ec6ea660a3851e972b1a"
    end
    on_intel do
      url "https://github.com/dcadolph/vamoose/releases/download/v0.14.0/vamoose_0.14.0_Darwin_x86_64.tar.gz"
      sha256 "cd7cf8b80a21959cd941553fc949cd1c0b7565193391a7d9748bc288ab4e0229"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/dcadolph/vamoose/releases/download/v0.14.0/vamoose_0.14.0_Linux_arm64.tar.gz"
      sha256 "3ad410d0286cc91240ac9630c0a79dd4b16970c55c3ef3055ea55c62140d4e03"
    end
    on_intel do
      url "https://github.com/dcadolph/vamoose/releases/download/v0.14.0/vamoose_0.14.0_Linux_x86_64.tar.gz"
      sha256 "cef0e79d64c580e81a4e64127e3f6c2e146dfb768e2b7b6d178bdbd26cffeb0a"
    end
  end

  def install
    bin.install "vamoose"
  end

  test do
    system "#{bin}/vamoose", "version"
  end
end
