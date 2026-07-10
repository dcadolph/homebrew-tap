class Vamoose < Formula
  desc "Calendar workflow engine for time off, approvals, and quick actions"
  homepage "https://github.com/dcadolph/vamoose"
  version "0.8.0"
  license "BUSL-1.1"

  on_macos do
    on_arm do
      url "https://github.com/dcadolph/vamoose/releases/download/v0.8.0/vamoose_0.8.0_Darwin_arm64.tar.gz"
      sha256 "c1898e34a7aff982f5e1a3d085de87cf6221fed536d83362f426f25821892d86"
    end
    on_intel do
      url "https://github.com/dcadolph/vamoose/releases/download/v0.8.0/vamoose_0.8.0_Darwin_x86_64.tar.gz"
      sha256 "3813927f6334eea1910972168b516a571ae0a371fd33e056b419cb3e59e0b2ce"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/dcadolph/vamoose/releases/download/v0.8.0/vamoose_0.8.0_Linux_arm64.tar.gz"
      sha256 "2becdcc4a3ca04ef0e91604bf24b23b89a37a0d56860738ae6ec1b796268b2cb"
    end
    on_intel do
      url "https://github.com/dcadolph/vamoose/releases/download/v0.8.0/vamoose_0.8.0_Linux_x86_64.tar.gz"
      sha256 "0b5de5c0ac4fbb91e60c1d750f2906ef2100433e52ba3bc7e7f07ed141456952"
    end
  end

  def install
    bin.install "vamoose"
  end

  test do
    system "#{bin}/vamoose", "version"
  end
end
