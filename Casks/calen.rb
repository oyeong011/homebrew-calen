cask "calen" do
  version "0.1.1"
  sha256 "e8e2fd88a4c18a8726e7232edc1cbac0203e7de7aba8f78f7e87ee8c9d3547e1"

  url "https://github.com/oyeong011/Planit/releases/download/v0.1.1/Calen-0.1.1-universal.zip"
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
