class Vamoose < Formula
  desc "Calendar workflow engine for time off, approvals, and quick actions"
  homepage "https://github.com/dcadolph/vamoose"
  version "0.12.0"
  license "BUSL-1.1"

  on_macos do
    on_arm do
      url "https://github.com/dcadolph/vamoose/releases/download/v0.12.0/vamoose_0.12.0_Darwin_arm64.tar.gz"
      sha256 "763b1cdaab107153562738a108acefbdae30fdf67db15a53ab499c1a185a18ea"
    end
    on_intel do
      url "https://github.com/dcadolph/vamoose/releases/download/v0.12.0/vamoose_0.12.0_Darwin_x86_64.tar.gz"
      sha256 "a974385f426851d5b9535a94a2a55225f0e66ff95c66851930dd8bdf9b9c5dad"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/dcadolph/vamoose/releases/download/v0.12.0/vamoose_0.12.0_Linux_arm64.tar.gz"
      sha256 "98805b0ad9a22b61667b3ff3eef1de341a15eee5f7e1cd133a3d513b350436a4"
    end
    on_intel do
      url "https://github.com/dcadolph/vamoose/releases/download/v0.12.0/vamoose_0.12.0_Linux_x86_64.tar.gz"
      sha256 "2f2bf6ead5f654224bc24e9652d098ca418e1882b22712f4e0aa715a2ca194ce"
    end
  end

  def install
    bin.install "vamoose"
  end

  test do
    system "#{bin}/vamoose", "version"
  end
end
