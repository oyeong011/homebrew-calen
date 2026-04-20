cask "calen" do
  version "0.1.24"
  sha256 "e0ab4672343d77607bf8797cb3d8ca3064d5389ac967397c68c86185aca42ed4"

  url "https://github.com/oyeong011/Planit/releases/download/v0.1.24/Calen-0.1.24-universal.zip"
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
