cask "calen" do
  version "0.1.21"
  sha256 "f7642ddb1dc8ef4a0c9c9beec17c3dd90d497bb5d28d53331cd6c2aef84b3140"

  url "https://github.com/oyeong011/Planit/releases/download/v0.1.21/Calen-0.1.21-universal.zip"
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
