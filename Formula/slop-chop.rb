class SlopChop < Formula
  desc "Strip AI writing tells so text reads like a human wrote it"
  homepage "https://github.com/dcadolph/slop-chop"
  version "0.21.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/dcadolph/slop-chop/releases/download/v0.21.0/slop-chop_0.21.0_Darwin_arm64.tar.gz"
      sha256 "770b411475bedc4f856e1e2c32550096b087df58185250a463500279f70967ce"
    end
    on_intel do
      url "https://github.com/dcadolph/slop-chop/releases/download/v0.21.0/slop-chop_0.21.0_Darwin_x86_64.tar.gz"
      sha256 "d294de82e38ef5473eea872872ff166bc5729b77ca3bbce9c45b67773c7d40e5"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/dcadolph/slop-chop/releases/download/v0.21.0/slop-chop_0.21.0_Linux_arm64.tar.gz"
      sha256 "e64e2ad241f7ed2d12076fa5f35b20dce8bf81bd5e2cb71bd45bee390a4b7939"
    end
    on_intel do
      url "https://github.com/dcadolph/slop-chop/releases/download/v0.21.0/slop-chop_0.21.0_Linux_x86_64.tar.gz"
      sha256 "201320cce91fc5cf5bf35d54370e035c42dd663e9887888ac3603accd784a606"
    end
  end

  def install
    bin.install "slop-chop"
  end

  test do
    system "#{bin}/slop-chop", "--version"
  end
end
