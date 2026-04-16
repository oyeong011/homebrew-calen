cask "calen" do
  version "0.1.22"
  sha256 "28b7c15a2d9d041f5e9d9860579e7e129374fb3fe7c1d240b46bc58274c02700"

  url "https://github.com/oyeong011/Planit/releases/download/v0.1.22/Calen-0.1.22-universal.zip"
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
