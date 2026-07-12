class SlopChop < Formula
  desc "Strip AI writing tells so text reads like a human wrote it"
  homepage "https://github.com/dcadolph/slop-chop"
  version "0.15.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/dcadolph/slop-chop/releases/download/v0.15.0/slop-chop_0.15.0_Darwin_arm64.tar.gz"
      sha256 "6201393a12025853706ec9aabbe8a4bfc81276af3b3e0157591a205f0d960532"
    end
    on_intel do
      url "https://github.com/dcadolph/slop-chop/releases/download/v0.15.0/slop-chop_0.15.0_Darwin_x86_64.tar.gz"
      sha256 "3c53dc2dcee871e3abb82611d767c612dba80da2b6352caca123d6bb96e0b0e7"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/dcadolph/slop-chop/releases/download/v0.15.0/slop-chop_0.15.0_Linux_arm64.tar.gz"
      sha256 "61cd16025c79606886bd1a1e6391581c4914ecf6fde1671d73649a57d4d04c67"
    end
    on_intel do
      url "https://github.com/dcadolph/slop-chop/releases/download/v0.15.0/slop-chop_0.15.0_Linux_x86_64.tar.gz"
      sha256 "4dabf20793c8f790406e8ad4dfbb01259813192ca5915c6db50c2e3e1a7aa42e"
    end
  end

  def install
    bin.install "slop-chop"
  end

  test do
    system "#{bin}/slop-chop", "--version"
  end
end
