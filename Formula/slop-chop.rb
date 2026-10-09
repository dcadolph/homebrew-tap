class SlopChop < Formula
  desc "Strip AI writing tells so text reads like a human wrote it"
  homepage "https://github.com/dcadolph/slop-chop"
  version "0.44.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/dcadolph/slop-chop/releases/download/v0.44.0/slop-chop_0.44.0_Darwin_arm64.tar.gz"
      sha256 "15a2d9627db3626e64a83adee84f6e4c8e0829da4eec9de03a406b2d1c525770"
    end
    on_intel do
      url "https://github.com/dcadolph/slop-chop/releases/download/v0.44.0/slop-chop_0.44.0_Darwin_x86_64.tar.gz"
      sha256 "a63ef071caae7f537aea393caef391aa05ac360d5d34eefa69776e612d31519d"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/dcadolph/slop-chop/releases/download/v0.44.0/slop-chop_0.44.0_Linux_arm64.tar.gz"
      sha256 "a037dc85c2e96954558f5310460511b59095309efe2fd553bb664f4507d8e63b"
    end
    on_intel do
      url "https://github.com/dcadolph/slop-chop/releases/download/v0.44.0/slop-chop_0.44.0_Linux_x86_64.tar.gz"
      sha256 "fdc298a768ef18031c8ce5f4aa4c44dbfd063c9089476dedc103f0231ec902b7"
    end
  end

  def install
    bin.install "slop-chop"
  end

  test do
    system "#{bin}/slop-chop", "--version"
  end
end
