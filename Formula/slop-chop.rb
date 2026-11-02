class SlopChop < Formula
  desc "Strip AI writing tells so text reads like a human wrote it"
  homepage "https://github.com/dcadolph/slop-chop"
  version "0.55.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/dcadolph/slop-chop/releases/download/v0.55.1/slop-chop_0.55.1_Darwin_arm64.tar.gz"
      sha256 "cebefd79af28aac1e00729912af0b5bb4296cb089952a2d7c109add590369cd1"
    end
    on_intel do
      url "https://github.com/dcadolph/slop-chop/releases/download/v0.55.1/slop-chop_0.55.1_Darwin_x86_64.tar.gz"
      sha256 "09433bc5b9f93d9d9b7a9d33ccb273c94e0cde41b61caf953f2c9d7f83e41554"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/dcadolph/slop-chop/releases/download/v0.55.1/slop-chop_0.55.1_Linux_arm64.tar.gz"
      sha256 "3564a1c85b98b7d7fc87aff99bd516d379a1ddf166b3a3b9766b7a6dc28dbb8d"
    end
    on_intel do
      url "https://github.com/dcadolph/slop-chop/releases/download/v0.55.1/slop-chop_0.55.1_Linux_x86_64.tar.gz"
      sha256 "838a51788665de408d26284aad3b52516ad76d4338f4e3f06f98c2a9c561c967"
    end
  end

  def install
    bin.install "slop-chop"
  end

  test do
    system "#{bin}/slop-chop", "--version"
  end
end
