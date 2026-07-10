class Vamoose < Formula
  desc "Calendar workflow engine for time off, approvals, and quick actions"
  homepage "https://github.com/dcadolph/vamoose"
  version "0.9.0"
  license "BUSL-1.1"

  on_macos do
    on_arm do
      url "https://github.com/dcadolph/vamoose/releases/download/v0.9.0/vamoose_0.9.0_Darwin_arm64.tar.gz"
      sha256 "04a70321d33d722f16494a17bd433c5292050afa7cad9806850a5d522e402b09"
    end
    on_intel do
      url "https://github.com/dcadolph/vamoose/releases/download/v0.9.0/vamoose_0.9.0_Darwin_x86_64.tar.gz"
      sha256 "b6ca4ba2ddcb6c74c32271000eed0226edb6b1d25a4e2557bfbc8fe942c0c4b5"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/dcadolph/vamoose/releases/download/v0.9.0/vamoose_0.9.0_Linux_arm64.tar.gz"
      sha256 "624e1ec6731bec386e10bf0df4f8a6e04504181cce9cdd016cda4632a085d69f"
    end
    on_intel do
      url "https://github.com/dcadolph/vamoose/releases/download/v0.9.0/vamoose_0.9.0_Linux_x86_64.tar.gz"
      sha256 "a05daa714e9dcc0526525d5e4eb73cc71af9eec7f42d54b9beb5f89e7de94a1c"
    end
  end

  def install
    bin.install "vamoose"
  end

  test do
    system "#{bin}/vamoose", "version"
  end
end
