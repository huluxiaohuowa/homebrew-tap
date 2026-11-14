cask "linvell" do
  version "0.2.32"
  sha256 "c7393240d84ca3318767342b6496f4005aad39b174416ce4a56c1c7f303f1a16"

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
