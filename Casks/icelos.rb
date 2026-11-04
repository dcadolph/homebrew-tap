cask "icelos" do
  version "0.2.0"
  sha256 "d4e7066bc417271454b43d56bb62ec815b935d826900004693ec79ef76a55b12"

  url "https://github.com/dcadolph/icelos/releases/download/v#{version}/Icelos_v#{version}_macos_universal.zip"
  name "Icelos"
  desc "Media converter"
  homepage "https://github.com/dcadolph/icelos"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on macos: :sonoma

  app "Icelos.app"

  zap trash: [
    "~/Library/Application Support/icelos",
    "~/Library/Preferences/com.dcadolph.icelos.plist",
  ]
end
