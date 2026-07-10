class SlopChop < Formula
  desc "Strip AI writing tells so text reads like a human wrote it"
  homepage "https://github.com/dcadolph/slop-chop"
  version "0.10.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/dcadolph/slop-chop/releases/download/v0.10.1/slop-chop_0.10.1_Darwin_arm64.tar.gz"
      sha256 "31ea2d4125de5f775988d4a2722f7bd4e89878d4177a99ef6ddc34e9c69d1e76"
    end
    on_intel do
      url "https://github.com/dcadolph/slop-chop/releases/download/v0.10.1/slop-chop_0.10.1_Darwin_x86_64.tar.gz"
      sha256 "0daae5e54de90e23ef660d6dcfc119b902f4c0e5fe35d49a94f35b6aeae025b3"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/dcadolph/slop-chop/releases/download/v0.10.1/slop-chop_0.10.1_Linux_arm64.tar.gz"
      sha256 "d5540e612ee76bf3da457f22fcd204a4203c96e0cfe1a9636ae861ca8028e2fc"
    end
    on_intel do
      url "https://github.com/dcadolph/slop-chop/releases/download/v0.10.1/slop-chop_0.10.1_Linux_x86_64.tar.gz"
      sha256 "06b5d82e6b53ff2d19da9f8dd46100df2f4f99c516e5bd5a00c26bb2cc187bd1"
    end
  end

  def install
    bin.install "slop-chop"
  end

  test do
    system "#{bin}/slop-chop", "--version"
  end
end
