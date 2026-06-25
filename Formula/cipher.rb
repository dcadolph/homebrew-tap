class Cipher < Formula
  desc "Programmatic SOPS for Go. Encrypt, decrypt, rotate, walk, edit, and audit secret files."
  homepage "https://github.com/dcadolph/cipher"
  version "0.2.0"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/dcadolph/cipher/releases/download/v0.2.0/cipher_0.2.0_Darwin_arm64.tar.gz"
      sha256 "db2c29e621a41bd781ffdd838fffa2ee889569e820abb92c7b25fd5260254b47"
    end
    on_intel do
      url "https://github.com/dcadolph/cipher/releases/download/v0.2.0/cipher_0.2.0_Darwin_x86_64.tar.gz"
      sha256 "7bfb42fb0813c7439b3ab4b2b2187f6327558d1f4250488dc27ba1575e7dc024"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/dcadolph/cipher/releases/download/v0.2.0/cipher_0.2.0_Linux_arm64.tar.gz"
      sha256 "18ed0b477bf6fb66b2f23d265a2a2d51a41a64d9b955011f4bc63863de51fe3d"
    end
    on_intel do
      url "https://github.com/dcadolph/cipher/releases/download/v0.2.0/cipher_0.2.0_Linux_x86_64.tar.gz"
      sha256 "b83fa619c696f771f8ea9e9627d2019dcedf8d5ed814d4f2e223e5ee88af051c"
    end
  end

  def install
    bin.install "cipher"
  end

  test do
    system "#{bin}/cipher", "version"
  end
end
