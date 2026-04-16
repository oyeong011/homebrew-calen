cask "calen" do
  version "0.1.19"
  sha256 "b1b2de303bef0728810f92d48f0ea698986ccdbf23a78ff36a2588fd8b02bce3"

  url "https://github.com/oyeong011/Planit/releases/download/v0.1.19/Calen-0.1.19-universal.zip"
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
