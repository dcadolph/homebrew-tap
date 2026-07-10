class SlopChop < Formula
  desc "Strip AI writing tells so text reads like a human wrote it"
  homepage "https://github.com/dcadolph/slop-chop"
  version "0.10.3"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/dcadolph/slop-chop/releases/download/v0.10.3/slop-chop_0.10.3_Darwin_arm64.tar.gz"
      sha256 "fb116f3f4ccdfe195f0eeac7c6bce2d2bfe402197a92e0859c62d0b6d25802c2"
    end
    on_intel do
      url "https://github.com/dcadolph/slop-chop/releases/download/v0.10.3/slop-chop_0.10.3_Darwin_x86_64.tar.gz"
      sha256 "94773e3e7f5c0dc6c3486c2ebc5e650a5664de104ba37fe8a789f060518bc969"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/dcadolph/slop-chop/releases/download/v0.10.3/slop-chop_0.10.3_Linux_arm64.tar.gz"
      sha256 "beb94b33efd617726e7057a671c2723990469ca4c34d0c8ce447c78df6769bba"
    end
    on_intel do
      url "https://github.com/dcadolph/slop-chop/releases/download/v0.10.3/slop-chop_0.10.3_Linux_x86_64.tar.gz"
      sha256 "f9b469d3edd5f07d1ee64be5fbf438ef440d3a41cb9724ab7adffd649a7d5fc8"
    end
  end

  def install
    bin.install "slop-chop"
  end

  test do
    system "#{bin}/slop-chop", "--version"
  end
end
