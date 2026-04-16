cask "calen" do
  version "0.1.17"
  sha256 "51503a96c9785a1cfd10de32c431fcd395751dbfd1cf407e367e345004718257"

  url "https://github.com/oyeong011/Planit/releases/download/v0.1.17/Calen-0.1.17-universal.zip"
  name "Calen"
  desc "AI-powered macOS menu bar calendar with Google Calendar integration"
  homepage "https://github.com/oyeong011/Planit"

  depends_on macos: ">= :sonoma"

  app "Calen.app"

  zap trash: [
    "~/Library/Application Support/Calen",
    "~/Library/Caches/com.oy.planit",
    "~/Library/Preferences/com.oy.planit.plist",
    "~/Library/Saved Application State/com.oy.planit.savedState",
  ]
end
