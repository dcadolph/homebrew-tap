cask "moorings" do
  version "1.12.2"
  sha256 "d860ead2ee69bae30efdf082b32432176a64a8c5725d41ddbc1a3c5037a17017"

  url "https://github.com/dcadolph/moorings/releases/download/v#{version}/moorings_v#{version}_macos_universal.zip"
  name "Moorings"
  desc "Snap windows with a key or a drag, and pin apps to ultrawide edges"
  homepage "https://github.com/dcadolph/moorings"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on macos: :sonoma

  app "Moorings.app"

  zap trash: "~/Library/Preferences/com.dcadolph.moorings.plist"
end
