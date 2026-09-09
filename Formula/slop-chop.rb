class SlopChop < Formula
  desc "Strip AI writing tells so text reads like a human wrote it"
  homepage "https://github.com/dcadolph/slop-chop"
  version "0.39.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/dcadolph/slop-chop/releases/download/v0.39.1/slop-chop_0.39.1_Darwin_arm64.tar.gz"
      sha256 "0a9e29c0612c787103bfea9393968597bb1b62b9da8a8c969d962a5f7ff18db7"
    end
    on_intel do
      url "https://github.com/dcadolph/slop-chop/releases/download/v0.39.1/slop-chop_0.39.1_Darwin_x86_64.tar.gz"
      sha256 "ddfbdd6fc66fe369dce0e4c47002e945c4f8c7b152dcab38156bd918294017ff"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/dcadolph/slop-chop/releases/download/v0.39.1/slop-chop_0.39.1_Linux_arm64.tar.gz"
      sha256 "af700c73da9ef4de237125258bf342899251b2e6c80732695dcddee1ce14d32e"
    end
    on_intel do
      url "https://github.com/dcadolph/slop-chop/releases/download/v0.39.1/slop-chop_0.39.1_Linux_x86_64.tar.gz"
      sha256 "a1eb58dea9a60af3eb21503026e13160f17b7c653b05b99b7a3edf78d6f526b5"
    end
  end

  def install
    bin.install "slop-chop"
  end

  test do
    system "#{bin}/slop-chop", "--version"
  end
end
