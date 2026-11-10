cask "moorings" do
  version "1.21.0"
  sha256 "5b4dbbb05a4ce6d721367fd9c46f98a1923c39373a9be32bc6305e6225737c76"

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
