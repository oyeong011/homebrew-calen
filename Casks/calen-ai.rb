cask "calen-ai" do
  version "0.4.7"
  sha256 "f613f8bcb9cb48b43912c117f48aa4a4e4e3fa103bd62b2f11557c843c7afa7a"

  url "https://github.com/oyeong011/Planit/releases/download/v0.4.7/Calen-0.4.7-universal.zip"
  name "Calen"
  desc "AI-powered macOS menu bar calendar with Google Calendar integration"
  homepage "https://github.com/oyeong011/Planit"

  depends_on macos: ">= :sonoma"

  app "Calen.app"

  # Menu-bar apps (LSUIElement) 는 Dock 아이콘이 없어 사용자가 '앱이 설치됐는지' 확인 못 하는
  # 혼란이 흔함. postflight에서 자동 실행해 메뉴바 아이콘이 바로 보이도록 한다.
  # 그리고 upgrade 시 실행 중인 옛 프로세스가 메모리에 그대로 있으면
  # 새 번들 대신 옛 바이너리가 계속 돌아 버전/기능이 반영되지 않는 문제가 있어,
  # uninstall_preflight에서 실행 중 프로세스를 먼저 종료한다.
  uninstall_preflight do
    system "/usr/bin/pkill", "-f", "/Applications/Calen.app/Contents/MacOS/Calen"
  end
  postflight do
    sleep 1
    system "/usr/bin/open", "-a", "Calen"
  end

  zap trash: [
    "~/Library/Application Support/Calen",
    "~/Library/Caches/com.oy.planit",
    "~/Library/Preferences/com.oy.planit.plist",
    "~/Library/Saved Application State/com.oy.planit.savedState",
  ]
end
