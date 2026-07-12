class SlopChop < Formula
  desc "Strip AI writing tells so text reads like a human wrote it"
  homepage "https://github.com/dcadolph/slop-chop"
  version "0.16.2"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/dcadolph/slop-chop/releases/download/v0.16.2/slop-chop_0.16.2_Darwin_arm64.tar.gz"
      sha256 "7fb8fc8f1be9c386f220471187e4a1dfda06e10f6c0a14d319c583f8bdaf64e5"
    end
    on_intel do
      url "https://github.com/dcadolph/slop-chop/releases/download/v0.16.2/slop-chop_0.16.2_Darwin_x86_64.tar.gz"
      sha256 "3132dcf8bcdcbb138f35a5524f88c04e0d5c4f80fbc074a213d6de00d4781490"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/dcadolph/slop-chop/releases/download/v0.16.2/slop-chop_0.16.2_Linux_arm64.tar.gz"
      sha256 "987e47519676845670d59987613ca7e5f9990b8e843e204d28fc79773b59611d"
    end
    on_intel do
      url "https://github.com/dcadolph/slop-chop/releases/download/v0.16.2/slop-chop_0.16.2_Linux_x86_64.tar.gz"
      sha256 "760bac9f84f0f47441ca376330ba4c3c8bdfd9766f473df73220707afc924c85"
    end
  end

  def install
    bin.install "slop-chop"
  end

  test do
    system "#{bin}/slop-chop", "--version"
  end
end
