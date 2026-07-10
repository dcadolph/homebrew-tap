class Vamoose < Formula
  desc "Calendar workflow engine for time off, approvals, and quick actions"
  homepage "https://github.com/dcadolph/vamoose"
  version "0.15.0"
  license "BUSL-1.1"

  on_macos do
    on_arm do
      url "https://github.com/dcadolph/vamoose/releases/download/v0.15.0/vamoose_0.15.0_Darwin_arm64.tar.gz"
      sha256 "205fa6a932f995e80717e9c73194e5039e11e9b485267b81ae793a9e713c1bb7"
    end
    on_intel do
      url "https://github.com/dcadolph/vamoose/releases/download/v0.15.0/vamoose_0.15.0_Darwin_x86_64.tar.gz"
      sha256 "71ebd5a1d4e3a75bc0c81eccc5308c76f2bb37364d5f32c0ad434f862783fcdd"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/dcadolph/vamoose/releases/download/v0.15.0/vamoose_0.15.0_Linux_arm64.tar.gz"
      sha256 "3e6605e859a656729abfa00b118ea2a644d07b7bb9d1b1d00e5f23582388eb4f"
    end
    on_intel do
      url "https://github.com/dcadolph/vamoose/releases/download/v0.15.0/vamoose_0.15.0_Linux_x86_64.tar.gz"
      sha256 "a312c11b20239966a765571d2ce561f1a51dce3c0240d8deef30f47ded627d18"
    end
  end

  def install
    bin.install "vamoose"
  end

  test do
    system "#{bin}/vamoose", "version"
  end
end
