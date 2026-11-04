cask "linvell" do
  version "0.2.17"
  sha256 "7c9d9dc72ed93b5ffc13dcd5d0ac7f0bbafabfa139b845348034d28d9481871b"

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
