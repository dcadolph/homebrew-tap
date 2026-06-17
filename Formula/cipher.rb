class Cipher < Formula
  desc "Programmatic SOPS for Go. Encrypt, decrypt, rotate, walk, edit, and audit secret files."
  homepage "https://github.com/dcadolph/cipher"
  version "0.1.1"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/dcadolph/cipher/releases/download/v0.1.1/cipher_0.1.1_Darwin_arm64.tar.gz"
      sha256 "60810ee7f3bdff0d46aa4cd5cc886fce5ad38d2d243be277ff1c67e09a5bf06b"
    end
    on_intel do
      url "https://github.com/dcadolph/cipher/releases/download/v0.1.1/cipher_0.1.1_Darwin_x86_64.tar.gz"
      sha256 "75bea7da7af60caaecec8aa16b280f388da921971ce660630fe50c64f9d30e7c"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/dcadolph/cipher/releases/download/v0.1.1/cipher_0.1.1_Linux_arm64.tar.gz"
      sha256 "a872db6a7aa12ab1aca0b41a3391c79cbea9e6be282513d7eaa83749d2aa7a13"
    end
    on_intel do
      url "https://github.com/dcadolph/cipher/releases/download/v0.1.1/cipher_0.1.1_Linux_x86_64.tar.gz"
      sha256 "d29820035c7f5d9938b6f07d51bd18daaea27a28ebf15b0e475064007f17cb34"
    end
  end

  def install
    bin.install "cipher"
  end

  test do
    system "#{bin}/cipher", "version"
  end
end
