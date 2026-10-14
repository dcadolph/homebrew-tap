class SlopChop < Formula
  desc "Strip AI writing tells so text reads like a human wrote it"
  homepage "https://github.com/dcadolph/slop-chop"
  version "0.47.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/dcadolph/slop-chop/releases/download/v0.47.0/slop-chop_0.47.0_Darwin_arm64.tar.gz"
      sha256 "66e071756a20700878c4f89e585a1d112bb5a8dabf476d4a7e37a723b0c87e2e"
    end
    on_intel do
      url "https://github.com/dcadolph/slop-chop/releases/download/v0.47.0/slop-chop_0.47.0_Darwin_x86_64.tar.gz"
      sha256 "57e6e3435b26774af1ff9ba8ff250bbe5fc159a128ec14eee8b98a3fdb887e8c"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/dcadolph/slop-chop/releases/download/v0.47.0/slop-chop_0.47.0_Linux_arm64.tar.gz"
      sha256 "6d12c398b71f885f567a98abcfff89526484dba52ae73d4ad1c54f8a71ca6311"
    end
    on_intel do
      url "https://github.com/dcadolph/slop-chop/releases/download/v0.47.0/slop-chop_0.47.0_Linux_x86_64.tar.gz"
      sha256 "a479cc8f43714df5ab0b6b7932aa2a2a5d8227cad0071f03d4f43e3c71bb9ef3"
    end
  end

  def install
    bin.install "slop-chop"
  end

  test do
    system "#{bin}/slop-chop", "--version"
  end
end
