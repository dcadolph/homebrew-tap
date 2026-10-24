cask "moorings" do
  version "1.5.1"
  sha256 "39bd1201968477587b6f74b365cb66c9c85b3bef2d0562a9a1d602c36f461dbb"

  url "https://github.com/dcadolph/moorings/releases/download/v#{version}/moorings_v#{version}_macos_universal.zip"
  name "Moorings"
  desc "Anchor apps to the edges of an ultrawide display"
  homepage "https://github.com/dcadolph/moorings"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on macos: :sonoma

  app "Moorings.app"

  zap trash: "~/Library/Preferences/com.dcadolph.moorings.plist"
end
