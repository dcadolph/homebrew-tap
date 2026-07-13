class Vamoose < Formula
  desc "Calendar workflow engine for time off, approvals, and quick actions"
  homepage "https://vamoose.dev"
  version "0.32.0"
  license "BUSL-1.1"

  on_macos do
    on_arm do
      url "https://github.com/dcadolph/vamoose/releases/download/v0.32.0/vamoose_0.32.0_Darwin_arm64.tar.gz"
      sha256 "60e843b67c26bd36b56206ef249eabb36e785deaef4f4ab511457cf532892cb0"
    end
    on_intel do
      url "https://github.com/dcadolph/vamoose/releases/download/v0.32.0/vamoose_0.32.0_Darwin_x86_64.tar.gz"
      sha256 "9b8a7fc6f5bd0de4de9efea840314eb8c93049bdcc4b7827c55000c5fd07f4ba"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/dcadolph/vamoose/releases/download/v0.32.0/vamoose_0.32.0_Linux_arm64.tar.gz"
      sha256 "0625630a097b78c343f6a3195f594d5b78ee32fb38f01548f37c8862766dd491"
    end
    on_intel do
      url "https://github.com/dcadolph/vamoose/releases/download/v0.32.0/vamoose_0.32.0_Linux_x86_64.tar.gz"
      sha256 "20ede404fa0d571cbf98dbd40253b847a87eef0fb34d618122054c3587f45200"
    end
  end

  def install
    bin.install "vamoose"
  end

  test do
    system "#{bin}/vamoose", "version"
  end
end
