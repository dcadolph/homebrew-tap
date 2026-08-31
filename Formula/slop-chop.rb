class SlopChop < Formula
  desc "Strip AI writing tells so text reads like a human wrote it"
  homepage "https://github.com/dcadolph/slop-chop"
  version "0.30.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/dcadolph/slop-chop/releases/download/v0.30.0/slop-chop_0.30.0_Darwin_arm64.tar.gz"
      sha256 "9683189b553cc98d30de8bd17f35ad647359082f2fa252095b20e7cab742fe56"
    end
    on_intel do
      url "https://github.com/dcadolph/slop-chop/releases/download/v0.30.0/slop-chop_0.30.0_Darwin_x86_64.tar.gz"
      sha256 "84d3865bbf8584501728accd66cdec6fbf46531c5ea21f4f00437db622c5ac3b"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/dcadolph/slop-chop/releases/download/v0.30.0/slop-chop_0.30.0_Linux_arm64.tar.gz"
      sha256 "3c9e24db9c6420099c7f631edca7ea1ae25b241096163d1f1f434ef8ccb64abd"
    end
    on_intel do
      url "https://github.com/dcadolph/slop-chop/releases/download/v0.30.0/slop-chop_0.30.0_Linux_x86_64.tar.gz"
      sha256 "dc62803359daa802d77067ebe4b2e786879a7cda2023b7896c20627bd5b74e8a"
    end
  end

  def install
    bin.install "slop-chop"
  end

  test do
    system "#{bin}/slop-chop", "--version"
  end
end
