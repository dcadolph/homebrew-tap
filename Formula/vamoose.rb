class Vamoose < Formula
  desc "Calendar workflow engine for time off, approvals, and quick actions"
  homepage "https://vamoose.dev"
  version "0.31.0"
  license "BUSL-1.1"

  on_macos do
    on_arm do
      url "https://github.com/dcadolph/vamoose/releases/download/v0.31.0/vamoose_0.31.0_Darwin_arm64.tar.gz"
      sha256 "5349359bac572cf989a2a242508f16a894909d8d5af623d4fd67d2476d7a1ee2"
    end
    on_intel do
      url "https://github.com/dcadolph/vamoose/releases/download/v0.31.0/vamoose_0.31.0_Darwin_x86_64.tar.gz"
      sha256 "9100c4ace5bc61f522b68c6ccba545364f7f8b78b27059dbfdcc2b9a79a923e2"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/dcadolph/vamoose/releases/download/v0.31.0/vamoose_0.31.0_Linux_arm64.tar.gz"
      sha256 "aebc76d5f3201cdc4d4d6776b2638497e992c62d6ddc4254d145d9befcca19de"
    end
    on_intel do
      url "https://github.com/dcadolph/vamoose/releases/download/v0.31.0/vamoose_0.31.0_Linux_x86_64.tar.gz"
      sha256 "c543b4c0d800ece537044ac4724b910471aeacdfeaf8f0f0b70a69d2ff1b9c4d"
    end
  end

  def install
    bin.install "vamoose"
  end

  test do
    system "#{bin}/vamoose", "version"
  end
end
