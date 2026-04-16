cask "calen" do
  version "1.2.0"
  sha256 "efbbd2b8fbbaaaf5c1e7c5237d6318e8daa9d2dcf9c38300ddb1496d966358b0"

  url "https://github.com/oyeong011/Planit/releases/download/v1.2.0/Calen-1.2.0-universal.zip"
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
