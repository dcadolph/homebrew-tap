class Vamoose < Formula
  desc "Calendar workflow engine for time off, approvals, and quick actions"
  homepage "https://vamoose.dev"
  version "0.34.1"
  license "BUSL-1.1"

  on_macos do
    on_arm do
      url "https://github.com/dcadolph/vamoose/releases/download/v0.34.1/vamoose_0.34.1_Darwin_arm64.tar.gz"
      sha256 "3e1d99bb4e70893b06aaaba0231af12a2cd5ce6b6772dbced24e8a1a2408b616"
    end
    on_intel do
      url "https://github.com/dcadolph/vamoose/releases/download/v0.34.1/vamoose_0.34.1_Darwin_x86_64.tar.gz"
      sha256 "7a8697a111574544a82e47636239969165e9a1a57f0e4334ef11a4705bfac914"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/dcadolph/vamoose/releases/download/v0.34.1/vamoose_0.34.1_Linux_arm64.tar.gz"
      sha256 "54a51ad90ec9dd62afe3671cafc3de058ff4a6809bb31910886f14a2a0093860"
    end
    on_intel do
      url "https://github.com/dcadolph/vamoose/releases/download/v0.34.1/vamoose_0.34.1_Linux_x86_64.tar.gz"
      sha256 "4f17a13fc373d5b8534333aa02be1a5413240515e68155bb6053a6228ae8f78c"
    end
  end

  def install
    bin.install "vamoose"
  end

  test do
    system "#{bin}/vamoose", "version"
  end
end
