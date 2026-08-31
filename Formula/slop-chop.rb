class SlopChop < Formula
  desc "Strip AI writing tells so text reads like a human wrote it"
  homepage "https://github.com/dcadolph/slop-chop"
  version "0.31.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/dcadolph/slop-chop/releases/download/v0.31.0/slop-chop_0.31.0_Darwin_arm64.tar.gz"
      sha256 "4c24b0135d8936abff3065b81423d95025c6a7d013a570667754325f1ecde1ba"
    end
    on_intel do
      url "https://github.com/dcadolph/slop-chop/releases/download/v0.31.0/slop-chop_0.31.0_Darwin_x86_64.tar.gz"
      sha256 "f896f22a752fc7ec2e83235b06303de4eaefc6d4215a35c030044b999a1ec39b"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/dcadolph/slop-chop/releases/download/v0.31.0/slop-chop_0.31.0_Linux_arm64.tar.gz"
      sha256 "44b5e846666de08c182cc86ee6ede9851257ddb080de426e8d59f797c8023bd2"
    end
    on_intel do
      url "https://github.com/dcadolph/slop-chop/releases/download/v0.31.0/slop-chop_0.31.0_Linux_x86_64.tar.gz"
      sha256 "805656fc7d79d9f05d747541a0efd1d5ce6905aa0c0a6a2055382513403c17f9"
    end
  end

  def install
    bin.install "slop-chop"
  end

  test do
    system "#{bin}/slop-chop", "--version"
  end
end
