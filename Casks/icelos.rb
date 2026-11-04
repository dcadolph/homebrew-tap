cask "icelos" do
  version "0.3.0"
  sha256 "bb53e458b82af7e020d4324e2e0ca782c2e29358cbaf859852ffa8beffb58f7c"

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
