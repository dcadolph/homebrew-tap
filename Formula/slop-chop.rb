class SlopChop < Formula
  desc "Strip AI writing tells so text reads like a human wrote it"
  homepage "https://github.com/dcadolph/slop-chop"
  version "0.30.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/dcadolph/slop-chop/releases/download/v0.30.0/slop-chop_0.30.0_Darwin_arm64.tar.gz"
      sha256 "de52ae52bd4719ef50c2d8213b4f829330c9898f423f2dc8a3abd983608f6dcc"
    end
    on_intel do
      url "https://github.com/dcadolph/slop-chop/releases/download/v0.30.0/slop-chop_0.30.0_Darwin_x86_64.tar.gz"
      sha256 "b3f07cd797bdd9171db1a82ae39f63330207f047020da4906a95fcc49ef52ff4"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/dcadolph/slop-chop/releases/download/v0.30.0/slop-chop_0.30.0_Linux_arm64.tar.gz"
      sha256 "07ebbcda9c408165bd7e55e3f8be8723e54953e2ff5e3ab4d7ed7083d96f0514"
    end
    on_intel do
      url "https://github.com/dcadolph/slop-chop/releases/download/v0.30.0/slop-chop_0.30.0_Linux_x86_64.tar.gz"
      sha256 "a0ff07389389d6b4fdfcede765fb0b8fd4dea94ec3bea5e21fcb3c9742a517c9"
    end
  end

  def install
    bin.install "slop-chop"
  end

  test do
    system "#{bin}/slop-chop", "--version"
  end
end
