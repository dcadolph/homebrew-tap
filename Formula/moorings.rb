class Moorings < Formula
  desc "Pin apps to the edges of an ultrawide Mac screen with Hammerspoon"
  homepage "https://github.com/dcadolph/moorings"
  url "https://github.com/dcadolph/moorings/archive/refs/tags/v1.4.0.tar.gz"
  sha256 "6e50f94247a83925b2d8268df307f4e94d1a3ecc5b6a2cd29853e0878b979717"
  license "Apache-2.0"

  depends_on :macos

  def install
    pkgshare.install Dir["*.lua", "*.svg", "*.html", "*.png"], "README.md", "FEATURES.md", "LICENSE"
    bin.install "moorings"
  end

  def caveats
    <<~EOS
      moorings runs inside Hammerspoon. Install it, then wire moorings in:
        brew install --cask hammerspoon
        moorings setup
      moorings doctor checks the setup. Run moorings uninstall before brew uninstall.
    EOS
  end

  test do
    assert_equal version.to_s, shell_output("#{bin}/moorings version").strip
    assert_path_exists pkgshare/"anchors.lua"
  end
end
