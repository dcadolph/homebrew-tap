class SlopChop < Formula
  desc "Strip AI writing tells so text reads like a human wrote it"
  homepage "https://github.com/dcadolph/slop-chop"
  version "0.14.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/dcadolph/slop-chop/releases/download/v0.14.0/slop-chop_0.14.0_Darwin_arm64.tar.gz"
      sha256 "fdefd57009739c820084731203e701bbba4081fddf411b0c5d1e83e9d6733c14"
    end
    on_intel do
      url "https://github.com/dcadolph/slop-chop/releases/download/v0.14.0/slop-chop_0.14.0_Darwin_x86_64.tar.gz"
      sha256 "b32f18afb2cc3605b988da8f86f6c55f4806c62f13c7dc85e834a56e261e61c6"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/dcadolph/slop-chop/releases/download/v0.14.0/slop-chop_0.14.0_Linux_arm64.tar.gz"
      sha256 "d257c6558ec2b66a77995823bf409c4bfbc1410868c13713c2d9fe6adedbb84c"
    end
    on_intel do
      url "https://github.com/dcadolph/slop-chop/releases/download/v0.14.0/slop-chop_0.14.0_Linux_x86_64.tar.gz"
      sha256 "a5e41cf07b928d8ac1f23da5c6f716efa91bf75de4d4c10bec31153df9b78607"
    end
  end

  def install
    bin.install "slop-chop"
  end

  test do
    system "#{bin}/slop-chop", "--version"
  end
end
