class Vamoose < Formula
  desc "Calendar workflow engine for time off, approvals, and quick actions"
  homepage "https://github.com/dcadolph/vamoose"
  version "0.23.0"
  license "BUSL-1.1"

  on_macos do
    on_arm do
      url "https://github.com/dcadolph/vamoose/releases/download/v0.23.0/vamoose_0.23.0_Darwin_arm64.tar.gz"
      sha256 "123e0df38007a28352c11919515aeef2ad803f53c482736d40410decceed8c29"
    end
    on_intel do
      url "https://github.com/dcadolph/vamoose/releases/download/v0.23.0/vamoose_0.23.0_Darwin_x86_64.tar.gz"
      sha256 "e44e03ab5eb71494ea9ceafa4de75194c2772db816a632156941059bb7b5e00b"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/dcadolph/vamoose/releases/download/v0.23.0/vamoose_0.23.0_Linux_arm64.tar.gz"
      sha256 "4c399a09961d3cfb6eb33db07f5fd6e71bdcd09550c432103286262631c23bbd"
    end
    on_intel do
      url "https://github.com/dcadolph/vamoose/releases/download/v0.23.0/vamoose_0.23.0_Linux_x86_64.tar.gz"
      sha256 "9d9c0a435c5aecca89f594174018b6e1c4fedcb7a1d175125e5ca4692077d6a8"
    end
  end

  def install
    bin.install "vamoose"
  end

  test do
    system "#{bin}/vamoose", "version"
  end
end
