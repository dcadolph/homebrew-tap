cask "moorings" do
  version "1.5.2"
  sha256 "5e8c69712b86cec09e3a7148463f3583f7bf6252ab2d7452f00613e5466cc17f"

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
