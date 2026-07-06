class Cipher < Formula
  desc "Programmatic SOPS for Go. Encrypt, decrypt, rotate, walk, edit, and audit secret files."
  homepage "https://github.com/dcadolph/cipher"
  version "0.2.4"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/dcadolph/cipher/releases/download/v0.2.4/cipher_0.2.4_Darwin_arm64.tar.gz"
      sha256 "31ebbf0db6edf275810cf3b3e8b6a5cd39751781da13ce97dc527dbab1767d9b"
    end
    on_intel do
      url "https://github.com/dcadolph/cipher/releases/download/v0.2.4/cipher_0.2.4_Darwin_x86_64.tar.gz"
      sha256 "44563c1ecf08820707fda0dc053f769263129a3f537c30f7efcf54527e45f6e1"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/dcadolph/cipher/releases/download/v0.2.4/cipher_0.2.4_Linux_arm64.tar.gz"
      sha256 "2300337bd208ab4e819ac4683f087ea4dd7bf51dda28d68f462f23cd4fe50531"
    end
    on_intel do
      url "https://github.com/dcadolph/cipher/releases/download/v0.2.4/cipher_0.2.4_Linux_x86_64.tar.gz"
      sha256 "087ad3393882f7e9ed4a7f4e906e413dc8e7ba11a8b13b8cb906171f870debd5"
    end
  end

  def install
    bin.install "cipher"
  end

  test do
    system "#{bin}/cipher", "version"
  end
end
