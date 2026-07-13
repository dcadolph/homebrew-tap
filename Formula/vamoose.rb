class Vamoose < Formula
  desc "Calendar workflow engine for time off, approvals, and quick actions"
  homepage "https://vamoose.dev"
  version "0.34.0"
  license "BUSL-1.1"

  on_macos do
    on_arm do
      url "https://github.com/dcadolph/vamoose/releases/download/v0.34.0/vamoose_0.34.0_Darwin_arm64.tar.gz"
      sha256 "d01d64ba7c0fc4a75d868788ddab6765bd1961b9ffcc6d157554736fe62af3b2"
    end
    on_intel do
      url "https://github.com/dcadolph/vamoose/releases/download/v0.34.0/vamoose_0.34.0_Darwin_x86_64.tar.gz"
      sha256 "db1e182658432b3019467aa8ef51e9b16693755fc337008abe8036995d84c949"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/dcadolph/vamoose/releases/download/v0.34.0/vamoose_0.34.0_Linux_arm64.tar.gz"
      sha256 "78958eff2743f2851ea54df981fe78268e877ba715cb9e43c2e0cacde856fb4d"
    end
    on_intel do
      url "https://github.com/dcadolph/vamoose/releases/download/v0.34.0/vamoose_0.34.0_Linux_x86_64.tar.gz"
      sha256 "3be2f358fd12dc81e2fe21447b2ec7780a3fdb35774819cd6f3f6fe59bc01af1"
    end
  end

  def install
    bin.install "vamoose"
  end

  test do
    system "#{bin}/vamoose", "version"
  end
end
