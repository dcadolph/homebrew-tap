class SlopChop < Formula
  desc "Strip AI writing tells so text reads like a human wrote it"
  homepage "https://github.com/dcadolph/slop-chop"
  version "0.41.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/dcadolph/slop-chop/releases/download/v0.41.0/slop-chop_0.41.0_Darwin_arm64.tar.gz"
      sha256 "bfc9c874e3e4233d3c53296362d75afaed9b3a9f14824dc60bbe4c2ce505512f"
    end
    on_intel do
      url "https://github.com/dcadolph/slop-chop/releases/download/v0.41.0/slop-chop_0.41.0_Darwin_x86_64.tar.gz"
      sha256 "679cede654b17e827d68e191e67d4b8a767ff4333db937c54959c6d0c41c0b33"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/dcadolph/slop-chop/releases/download/v0.41.0/slop-chop_0.41.0_Linux_arm64.tar.gz"
      sha256 "d933a11d2fe7177e14e26f04f965bdef8b549b338688b05c19b1e9d227921a38"
    end
    on_intel do
      url "https://github.com/dcadolph/slop-chop/releases/download/v0.41.0/slop-chop_0.41.0_Linux_x86_64.tar.gz"
      sha256 "66e519b54cc29bbc4059f14a2219fd8465829c4b9e6a78b23edd573c53d2ec15"
    end
  end

  def install
    bin.install "slop-chop"
  end

  test do
    system "#{bin}/slop-chop", "--version"
  end
end
