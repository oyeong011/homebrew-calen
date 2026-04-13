cask "calen" do
  version "1.1.0"
  sha256 "a35756dc061b737ddbd76b5741dea4d8a32c2b3ffe45c43f4633b03942b16148"

  url "https://github.com/oyeong011/Planit/releases/download/v#{version}/Calen-1.0.0-arm64.zip"
  name "Calen"
  desc "macOS menubar calendar and todo app with Google Calendar sync"
  homepage "https://github.com/oyeong011/Planit"

  depends_on macos: ">= :sonoma"
  depends_on arch: :arm64

  app "Calen.app"

  zap trash: [
    "~/Library/Application Support/Planit",
    "~/Library/Caches/Planit",
  ]
end
