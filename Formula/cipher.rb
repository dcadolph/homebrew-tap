class Cipher < Formula
  desc "Programmatic SOPS for Go. Encrypt, decrypt, rotate, walk, edit, and audit secret files."
  homepage "https://github.com/dcadolph/cipher"
  version "0.1.1"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/dcadolph/cipher/releases/download/v0.1.1/cipher_0.1.1_Darwin_arm64.tar.gz"
      sha256 "06087cefa4ff7490fbba503c900f08386bf4ad8bbc13693d31fd777831ab354f"
    end
    on_intel do
      url "https://github.com/dcadolph/cipher/releases/download/v0.1.1/cipher_0.1.1_Darwin_x86_64.tar.gz"
      sha256 "8396c3f9930f3ea28da01934dd368d89313cae092b1974bd1dd1bc84eb0b1310"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/dcadolph/cipher/releases/download/v0.1.1/cipher_0.1.1_Linux_arm64.tar.gz"
      sha256 "28eb5a746489b426844130f8106dbaa0ee7fd2927fded5dcb8a6b658c02a0025"
    end
    on_intel do
      url "https://github.com/dcadolph/cipher/releases/download/v0.1.1/cipher_0.1.1_Linux_x86_64.tar.gz"
      sha256 "996c6845bfbe4385c3fba9a63ced1367e7aa626db44648212ff21c0b8b1ef002"
    end
  end

  def install
    bin.install "cipher"
  end

  test do
    system "#{bin}/cipher", "version"
  end
end
