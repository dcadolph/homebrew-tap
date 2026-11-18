cask "crier" do
  version "0.1.0"
  sha256 "b9530434e838d854ead8d6e2ca788f0c38c0acaa8d13d922b7e79625af5ca5c5"

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
