cask "moorings" do
  version "1.23.1"
  sha256 "f2c0c5c07bab1a7616a947fe5cf0b60ab5ce07872d4ba8fcf29e5575a40764f0"

  url "https://github.com/dcadolph/moorings/releases/download/v#{version}/moorings_v#{version}_macos_universal.zip"
  name "Moorings"
  desc "Snap windows with a key or a drag, and pin apps to ultrawide edges"
  homepage "https://github.com/dcadolph/moorings"

  livecheck do
    url :url
    strategy :github_latest
  end

  auto_updates true

  depends_on macos: :sequoia

  app "Moorings.app"

  zap trash: "~/Library/Preferences/com.dcadolph.moorings.plist"
end
