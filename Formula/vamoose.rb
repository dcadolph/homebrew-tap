class Vamoose < Formula
  desc "Calendar workflow engine for time off, approvals, and quick actions"
  homepage "https://github.com/dcadolph/vamoose"
  version "0.17.0"
  license "BUSL-1.1"

  on_macos do
    on_arm do
      url "https://github.com/dcadolph/vamoose/releases/download/v0.17.0/vamoose_0.17.0_Darwin_arm64.tar.gz"
      sha256 "8e746298718574aa1a0a4d0bcc2dc33ec4664c51dbac869489e480d41246e0fc"
    end
    on_intel do
      url "https://github.com/dcadolph/vamoose/releases/download/v0.17.0/vamoose_0.17.0_Darwin_x86_64.tar.gz"
      sha256 "beee705147508e7c724d15377291ee88cc83391266f4e17b2e694c430fc8bfe6"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/dcadolph/vamoose/releases/download/v0.17.0/vamoose_0.17.0_Linux_arm64.tar.gz"
      sha256 "8c287c8e2a6f3a60bda1e8472b0332436769590616b4bc62a2474aca3841f128"
    end
    on_intel do
      url "https://github.com/dcadolph/vamoose/releases/download/v0.17.0/vamoose_0.17.0_Linux_x86_64.tar.gz"
      sha256 "160780b7e7b105bb69b63d2dd462554eea51a69b799fed97802c894dac4ceca7"
    end
  end

  def install
    bin.install "vamoose"
  end

  test do
    system "#{bin}/vamoose", "version"
  end
end
