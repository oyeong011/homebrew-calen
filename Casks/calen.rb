cask "calen" do
  version "0.1.18"
  sha256 "9e1ca29f0aaaea9c067480ef35751c73960eefd3e33cfb4b7329cea74f6de8fb"

  url "https://github.com/oyeong011/Planit/releases/download/v0.1.18/Calen-0.1.18-universal.zip"
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
