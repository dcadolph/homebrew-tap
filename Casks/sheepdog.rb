cask "sheepdog" do
  version "1.13.1"
  sha256 "97b01b79976cab4e0d1d03bacd1fea727d21c14742bb857f40d96d77316743a0"

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
