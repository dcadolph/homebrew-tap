class SlopChop < Formula
  desc "Strip AI writing tells so text reads like a human wrote it"
  homepage "https://github.com/dcadolph/slop-chop"
  version "0.39.2"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/dcadolph/slop-chop/releases/download/v0.39.2/slop-chop_0.39.2_Darwin_arm64.tar.gz"
      sha256 "97a80bb6083937d58e7566df6587ea7fa4921eb9298e36972e0ba5cdd3527927"
    end
    on_intel do
      url "https://github.com/dcadolph/slop-chop/releases/download/v0.39.2/slop-chop_0.39.2_Darwin_x86_64.tar.gz"
      sha256 "3ccb0c9432bc7bec2e5bad87e0d9128db0a69ad9116160885c1955893a971632"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/dcadolph/slop-chop/releases/download/v0.39.2/slop-chop_0.39.2_Linux_arm64.tar.gz"
      sha256 "19260f8092e8935fffdb357c941838a94a83a2f1c361d2ea4ab963f6ac69da62"
    end
    on_intel do
      url "https://github.com/dcadolph/slop-chop/releases/download/v0.39.2/slop-chop_0.39.2_Linux_x86_64.tar.gz"
      sha256 "5e921a01b916fa2c2c188c1168d04a2f7e7a7997df76127df1c31521eeaa4b02"
    end
  end

  def install
    bin.install "slop-chop"
  end

  test do
    system "#{bin}/slop-chop", "--version"
  end
end
