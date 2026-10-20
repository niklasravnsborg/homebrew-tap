cask "hidenotch" do
  version :latest
  sha256 :no_check

  url "https://github.com/niklasravnsborg/HideNotch/releases/latest/download/HideNotch.dmg"
  name "HideNotch"
  desc "Paints the menu bar black to hide the notch"
  homepage "https://github.com/niklasravnsborg/HideNotch"

  auto_updates true
  depends_on macos: :tahoe

  app "HideNotch.app"

  zap trash: [
    "~/Library/Caches/com.niklasravnsborg.hidenotch",
    "~/Library/HTTPStorages/com.niklasravnsborg.hidenotch",
    "~/Library/Preferences/com.niklasravnsborg.hidenotch.plist",
  ]
end
