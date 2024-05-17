# typed: true
# frozen_string_literal: true

cask "wins" do
  version "1.66"
  sha256 :no_check

  url "https://f005.backblazeb2.com/file/winsWebsite/Wins-latest.dmg"
  name "Wins"
  desc "Brand new window manager for macOS"
  homepage "https://wins.cool/"

  livecheck do
    url :url
    strategy :header_match
  end

  app "Wins.app"

  zap trash: [
    "~/Library/Application Support/cools.wins.main",
    "~/Library/Application Support/Wins",
    "~/Library/Caches/cools.wins.main",
    "~/Library/Caches/cools.wins.main",
    "~/Library/Containers/WinsHelper",
    "~/Library/HTTPStorages/cools.wins.main",
    "~/Library/Preferences/com.tinynudge.pomello.plist",
  ]
end
