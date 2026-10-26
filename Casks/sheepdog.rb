cask "sheepdog" do
  version "1.8.0"
  sha256 "c9b7465cc76bed6b7d4297793e0145ffd5959936ee1fed836151552231d81635"

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
