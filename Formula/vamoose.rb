class Vamoose < Formula
  desc "Calendar workflow engine for time off, approvals, and quick actions"
  homepage "https://github.com/dcadolph/vamoose"
  version "0.27.0"
  license "BUSL-1.1"

  on_macos do
    on_arm do
      url "https://github.com/dcadolph/vamoose/releases/download/v0.27.0/vamoose_0.27.0_Darwin_arm64.tar.gz"
      sha256 "3cdb1355f5e8236c70a161c2cecd22fe6c98027771a0765b1a9c714a62a06e95"
    end
    on_intel do
      url "https://github.com/dcadolph/vamoose/releases/download/v0.27.0/vamoose_0.27.0_Darwin_x86_64.tar.gz"
      sha256 "f7131b1306dd4faa3f9dd17f2b24c0293fe8309c26324258a8964e52eb66b038"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/dcadolph/vamoose/releases/download/v0.27.0/vamoose_0.27.0_Linux_arm64.tar.gz"
      sha256 "a53eb7c5858a1a0461a026a3f95ad6c3b2b70bfb56e9e1fbc55afc969f32dbfa"
    end
    on_intel do
      url "https://github.com/dcadolph/vamoose/releases/download/v0.27.0/vamoose_0.27.0_Linux_x86_64.tar.gz"
      sha256 "001813ad4e4d2b30c982373827ecb86ea02172f69d93bdab79ee3e5a236eb217"
    end
  end

  def install
    bin.install "vamoose"
  end

  test do
    system "#{bin}/vamoose", "version"
  end
end
