cask "calen" do
  version "0.1.0"
  sha256 "0392b17fb0ad1d2a0eeb9ad4924b3d4cfb8db4c748a35f5caa66ddf965580fa5"

  url "https://github.com/oyeong011/Planit/releases/download/v0.1.0/Calen-0.1.0-universal.zip"
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
