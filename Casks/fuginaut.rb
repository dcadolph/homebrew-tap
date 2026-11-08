cask "fuginaut" do
  version "0.8.2"
  sha256 "0719073c75b6a049e097b64ef59bb4f115fdca93828973775cd5df8cab33b2e4"

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
