class Moorings < Formula
  desc "Pin apps to the edges of an ultrawide Mac screen with Hammerspoon"
  homepage "https://github.com/dcadolph/moorings"
  url "https://github.com/dcadolph/moorings/archive/refs/tags/v1.1.0.tar.gz"
  sha256 "c6e6b6c8091bfa49e34180aa9268f5bbf1ad1ceb5b772583b7e405c2fe72ccd2"
  license "Apache-2.0"

  depends_on :macos

  def install
    pkgshare.install Dir["*.lua", "*.svg", "*.html"], "README.md", "FEATURES.md", "LICENSE"
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
