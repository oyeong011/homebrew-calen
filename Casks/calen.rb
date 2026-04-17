cask "calen" do
  version "0.2.2"
  sha256 "ad9bcc0393c374e308e2560a84a6e5d47caf7b8cdefb57108874bf6c6e4fa442"

  url "https://github.com/oyeong011/Planit/releases/download/v0.2.2/Calen-0.2.2-universal.zip"
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
