class Vamoose < Formula
  desc "Calendar workflow engine for time off, approvals, and quick actions"
  homepage "https://vamoose.dev"
  version "0.30.0"
  license "BUSL-1.1"

  on_macos do
    on_arm do
      url "https://github.com/dcadolph/vamoose/releases/download/v0.30.0/vamoose_0.30.0_Darwin_arm64.tar.gz"
      sha256 "447a27371e4892c565eeeb0352a387268f8dcddbcb8b62dedd967d1262ee41bc"
    end
    on_intel do
      url "https://github.com/dcadolph/vamoose/releases/download/v0.30.0/vamoose_0.30.0_Darwin_x86_64.tar.gz"
      sha256 "9ee03cd46ce3fa878545d1efe8ceaf5748c5dfc3cb835eda8b6a10226fca7bd4"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/dcadolph/vamoose/releases/download/v0.30.0/vamoose_0.30.0_Linux_arm64.tar.gz"
      sha256 "6ec4b168cfae6f98202507b7f8ceb870dd607a7834ad57e3259ad193ad052d4c"
    end
    on_intel do
      url "https://github.com/dcadolph/vamoose/releases/download/v0.30.0/vamoose_0.30.0_Linux_x86_64.tar.gz"
      sha256 "2d81bf12a61617a622e0920f78b90e2f4fe917dfe0724aa301f63cb627a255e5"
    end
  end

  def install
    bin.install "vamoose"
  end

  test do
    system "#{bin}/vamoose", "version"
  end
end
