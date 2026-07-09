class Vamoose < Formula
  desc "Calendar workflow engine for time off, approvals, and quick actions"
  homepage "https://github.com/dcadolph/vamoose"
  version "0.6.0"
  license "BUSL-1.1"

  on_macos do
    on_arm do
      url "https://github.com/dcadolph/vamoose/releases/download/v0.6.0/vamoose_0.6.0_Darwin_arm64.tar.gz"
      sha256 "a1864ec526fe4621e43e0794caf6679e06d171f1e6eb3c3353db44954e431cb8"
    end
    on_intel do
      url "https://github.com/dcadolph/vamoose/releases/download/v0.6.0/vamoose_0.6.0_Darwin_x86_64.tar.gz"
      sha256 "5a1b332fc7b9de64e2d90585f1f3c824bc9f54d252ce13af940b44b15180e2d0"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/dcadolph/vamoose/releases/download/v0.6.0/vamoose_0.6.0_Linux_arm64.tar.gz"
      sha256 "fccea44c24a8839157da8a43de742d1a3136010253afc6348784851872efffc9"
    end
    on_intel do
      url "https://github.com/dcadolph/vamoose/releases/download/v0.6.0/vamoose_0.6.0_Linux_x86_64.tar.gz"
      sha256 "c5a5ce3d3f932ca4db261adf86182f4b85d07b0473134df042a64966a5d60512"
    end
  end

  def install
    bin.install "vamoose"
  end

  test do
    system "#{bin}/vamoose", "version"
  end
end
