class Cipher < Formula
  desc "Programmatic SOPS for Go. Encrypt, decrypt, rotate, walk, edit, and audit secret files."
  homepage "https://github.com/dcadolph/cipher"
  version "0.2.1"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/dcadolph/cipher/releases/download/v0.2.1/cipher_0.2.1_Darwin_arm64.tar.gz"
      sha256 "8f2b4d8b3fafd8fcba3d325d5c4efd91bd81c8de88c3e9a12168d7d9fa3235cd"
    end
    on_intel do
      url "https://github.com/dcadolph/cipher/releases/download/v0.2.1/cipher_0.2.1_Darwin_x86_64.tar.gz"
      sha256 "01746989168cbb5613fb6446e4a34f203f171b992a1741433e3dc2bdab8c8d1a"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/dcadolph/cipher/releases/download/v0.2.1/cipher_0.2.1_Linux_arm64.tar.gz"
      sha256 "a6a930922e7fedcd0aca802d0d345e99c1e1213a805753532b4568405530d971"
    end
    on_intel do
      url "https://github.com/dcadolph/cipher/releases/download/v0.2.1/cipher_0.2.1_Linux_x86_64.tar.gz"
      sha256 "c0fc0898c8cfe4431a024564036a6700543fca813700e33f8af5c2c90d35a453"
    end
  end

  def install
    bin.install "cipher"
  end

  test do
    system "#{bin}/cipher", "version"
  end
end
