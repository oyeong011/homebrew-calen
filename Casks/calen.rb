cask "calen" do
  version "0.1.7"
  sha256 "7620dbd568a75dee0c2171827d4d7a0ffd5615135443a5df5f0f8fc666031ef0"

  url "https://github.com/oyeong011/Planit/releases/download/v0.1.7/Calen-0.1.7-universal.zip"
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
