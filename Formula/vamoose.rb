class Vamoose < Formula
  desc "Calendar workflow engine for time off, approvals, and quick actions"
  homepage "https://github.com/dcadolph/vamoose"
  version "0.4.3"
  license "BUSL-1.1"

  on_macos do
    on_arm do
      url "https://github.com/dcadolph/vamoose/releases/download/v0.4.3/vamoose_0.4.3_Darwin_arm64.tar.gz"
      sha256 "dbeafd3767279a646b2752405bc5b8042f3bb0b1c1421be3fc613c979f11bb99"
    end
    on_intel do
      url "https://github.com/dcadolph/vamoose/releases/download/v0.4.3/vamoose_0.4.3_Darwin_x86_64.tar.gz"
      sha256 "67e8b1cb49e0b2666cd0ec22653661c70d4e0ea64413d2a27ae985715941477f"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/dcadolph/vamoose/releases/download/v0.4.3/vamoose_0.4.3_Linux_arm64.tar.gz"
      sha256 "0867b501fbcff5044afbdcc382bc03d8395e4f0e159505989bda50e75fe0aaa2"
    end
    on_intel do
      url "https://github.com/dcadolph/vamoose/releases/download/v0.4.3/vamoose_0.4.3_Linux_x86_64.tar.gz"
      sha256 "ff99017f334121b5c1241aefbcaa07d7dfc4c97502d25c4db3b2cc47b983c8e9"
    end
  end

  def install
    bin.install "vamoose"
  end

  test do
    system "#{bin}/vamoose", "version"
  end
end
