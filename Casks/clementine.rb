cask "clementine" do
  version "1.1"
  sha256 "1bb061e07f366db5c70fd5ef12843bbac9fb70441d733ff6e33fb2084aea48e4"

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
