cask "moorings" do
  version "1.18.0"
  sha256 "396e01b8f4bd6b25ad08773e4d3fec3070fd4a8d237ba66ff75357481e1883dc"

  url "https://github.com/dcadolph/moorings/releases/download/v#{version}/moorings_v#{version}_macos_universal.zip"
  name "Moorings"
  desc "Snap windows with a key or a drag, and pin apps to ultrawide edges"
  homepage "https://github.com/dcadolph/moorings"

  livecheck do
    url :url
    strategy :github_latest
  end

  auto_updates true

  depends_on macos: :sequoia

  app "Moorings.app"

  zap trash: "~/Library/Preferences/com.dcadolph.moorings.plist"
end
