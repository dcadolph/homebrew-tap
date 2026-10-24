cask "moorings" do
  version "1.5.0"
  sha256 "aea78a11f918db5376342db173e0ba7f36e6e0d723ca9b130dcda2a71ab53477"

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
