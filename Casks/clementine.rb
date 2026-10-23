cask "clementine" do
  version "1.1.1"
  sha256 "b1cc482aa568f831e60dbed873ca6008f2ee8e64a1a7436f3137daac79faa49f"

  url "https://downloads.getclementine.app/Clementine-#{version}.dmg"
  name "Clementine"
  desc "Convert, compress and edit files by dragging them onto a wheel of formats"
  homepage "https://getclementine.app/"

  depends_on macos: ">= :sequoia"

  app "Clementine.app"

  zap trash: [
    "~/Library/Application Support/Clementine",
    "~/Library/Caches/net.lesfm.clementine.direct",
    "~/Library/HTTPStorages/net.lesfm.clementine.direct",
    "~/Library/Preferences/net.lesfm.clementine.direct.plist",
  ]
end
