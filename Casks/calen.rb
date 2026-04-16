cask "calen" do
  version "0.1.10"
  sha256 "771c075bc5abd2385917854bd196dd912ee6c9897355ea8bd07236787938fe33"

  url "https://github.com/oyeong011/Planit/releases/download/v0.1.10/Calen-0.1.10-universal.zip"
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
