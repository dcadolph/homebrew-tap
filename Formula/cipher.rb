class Cipher < Formula
  desc "Programmatic SOPS for Go. Encrypt, decrypt, rotate, walk, edit, and audit secret files."
  homepage "https://github.com/dcadolph/cipher"
  version "0.2.2"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/dcadolph/cipher/releases/download/v0.2.2/cipher_0.2.2_Darwin_arm64.tar.gz"
      sha256 "82b1a06dc42d665b6d796a6ed748f0533e3d0b75e5fd9bef732a791b3d16780e"
    end
    on_intel do
      url "https://github.com/dcadolph/cipher/releases/download/v0.2.2/cipher_0.2.2_Darwin_x86_64.tar.gz"
      sha256 "8f0c434b6f79351f053a67a11a9d6fd04fc8347b69e329dac8367fc48b71b6b8"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/dcadolph/cipher/releases/download/v0.2.2/cipher_0.2.2_Linux_arm64.tar.gz"
      sha256 "aadcb0c14b451e795b761678e3eae1288729fbfaa4cb023cea6fc5d4b83012d0"
    end
    on_intel do
      url "https://github.com/dcadolph/cipher/releases/download/v0.2.2/cipher_0.2.2_Linux_x86_64.tar.gz"
      sha256 "acccc494bcbdd1e84a831ff86d32d9d17680d3f105174c8f2952d5fdcb50d315"
    end
  end

  def install
    bin.install "cipher"
  end

  test do
    system "#{bin}/cipher", "version"
  end
end
