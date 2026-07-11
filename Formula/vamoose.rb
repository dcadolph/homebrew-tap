class Vamoose < Formula
  desc "Calendar workflow engine for time off, approvals, and quick actions"
  homepage "https://github.com/dcadolph/vamoose"
  version "0.25.1"
  license "BUSL-1.1"

  on_macos do
    on_arm do
      url "https://github.com/dcadolph/vamoose/releases/download/v0.25.1/vamoose_0.25.1_Darwin_arm64.tar.gz"
      sha256 "122eff486826f95397c78f533b36dcaa351f62b51041ca667088ccc1d5effa7e"
    end
    on_intel do
      url "https://github.com/dcadolph/vamoose/releases/download/v0.25.1/vamoose_0.25.1_Darwin_x86_64.tar.gz"
      sha256 "09570be34caec11032d3e2ff547f4359351ecc2e5114ec2f1d2969135c4846cf"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/dcadolph/vamoose/releases/download/v0.25.1/vamoose_0.25.1_Linux_arm64.tar.gz"
      sha256 "4a68e378203fd4daad0101cbb3aa24a3dd3541b544235af85116d21fadf3ba8b"
    end
    on_intel do
      url "https://github.com/dcadolph/vamoose/releases/download/v0.25.1/vamoose_0.25.1_Linux_x86_64.tar.gz"
      sha256 "a307b775be1aa999a944a7215d182b132d5b514b04ea624008dba07eefd64971"
    end
  end

  def install
    bin.install "vamoose"
  end

  test do
    system "#{bin}/vamoose", "version"
  end
end
