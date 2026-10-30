cask "linvell" do
  version "0.2.3"
  sha256 "856dc6a7a1fb9096149899e33f74e9e0dc0c8bd0dbb5fe7e4192e882f7fb2bba"

  url "https://github.com/huluxiaohuowa/Linvell/releases/download/v#{version}/Linvell-#{version}-universal.zip"
  name "Linvell"
  desc "Native text and code editor"
  homepage "https://linvell.fuluwa.top/"

  depends_on macos: :sequoia

  app "Linvell.app"

  uninstall quit: "top.fuluwa.linvell"

  zap trash: [
    "~/Library/Application Support/Linvell",
    "~/Library/Caches/Linvell",
    "~/Library/Preferences/top.fuluwa.linvell.plist",
    "~/Library/Saved Application State/top.fuluwa.linvell.savedState",
  ]
end
