class Vamoose < Formula
  desc "Calendar workflow engine for time off, approvals, and quick actions"
  homepage "https://github.com/dcadolph/vamoose"
  version "0.21.0"
  license "BUSL-1.1"

  on_macos do
    on_arm do
      url "https://github.com/dcadolph/vamoose/releases/download/v0.21.0/vamoose_0.21.0_Darwin_arm64.tar.gz"
      sha256 "50631ae2e53d4ce47ce1efbcd6db58afe7e4e95e285472d8636a6d20287ea21d"
    end
    on_intel do
      url "https://github.com/dcadolph/vamoose/releases/download/v0.21.0/vamoose_0.21.0_Darwin_x86_64.tar.gz"
      sha256 "063b774a26d47e9ed9d4c15c45366f47a9865f36274ef355d4e8631d75c8739f"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/dcadolph/vamoose/releases/download/v0.21.0/vamoose_0.21.0_Linux_arm64.tar.gz"
      sha256 "eeaa78da14f9fd2e06d203f0048c482f6eccc9dda82d49abd35cf9eda1657b93"
    end
    on_intel do
      url "https://github.com/dcadolph/vamoose/releases/download/v0.21.0/vamoose_0.21.0_Linux_x86_64.tar.gz"
      sha256 "cd2d5bc0d4210bae2fdd840bd686a4aa24cc7d0b5e6f3e92f919d5be77deb2a3"
    end
  end

  def install
    bin.install "vamoose"
  end

  test do
    system "#{bin}/vamoose", "version"
  end
end
