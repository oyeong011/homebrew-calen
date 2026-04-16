cask "calen" do
  version "0.1.4"
  sha256 "d630878d4521b9a14a94884805df39bde3e8317a328fd7df80f6868ec017c6fc"

  url "https://github.com/oyeong011/Planit/releases/download/v0.1.4/Calen-0.1.4-universal.zip"
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
