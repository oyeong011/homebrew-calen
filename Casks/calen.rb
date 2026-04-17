cask "calen" do
  version "0.1.25"
  sha256 "1038b3c70a6ca1288a0bdeac9dae2e4cf8b697e6fae4bdd9c36478e0b4b27194"

  url "https://github.com/oyeong011/Planit/releases/download/v0.1.25/Calen-0.1.25-universal.zip"
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
