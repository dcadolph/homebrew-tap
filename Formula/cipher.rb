class Cipher < Formula
  desc "Programmatic SOPS for Go. Encrypt, decrypt, rotate, walk, edit, and audit secret files."
  homepage "https://github.com/dcadolph/cipher"
  version "0.2.3"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/dcadolph/cipher/releases/download/v0.2.3/cipher_0.2.3_Darwin_arm64.tar.gz"
      sha256 "eb4d2c6d73e1264ef0b2f379d219b5d4aa07297ce1e8a7895b9ea02a8aac7f51"
    end
    on_intel do
      url "https://github.com/dcadolph/cipher/releases/download/v0.2.3/cipher_0.2.3_Darwin_x86_64.tar.gz"
      sha256 "f01e03bd5694210e19842ddd5cc90c0691d535e340428d1f1d3c548f8e40bea5"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/dcadolph/cipher/releases/download/v0.2.3/cipher_0.2.3_Linux_arm64.tar.gz"
      sha256 "8f4a2b9d6e2f93afcbb7b57dc88943239e6b4c8b5a70015af7d71382e366ab12"
    end
    on_intel do
      url "https://github.com/dcadolph/cipher/releases/download/v0.2.3/cipher_0.2.3_Linux_x86_64.tar.gz"
      sha256 "f2f5c0399f39788c1ebb042fe86a67c80fad3a55a3bfdbb3c64b82dae3444c59"
    end
  end

  def install
    bin.install "cipher"
  end

  test do
    system "#{bin}/cipher", "version"
  end
end
