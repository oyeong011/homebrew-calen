cask "calen" do
  version "0.1.16"
  sha256 "dd3625a4b0af0f883da8db98547b483e742b39a116ceaf11e9b5a3eff1a6fae1"

  url "https://github.com/oyeong011/Planit/releases/download/v0.1.16/Calen-0.1.16-universal.zip"
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
