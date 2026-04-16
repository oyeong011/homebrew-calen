cask "calen" do
  version "0.1.3"
  sha256 "954dcd6d07586702d4469d8f4984db0c1231cc92bd1c1d063300d6a0de9f20a0"

  url "https://github.com/oyeong011/Planit/releases/download/v0.1.3/Calen-0.1.3-universal.zip"
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
