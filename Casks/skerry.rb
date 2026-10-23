cask "skerry" do
  version "0.24.1"
  sha256 "80253d5fd1351c3134a5f77dab51464507addddbb9b928eb1cf5b438beb41722"

  url "https://github.com/dcadolph/skerry/releases/download/v#{version}/Skerry-macOS-v#{version}.zip"
  name "Skerry"
  desc "Local-first Markdown notes with per-note encryption"
  homepage "https://skerrynotes.com/"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on macos: :sonoma

  app "Skerry.app"

  zap trash: [
    "~/Library/Containers/com.dcadolph.skerry",
    "~/Library/Containers/com.dcadolph.skerry.share",
    "~/Library/Containers/com.dcadolph.skerry.widgets",
    "~/Library/Group Containers/U7L4P2YHWJ.com.dcadolph.skerry",
  ]
end
