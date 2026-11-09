cask "fuginaut" do
  version "0.8.3"
  sha256 "982c53384158e52362fa0b13f13d7ea35e46a35d85ff323a53fe4ed7009d2a66"

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
