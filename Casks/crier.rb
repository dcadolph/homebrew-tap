cask "crier" do
  version "0.2.0"
  sha256 "122396c5cd89b95fb07407425d7b8ef58f4a0064dd9367c35ac3429d7e737ba2"

  url "https://github.com/dcadolph/crier/releases/download/v#{version}/crier_v#{version}_macos_universal.zip"
  name "Crier"
  desc "Quiet news ticker for the menu bar"
  homepage "https://github.com/dcadolph/crier"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on macos: :sonoma

  app "Crier.app"

  uninstall quit: "com.dcadolph.crier"

  zap trash: "~/Library/Preferences/com.dcadolph.crier.plist"
end
