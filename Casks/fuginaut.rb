cask "fuginaut" do
  version "0.9.0"
  sha256 "7c084f95cc7aa9e9d23ad82f3f0f6d91793a0e44e1fd33eb53c5ba2a9c77863e"

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
