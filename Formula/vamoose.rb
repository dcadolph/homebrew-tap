class Vamoose < Formula
  desc "Calendar workflow engine for time off, approvals, and quick actions"
  homepage "https://github.com/dcadolph/vamoose"
  version "0.22.0"
  license "BUSL-1.1"

  on_macos do
    on_arm do
      url "https://github.com/dcadolph/vamoose/releases/download/v0.22.0/vamoose_0.22.0_Darwin_arm64.tar.gz"
      sha256 "4eefe7099e560f2fe16b1339a96d154c16f62026beb040c29be043a5db8c7afb"
    end
    on_intel do
      url "https://github.com/dcadolph/vamoose/releases/download/v0.22.0/vamoose_0.22.0_Darwin_x86_64.tar.gz"
      sha256 "475c5f8abb6c0e72251d5ba0b90f9c5cc69d959755ca2f549568c0b1c205243b"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/dcadolph/vamoose/releases/download/v0.22.0/vamoose_0.22.0_Linux_arm64.tar.gz"
      sha256 "e8b80f38f99051399283206b631c44635788338599dd462188f6f731dd2a68e7"
    end
    on_intel do
      url "https://github.com/dcadolph/vamoose/releases/download/v0.22.0/vamoose_0.22.0_Linux_x86_64.tar.gz"
      sha256 "131bdfc49ac2b7d4ef0a3a12fd95b90e4907909f7e5616e9598ff1d80df8ab01"
    end
  end

  def install
    bin.install "vamoose"
  end

  test do
    system "#{bin}/vamoose", "version"
  end
end
