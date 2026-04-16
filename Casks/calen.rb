cask "calen" do
  version "0.1.25"
  sha256 "fda3d3a58ad9014938759d4d9ca01b47596ad61829eaa21d342b3a8aed2412e9"

  url "https://github.com/oyeong011/Planit/releases/download/v0.1.25/Calen-0.1.25-universal.zip"
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
