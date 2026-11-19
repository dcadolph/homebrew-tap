cask "crier" do
  version "0.3.1"
  sha256 "62a9e4942ecdba3b63e0d002898fbb4e76c06ea5db4deceffa048e51d1ac2b1c"

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
