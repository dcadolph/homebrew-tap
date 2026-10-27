cask "moorings" do
  version "1.12.3"
  sha256 "5023a941dcbd821efa8e873c51e8be437f67c48f85d10927c53feb00e844b37d"

  url "https://github.com/dcadolph/moorings/releases/download/v#{version}/moorings_v#{version}_macos_universal.zip"
  name "Moorings"
  desc "Snap windows with a key or a drag, and pin apps to ultrawide edges"
  homepage "https://github.com/dcadolph/moorings"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on macos: :sonoma

  app "Moorings.app"

  zap trash: "~/Library/Preferences/com.dcadolph.moorings.plist"
end
