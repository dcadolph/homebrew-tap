class Vamoose < Formula
  desc "Calendar workflow engine for time off, approvals, and quick actions"
  homepage "https://github.com/dcadolph/vamoose"
  version "0.5.0"
  license "BUSL-1.1"

  on_macos do
    on_arm do
      url "https://github.com/dcadolph/vamoose/releases/download/v0.5.0/vamoose_0.5.0_Darwin_arm64.tar.gz"
      sha256 "b4208e12622ca4ffbd1ccbe09729495d79cb4b59a1f5b0ef488cf0de3ab2f37a"
    end
    on_intel do
      url "https://github.com/dcadolph/vamoose/releases/download/v0.5.0/vamoose_0.5.0_Darwin_x86_64.tar.gz"
      sha256 "480eba65efaf2a7e4977dd8970a348f48205f6756dd804d44bd4b912d039b643"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/dcadolph/vamoose/releases/download/v0.5.0/vamoose_0.5.0_Linux_arm64.tar.gz"
      sha256 "dc137aa334814f84a642cdeed0a4ff002bdf3ce28ec192c85f3f0044e998dcce"
    end
    on_intel do
      url "https://github.com/dcadolph/vamoose/releases/download/v0.5.0/vamoose_0.5.0_Linux_x86_64.tar.gz"
      sha256 "0da354ab654ff7e75c331aeee0eb9f1e081321858855ea8ef825edc2cd10e8c0"
    end
  end

  def install
    bin.install "vamoose"
  end

  test do
    system "#{bin}/vamoose", "version"
  end
end
