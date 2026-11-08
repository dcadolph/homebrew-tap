cask "fuginaut" do
  version "0.8.1"
  sha256 "d21cc74d64429c0a09bfa89cd01f19ed729901576ea934c98377d9ea1a01e1f0"

  url "https://github.com/dcadolph/fuginaut/releases/download/v#{version}/fuginaut_v#{version}_macos_universal.zip"
  name "Fuginaut"
  desc "Second clock at the center of the menu bar"
  homepage "https://github.com/dcadolph/fuginaut"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on macos: :sonoma

  app "Fuginaut.app"

  uninstall quit: "com.dcadolph.fuginaut"

  zap trash: "~/Library/Preferences/com.dcadolph.fuginaut.plist"
end
