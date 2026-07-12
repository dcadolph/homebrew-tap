class SlopChop < Formula
  desc "Strip AI writing tells so text reads like a human wrote it"
  homepage "https://github.com/dcadolph/slop-chop"
  version "0.21.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/dcadolph/slop-chop/releases/download/v0.21.1/slop-chop_0.21.1_Darwin_arm64.tar.gz"
      sha256 "34de4180dd667fa89f027f238045af9db82db18c13340146267fa5cde9c3665e"
    end
    on_intel do
      url "https://github.com/dcadolph/slop-chop/releases/download/v0.21.1/slop-chop_0.21.1_Darwin_x86_64.tar.gz"
      sha256 "0c19c015af5593815f4382b6f27bf1e674a25edf56a3ef60fadb2ca990bebe72"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/dcadolph/slop-chop/releases/download/v0.21.1/slop-chop_0.21.1_Linux_arm64.tar.gz"
      sha256 "50b7fb3e81b66b773a1e28d7219c203a475434897ab1d58e003dfc5c07e1398a"
    end
    on_intel do
      url "https://github.com/dcadolph/slop-chop/releases/download/v0.21.1/slop-chop_0.21.1_Linux_x86_64.tar.gz"
      sha256 "64a597039a12673df99528841fde6b69488b67c97d932bce7dd0aef480a37a28"
    end
  end

  def install
    bin.install "slop-chop"
  end

  test do
    system "#{bin}/slop-chop", "--version"
  end
end
