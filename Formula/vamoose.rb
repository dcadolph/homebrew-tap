class Vamoose < Formula
  desc "Calendar workflow engine for time off, approvals, and quick actions"
  homepage "https://github.com/dcadolph/vamoose"
  version "0.4.4"
  license "BUSL-1.1"

  on_macos do
    on_arm do
      url "https://github.com/dcadolph/vamoose/releases/download/v0.4.4/vamoose_0.4.4_Darwin_arm64.tar.gz"
      sha256 "bd3034b937ee6b12e3515740b805bd9a03394c710be31ebfb8c976474d283ecb"
    end
    on_intel do
      url "https://github.com/dcadolph/vamoose/releases/download/v0.4.4/vamoose_0.4.4_Darwin_x86_64.tar.gz"
      sha256 "b727c040efdf66e60d62deb7455f5cfb5d32ea46429efe5f61a2001b3079be08"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/dcadolph/vamoose/releases/download/v0.4.4/vamoose_0.4.4_Linux_arm64.tar.gz"
      sha256 "1aea17fb2efee9be300777cac3c740103d19db5679c2650e04f597252f82e464"
    end
    on_intel do
      url "https://github.com/dcadolph/vamoose/releases/download/v0.4.4/vamoose_0.4.4_Linux_x86_64.tar.gz"
      sha256 "53bd9bf8f005a87118886bdb06a6420e44800b661c6d9d0c9666fe60fdde35ca"
    end
  end

  def install
    bin.install "vamoose"
  end

  test do
    system "#{bin}/vamoose", "version"
  end
end
