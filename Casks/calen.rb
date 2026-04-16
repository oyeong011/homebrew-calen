cask "calen" do
  version "0.1.20"
  sha256 "94f10da5492d2b7ece2acabd377aade8f62c58377da2121f3751c502ff00db37"

  url "https://github.com/oyeong011/Planit/releases/download/v0.1.20/Calen-0.1.20-universal.zip"
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
