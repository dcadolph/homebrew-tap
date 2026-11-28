cask "crier" do
  version "0.4.0"
  sha256 "baed1629bd0fe92f7697d995153e9fd0a6bef3626eb0fd91b2fa6fdf50689c9a"

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
