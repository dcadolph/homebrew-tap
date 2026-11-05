cask "fuginaut" do
  version "0.3.0"
  sha256 "7a74c93eb5a5ae901fc948c7b45433dc1dfe2e7aba45ce65582a62ff76eb5f2c"

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
