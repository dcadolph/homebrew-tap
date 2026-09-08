class SlopChop < Formula
  desc "Strip AI writing tells so text reads like a human wrote it"
  homepage "https://github.com/dcadolph/slop-chop"
  version "0.38.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/dcadolph/slop-chop/releases/download/v0.38.1/slop-chop_0.38.1_Darwin_arm64.tar.gz"
      sha256 "d2cc727f062c6f26df46f91d57fdc6d167f8e577eaa4e97c96010fc2b652fdce"
    end
    on_intel do
      url "https://github.com/dcadolph/slop-chop/releases/download/v0.38.1/slop-chop_0.38.1_Darwin_x86_64.tar.gz"
      sha256 "05cd9126991c7a4ce51ecde5c880097f3deead6e8d9c562fc86b13b161f1bb5b"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/dcadolph/slop-chop/releases/download/v0.38.1/slop-chop_0.38.1_Linux_arm64.tar.gz"
      sha256 "e384df492bbcf00f4b86b9fbba75c21c525916d3765cc71cd644b1a24f992de0"
    end
    on_intel do
      url "https://github.com/dcadolph/slop-chop/releases/download/v0.38.1/slop-chop_0.38.1_Linux_x86_64.tar.gz"
      sha256 "f66c156aeb2ef4c445cc4d83b6ca81fe98ebef5f15fce0cac07f7dab717df2c4"
    end
  end

  def install
    bin.install "slop-chop"
  end

  test do
    system "#{bin}/slop-chop", "--version"
  end
end
