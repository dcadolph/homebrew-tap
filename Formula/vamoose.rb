class Vamoose < Formula
  desc "Calendar workflow engine for time off, approvals, and quick actions"
  homepage "https://github.com/dcadolph/vamoose"
  version "0.13.0"
  license "BUSL-1.1"

  on_macos do
    on_arm do
      url "https://github.com/dcadolph/vamoose/releases/download/v0.13.0/vamoose_0.13.0_Darwin_arm64.tar.gz"
      sha256 "bcc0d021e73120c946d32d6e21d253adb5182b0506917376f80b8ba402a9b355"
    end
    on_intel do
      url "https://github.com/dcadolph/vamoose/releases/download/v0.13.0/vamoose_0.13.0_Darwin_x86_64.tar.gz"
      sha256 "31e79e7dd90ae007c48d4612448d95668252baae59a7a50a58bfa5fa748b812a"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/dcadolph/vamoose/releases/download/v0.13.0/vamoose_0.13.0_Linux_arm64.tar.gz"
      sha256 "733a2dadc679a1573c34429ac38f7999b5c4e92f56e87f7688a1bf26da020add"
    end
    on_intel do
      url "https://github.com/dcadolph/vamoose/releases/download/v0.13.0/vamoose_0.13.0_Linux_x86_64.tar.gz"
      sha256 "a453221c98dfc78be4c6a6b60de60624405e0d472072274d793e51b061d71970"
    end
  end

  def install
    bin.install "vamoose"
  end

  test do
    system "#{bin}/vamoose", "version"
  end
end
