cask "sheepdog" do
  version "1.12.0"
  sha256 "2ea82928f4b2e8652348bac1c1e1efb70d239e52d9a8ac5424a7805df3ace9f3"

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
