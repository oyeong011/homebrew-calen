cask "calen" do
  version "0.1.14"
  sha256 "193a17402158676b1e18291290c1d0d16e58a65e17d9c770689dda106cd4ddeb"

  url "https://github.com/oyeong011/Planit/releases/download/v0.1.14/Calen-0.1.14-universal.zip"
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
