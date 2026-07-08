class Cipher < Formula
  desc "Programmatic SOPS for Go. Encrypt, decrypt, rotate, walk, edit, and audit secret files."
  homepage "https://github.com/dcadolph/cipher"
  version "0.3.0"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/dcadolph/cipher/releases/download/v0.3.0/cipher_0.3.0_Darwin_arm64.tar.gz"
      sha256 "0545f1b416779e481c94cc7cded4feb40a94af9dbf76e2f61b98858c711baf1f"
    end
    on_intel do
      url "https://github.com/dcadolph/cipher/releases/download/v0.3.0/cipher_0.3.0_Darwin_x86_64.tar.gz"
      sha256 "9477161fc392fd6ab5ef2a832322fbd6756e738ba641e7806c66053cb455e603"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/dcadolph/cipher/releases/download/v0.3.0/cipher_0.3.0_Linux_arm64.tar.gz"
      sha256 "df1c65ec531148f73922134007920959c68ba8ebc8697410f253d7b6f5fe6496"
    end
    on_intel do
      url "https://github.com/dcadolph/cipher/releases/download/v0.3.0/cipher_0.3.0_Linux_x86_64.tar.gz"
      sha256 "c9e3a066497e58d368af7da612f158e45cf190848ba022b1a169442dbc99d5e0"
    end
  end

  def install
    bin.install "cipher"
  end

  test do
    system "#{bin}/cipher", "version"
  end
end
