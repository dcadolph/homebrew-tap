class Vamoose < Formula
  desc "Calendar workflow engine for time off, approvals, and quick actions"
  homepage "https://github.com/dcadolph/vamoose"
  version "0.19.0"
  license "BUSL-1.1"

  on_macos do
    on_arm do
      url "https://github.com/dcadolph/vamoose/releases/download/v0.19.0/vamoose_0.19.0_Darwin_arm64.tar.gz"
      sha256 "3576a37766c57f4a195581fe6e43e2c56205e56ca758746312b9e83eb181cfe1"
    end
    on_intel do
      url "https://github.com/dcadolph/vamoose/releases/download/v0.19.0/vamoose_0.19.0_Darwin_x86_64.tar.gz"
      sha256 "13b62c548b780d0b0075b210a19b9fbc527dc7c6e2a066a7438ea80b3deba12b"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/dcadolph/vamoose/releases/download/v0.19.0/vamoose_0.19.0_Linux_arm64.tar.gz"
      sha256 "f2b69cb8a188f81141fde7dfa12e3c0f3db745b8d5ee4ce637a294593b0222ba"
    end
    on_intel do
      url "https://github.com/dcadolph/vamoose/releases/download/v0.19.0/vamoose_0.19.0_Linux_x86_64.tar.gz"
      sha256 "051a166ed5404fe428dc5a03354bd85a12e94b37bf21859638869563da00e07c"
    end
  end

  def install
    bin.install "vamoose"
  end

  test do
    system "#{bin}/vamoose", "version"
  end
end
