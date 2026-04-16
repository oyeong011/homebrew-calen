cask "calen" do
  version "0.1.11"
  sha256 "834943cb013fdf5c2b625610d3017cca52e072c1f292ac4228dc6fd02a919e23"

  url "https://github.com/oyeong011/Planit/releases/download/v0.1.11/Calen-0.1.11-universal.zip"
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
