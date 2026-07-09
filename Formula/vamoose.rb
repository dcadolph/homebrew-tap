class Vamoose < Formula
  desc "Calendar workflow engine for time off, approvals, and quick actions"
  homepage "https://github.com/dcadolph/vamoose"
  version "0.4.2"
  license "BUSL-1.1"

  on_macos do
    on_arm do
      url "https://github.com/dcadolph/vamoose/releases/download/v0.4.2/vamoose_0.4.2_Darwin_arm64.tar.gz"
      sha256 "af3f161b00d3143fa009bb8bb77bb1db3f2e691c279a22fed95eddc31f9479af"
    end
    on_intel do
      url "https://github.com/dcadolph/vamoose/releases/download/v0.4.2/vamoose_0.4.2_Darwin_x86_64.tar.gz"
      sha256 "88e0cdc8f797d8638e5b56856396fcad704a3c9189dcac9de65d9efa4823c238"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/dcadolph/vamoose/releases/download/v0.4.2/vamoose_0.4.2_Linux_arm64.tar.gz"
      sha256 "4e681b12adca2e67b84932ffcf32a099e2276d4f59a864b93fcccda7aec979d4"
    end
    on_intel do
      url "https://github.com/dcadolph/vamoose/releases/download/v0.4.2/vamoose_0.4.2_Linux_x86_64.tar.gz"
      sha256 "8c76da71475572024ab72af58d6a003f7b5f7180eaa4d5ba2e95c3686bddfaf8"
    end
  end

  def install
    bin.install "vamoose"
  end

  test do
    system "#{bin}/vamoose", "version"
  end
end
