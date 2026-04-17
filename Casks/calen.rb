cask "calen" do
  version "0.2.1"
  sha256 "e3829d183afb2cddc4d0d82948cec5549b6a109b98791503169af2de6d3470d8"

  url "https://github.com/oyeong011/Planit/releases/download/v0.2.1/Calen-0.2.1-universal.zip"
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
