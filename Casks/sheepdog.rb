cask "sheepdog" do
  version "1.4.4"
  sha256 "87332d4fa114d4d0e729ff88c20fbfa8f3478602f5c1c6a8274fd06e1133fe0e"

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
