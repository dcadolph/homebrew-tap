class Vamoose < Formula
  desc "Calendar workflow engine for time off, approvals, and quick actions"
  homepage "https://vamoose.dev"
  version "0.28.0"
  license "BUSL-1.1"

  on_macos do
    on_arm do
      url "https://github.com/dcadolph/vamoose/releases/download/v0.28.0/vamoose_0.28.0_Darwin_arm64.tar.gz"
      sha256 "d918022b36517fe28180a5a24870422ddea06ce95e0af525ddb9ea9b61bbf952"
    end
    on_intel do
      url "https://github.com/dcadolph/vamoose/releases/download/v0.28.0/vamoose_0.28.0_Darwin_x86_64.tar.gz"
      sha256 "7c0564483f512957164516b04cd29b0fd633f6c07f4ca224efb65c6afa6a770b"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/dcadolph/vamoose/releases/download/v0.28.0/vamoose_0.28.0_Linux_arm64.tar.gz"
      sha256 "5ed8cf8ca3277c076de03febd2dcbca1a2b50e9c7d007f9a15fc27b32938b8e5"
    end
    on_intel do
      url "https://github.com/dcadolph/vamoose/releases/download/v0.28.0/vamoose_0.28.0_Linux_x86_64.tar.gz"
      sha256 "b1841a2e7e94f72f2e3241ef26eec59b7c765bed63c7e4716cc3ec9a5c779a5e"
    end
  end

  def install
    bin.install "vamoose"
  end

  test do
    system "#{bin}/vamoose", "version"
  end
end
