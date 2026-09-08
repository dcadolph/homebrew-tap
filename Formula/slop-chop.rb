class SlopChop < Formula
  desc "Strip AI writing tells so text reads like a human wrote it"
  homepage "https://github.com/dcadolph/slop-chop"
  version "0.39.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/dcadolph/slop-chop/releases/download/v0.39.0/slop-chop_0.39.0_Darwin_arm64.tar.gz"
      sha256 "b7ba7db6cae764462f15f09c841183a3050a4bdbb0778e03c32445f1ac5ff4ad"
    end
    on_intel do
      url "https://github.com/dcadolph/slop-chop/releases/download/v0.39.0/slop-chop_0.39.0_Darwin_x86_64.tar.gz"
      sha256 "e724720d6ade5169542a7f1c763b6d44b4fcf8eff9f0ef6d4c1fae31f5cf4dd4"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/dcadolph/slop-chop/releases/download/v0.39.0/slop-chop_0.39.0_Linux_arm64.tar.gz"
      sha256 "8cbf335f93c36fe1732533debfc1506c356e29840f39379dff1b1265fd404e49"
    end
    on_intel do
      url "https://github.com/dcadolph/slop-chop/releases/download/v0.39.0/slop-chop_0.39.0_Linux_x86_64.tar.gz"
      sha256 "6e78f45535d1a3fbbc60ce04dbce970282fc02f62722faa619c564e2b5e15bed"
    end
  end

  def install
    bin.install "slop-chop"
  end

  test do
    system "#{bin}/slop-chop", "--version"
  end
end
