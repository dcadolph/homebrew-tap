class SlopChop < Formula
  desc "Strip AI writing tells so text reads like a human wrote it"
  homepage "https://github.com/dcadolph/slop-chop"
  version "0.30.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/dcadolph/slop-chop/releases/download/v0.30.0/slop-chop_0.30.0_Darwin_arm64.tar.gz"
      sha256 "a10a13a3b1dc93f7ee2e7d8ea7225c7c2e3968d98a3d9d2be69ff944360dd202"
    end
    on_intel do
      url "https://github.com/dcadolph/slop-chop/releases/download/v0.30.0/slop-chop_0.30.0_Darwin_x86_64.tar.gz"
      sha256 "0113909082105f181f46e3084f83602087e7a0d5cfbd099960ae05674d4e347a"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/dcadolph/slop-chop/releases/download/v0.30.0/slop-chop_0.30.0_Linux_arm64.tar.gz"
      sha256 "0d51a4befe9a3917225b03d5b909548fe0d62f2048c95cfc79a6c06899abd0a9"
    end
    on_intel do
      url "https://github.com/dcadolph/slop-chop/releases/download/v0.30.0/slop-chop_0.30.0_Linux_x86_64.tar.gz"
      sha256 "c7031073cd946e1cab5db9b396d29ffd6cf1686fddf321e6491ff8e9927d1fe3"
    end
  end

  def install
    bin.install "slop-chop"
  end

  test do
    system "#{bin}/slop-chop", "--version"
  end
end
