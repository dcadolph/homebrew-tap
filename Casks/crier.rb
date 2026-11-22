cask "crier" do
  version "0.3.2"
  sha256 "2df00d9349fa33a3e1c466f8a77ad5927298c89a17a83f773237f0c7546376c3"

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
