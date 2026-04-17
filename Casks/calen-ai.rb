cask "calen-ai" do
  version "0.2.3"
  sha256 "786bcd803a96ce08028d3012306526033b56dbea2e422be529e422bb13c85c33"

  url "https://github.com/oyeong011/Planit/releases/download/v0.2.3/Calen-0.2.3-universal.zip"
  name "Calen"
  desc "AI-powered macOS menu bar calendar with Google Calendar integration"
  homepage "https://github.com/oyeong011/Planit"

  depends_on macos: ">= :sonoma"

  app "Calen.app"

  postflight do
    system "/usr/bin/open", "-a", "Calen"
  end

  zap trash: [
    "~/Library/Application Support/Calen",
    "~/Library/Caches/com.oy.planit",
    "~/Library/Preferences/com.oy.planit.plist",
    "~/Library/Saved Application State/com.oy.planit.savedState",
  ]
end
