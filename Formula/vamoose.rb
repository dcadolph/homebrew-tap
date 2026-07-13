class Vamoose < Formula
  desc "Calendar workflow engine for time off, approvals, and quick actions"
  homepage "https://vamoose.dev"
  version "0.29.0"
  license "BUSL-1.1"

  on_macos do
    on_arm do
      url "https://github.com/dcadolph/vamoose/releases/download/v0.29.0/vamoose_0.29.0_Darwin_arm64.tar.gz"
      sha256 "4f236fffb9668625572967fef60c4b35094390b6902f84113e6ba68ba2170ff6"
    end
    on_intel do
      url "https://github.com/dcadolph/vamoose/releases/download/v0.29.0/vamoose_0.29.0_Darwin_x86_64.tar.gz"
      sha256 "982f3a47647296bcb0a4850bc12bb823519f880327ecc0facbe4fee92f84fa45"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/dcadolph/vamoose/releases/download/v0.29.0/vamoose_0.29.0_Linux_arm64.tar.gz"
      sha256 "d0682e96fb3b69f066fd10c3cd4948e0fb65bf7ba4a8d364e22de237bd51e817"
    end
    on_intel do
      url "https://github.com/dcadolph/vamoose/releases/download/v0.29.0/vamoose_0.29.0_Linux_x86_64.tar.gz"
      sha256 "10a255045955db166a84500c02d9b72cb8f13cbd1e35b1e43f08cb1aefb6f35c"
    end
  end

  def install
    bin.install "vamoose"
  end

  test do
    system "#{bin}/vamoose", "version"
  end
end
