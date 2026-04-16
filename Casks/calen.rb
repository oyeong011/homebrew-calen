cask "calen" do
  version "0.1.15"
  sha256 "1e7b6c7232233c520d93c9ab2e38d955f34bbb27938a460c6bb7a5770a480f65"

  url "https://github.com/oyeong011/Planit/releases/download/v0.1.15/Calen-0.1.15-universal.zip"
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
