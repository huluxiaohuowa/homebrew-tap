cask "linvell" do
  version "0.2.4"
  sha256 "bd9032c8879abfcdbafccb65988c27d6105e97c4327f146e71a7e6d8aa02ed8a"

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
