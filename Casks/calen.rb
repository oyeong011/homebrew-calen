cask "calen" do
  version "0.1.23"
  sha256 "00d0bd69dd2aa9ab159750166061f829f03d50a93c3e053a8939d61604501ac9"

  url "https://github.com/oyeong011/Planit/releases/download/v0.1.23/Calen-0.1.23-universal.zip"
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
