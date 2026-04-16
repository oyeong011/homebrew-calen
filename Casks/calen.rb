cask "calen" do
  version "0.1.12"
  sha256 "73a193fb1bea2bbb25c59e2536076b9d3b85b4e7daf5170dafb104ee6255acb3"

  url "https://github.com/oyeong011/Planit/releases/download/v0.1.12/Calen-0.1.12-universal.zip"
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
