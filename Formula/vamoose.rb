class Vamoose < Formula
  desc "Calendar workflow engine for time off, approvals, and quick actions"
  homepage "https://github.com/dcadolph/vamoose"
  version "0.24.0"
  license "BUSL-1.1"

  on_macos do
    on_arm do
      url "https://github.com/dcadolph/vamoose/releases/download/v0.24.0/vamoose_0.24.0_Darwin_arm64.tar.gz"
      sha256 "034614da4340e22b981acdc595f8f2531e62de3913d81b402e9e2efb5ee5844a"
    end
    on_intel do
      url "https://github.com/dcadolph/vamoose/releases/download/v0.24.0/vamoose_0.24.0_Darwin_x86_64.tar.gz"
      sha256 "c8b440e66c86fae235a1669fd3b1466b9d35fe8b0d2d3bdc80365437fd33b377"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/dcadolph/vamoose/releases/download/v0.24.0/vamoose_0.24.0_Linux_arm64.tar.gz"
      sha256 "b4ef033032bce5ddb03ec74288b64a3c936ed9218a10aaa84b41d0632f450785"
    end
    on_intel do
      url "https://github.com/dcadolph/vamoose/releases/download/v0.24.0/vamoose_0.24.0_Linux_x86_64.tar.gz"
      sha256 "c0d709171e16aeb6a51f2c699949f96415b1dff15871138f3bafcc9c737ce3c6"
    end
  end

  def install
    bin.install "vamoose"
  end

  test do
    system "#{bin}/vamoose", "version"
  end
end
