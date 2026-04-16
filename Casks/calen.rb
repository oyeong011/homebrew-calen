cask "calen" do
  version "0.1.9"
  sha256 "7eabb4b9111da5120a855d28b960ce54bf56f701890c4fdbafd55f08b26cadc4"

  url "https://github.com/oyeong011/Planit/releases/download/v0.1.9/Calen-0.1.9-universal.zip"
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
