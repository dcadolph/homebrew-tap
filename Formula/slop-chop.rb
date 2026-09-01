class SlopChop < Formula
  desc "Strip AI writing tells so text reads like a human wrote it"
  homepage "https://github.com/dcadolph/slop-chop"
  version "0.33.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/dcadolph/slop-chop/releases/download/v0.33.0/slop-chop_0.33.0_Darwin_arm64.tar.gz"
      sha256 "148016d8ee009257a0ee681558402e7a1af52c251ebf48f86cf115e9bf089deb"
    end
    on_intel do
      url "https://github.com/dcadolph/slop-chop/releases/download/v0.33.0/slop-chop_0.33.0_Darwin_x86_64.tar.gz"
      sha256 "fa24061579ea3673f4aed70e49bd40afd2fe361b91d5c3401892536abc7e8251"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/dcadolph/slop-chop/releases/download/v0.33.0/slop-chop_0.33.0_Linux_arm64.tar.gz"
      sha256 "cd666fa04fec5833fdfa5f6c584a1805fbbc3731792d4ef09e744c1ddaf62663"
    end
    on_intel do
      url "https://github.com/dcadolph/slop-chop/releases/download/v0.33.0/slop-chop_0.33.0_Linux_x86_64.tar.gz"
      sha256 "ae2738f696a8d5baa3ce28215df9d3e51568e55a70171a7cc8c60cf85a690e3e"
    end
  end

  def install
    bin.install "slop-chop"
  end

  test do
    system "#{bin}/slop-chop", "--version"
  end
end
