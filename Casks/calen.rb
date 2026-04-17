cask "calen" do
  version "0.2.0"
  sha256 "dbafd64cf5b53dd3ffa8124807946a14adbb5032df16ea428e3be6675b8f0c35"

  url "https://github.com/oyeong011/Planit/releases/download/v0.2.0/Calen-0.2.0-universal.zip"
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
