cask "sheepdog" do
  version "1.14.1"
  sha256 "c8039011112f74215070fe4d8d999d79676f743345b28107f74c5c61a6a53a82"

  url "https://github.com/dcadolph/sheepdog/releases/download/v#{version}/sheepdog_v#{version}_macos_universal.zip"
  name "Sheepdog"
  desc "Meeting alarm that barks"
  homepage "https://github.com/dcadolph/sheepdog"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on macos: :sonoma

  app "Sheepdog.app"

  zap trash: "~/Library/Preferences/com.dcadolph.sheepdog.plist"
end
