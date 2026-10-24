cask "moorings" do
  version "1.5.4"
  sha256 "c27150a0d2f50aed0b1b3837e06646bb976c19cafff66169f76b2493686424cc"

  url "https://github.com/dcadolph/moorings/releases/download/v#{version}/moorings_v#{version}_macos_universal.zip"
  name "Moorings"
  desc "Anchor apps to the edges of an ultrawide display"
  homepage "https://github.com/dcadolph/moorings"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on macos: :sonoma

  app "Moorings.app"

  zap trash: "~/Library/Preferences/com.dcadolph.moorings.plist"
end
