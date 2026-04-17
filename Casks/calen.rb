cask "calen" do
  version "0.2.4"
  sha256 "bb55ec36aa2b10df3ed835cd582e6bb2e8368442444df6d1adbad18fe3fd3a61"

  url "https://github.com/oyeong011/Planit/releases/download/v0.2.4/Calen-0.2.4-universal.zip"
  name "Calen"
  desc "AI-powered macOS menu bar calendar with Google Calendar integration"
  homepage "https://github.com/oyeong011/Planit"

  depends_on macos: ">= :sonoma"

  app "Calen.app"

  # Menu-bar apps (LSUIElement) 는 Dock 아이콘이 없어 사용자가 '앱이 설치됐는지' 확인 못 하는
  # 혼란이 흔함. postflight에서 자동 실행해 메뉴바 아이콘이 바로 보이도록 한다.
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
