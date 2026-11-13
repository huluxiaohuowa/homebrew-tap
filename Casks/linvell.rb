cask "linvell" do
  version "0.2.27"
  sha256 "dc7a01888a18e3434379069ce8092bddc04f42406c314ad99691863643fe1dcf"

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
