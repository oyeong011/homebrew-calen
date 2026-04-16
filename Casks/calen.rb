cask "calen" do
  version "0.1.13"
  sha256 "d64e8aa9c423473d7d8ace9b4d3e153a7a8fb96e83b2fd479f5e2cd09541163b"

  url "https://github.com/oyeong011/Planit/releases/download/v0.1.13/Calen-0.1.13-universal.zip"
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
