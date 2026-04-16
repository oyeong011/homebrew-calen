cask "calen" do
  version "0.1.5"
  sha256 "64bc8093e092b1b2fa7fb2f88451980d1a744b5375d1faf320087fb00478b252"

  url "https://github.com/oyeong011/Planit/releases/download/v0.1.5/Calen-0.1.5-universal.zip"
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
