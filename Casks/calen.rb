cask "calen" do
  version "0.1.6"
  sha256 "62a3b9cf5105d7ae27e8d8d7a17cd52fe9e35aebac676d9b9890017cf36e105d"

  url "https://github.com/oyeong011/Planit/releases/download/v0.1.6/Calen-0.1.6-universal.zip"
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
