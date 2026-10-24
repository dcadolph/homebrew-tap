cask "moorings" do
  version "1.5.3"
  sha256 "ff95e3f371b8a2ecd90fd2bfb8c748dcf1a3ad8c8c86cfdeaf89c13045485aee"

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
