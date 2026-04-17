cask "calen" do
  version "0.2.2"
  sha256 "bb154a7a3459c7fa7064b3814b457d535007b5d49e959ce29306a5171ea438be"

  url "https://github.com/oyeong011/Planit/releases/download/v0.2.2/Calen-0.2.2-universal.zip"
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
