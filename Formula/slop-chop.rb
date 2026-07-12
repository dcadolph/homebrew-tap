class SlopChop < Formula
  desc "Strip AI writing tells so text reads like a human wrote it"
  homepage "https://github.com/dcadolph/slop-chop"
  version "0.22.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/dcadolph/slop-chop/releases/download/v0.22.0/slop-chop_0.22.0_Darwin_arm64.tar.gz"
      sha256 "467c308fcef0136595b7f3727fa49e2b007282737e9e754156eab247f78398c1"
    end
    on_intel do
      url "https://github.com/dcadolph/slop-chop/releases/download/v0.22.0/slop-chop_0.22.0_Darwin_x86_64.tar.gz"
      sha256 "c5e24bec3b82a1b42ed4bab2898e23ae1f6b0835a1799de7180c924ed01f923e"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/dcadolph/slop-chop/releases/download/v0.22.0/slop-chop_0.22.0_Linux_arm64.tar.gz"
      sha256 "4e46d9e404e236ddae728f6879594b2ea7321c1a35f77c473578fcbebe65da31"
    end
    on_intel do
      url "https://github.com/dcadolph/slop-chop/releases/download/v0.22.0/slop-chop_0.22.0_Linux_x86_64.tar.gz"
      sha256 "a3e49a0468ccc72d30f3f8e86459f3cfec2e56e698d0d752e10f0759b9cb890b"
    end
  end

  def install
    bin.install "slop-chop"
  end

  test do
    system "#{bin}/slop-chop", "--version"
  end
end
