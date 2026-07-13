class SlopChop < Formula
  desc "Strip AI writing tells so text reads like a human wrote it"
  homepage "https://github.com/dcadolph/slop-chop"
  version "0.26.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/dcadolph/slop-chop/releases/download/v0.26.1/slop-chop_0.26.1_Darwin_arm64.tar.gz"
      sha256 "12ba1077de2dddfde6d218ce6d89b7796e22f283ea2fc8313529bc6f22076fd2"
    end
    on_intel do
      url "https://github.com/dcadolph/slop-chop/releases/download/v0.26.1/slop-chop_0.26.1_Darwin_x86_64.tar.gz"
      sha256 "4f0971c134d0434e22d99c62a0d908917d4dcf606be8d5a5aba22656e60107c3"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/dcadolph/slop-chop/releases/download/v0.26.1/slop-chop_0.26.1_Linux_arm64.tar.gz"
      sha256 "af0d4d916b504a0efa2297bb3c9950f9a05a2a12220e734e3d12cce6c613b572"
    end
    on_intel do
      url "https://github.com/dcadolph/slop-chop/releases/download/v0.26.1/slop-chop_0.26.1_Linux_x86_64.tar.gz"
      sha256 "1f79fe351751614cb7bd5ba81fd1facb1bdb50f8ba37554814d7b22505cd36bc"
    end
  end

  def install
    bin.install "slop-chop"
  end

  test do
    system "#{bin}/slop-chop", "--version"
  end
end
