cask "calen" do
  version "0.1.8"
  sha256 "f44a60e5957cc9da5fa7288c4aeb47cff23161945d782de5bd3fa8f4be21f862"

  url "https://github.com/oyeong011/Planit/releases/download/v0.1.8/Calen-0.1.8-universal.zip"
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
