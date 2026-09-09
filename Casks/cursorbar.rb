cask "cursorbar" do
  version "1.6.4"
  sha256 "60e75b8a9d5d8214ff5a32e8b4c095b6f677b7587f8173dd63629a12f7593ed3"

  url "https://github.com/c-johannesen/cursorbar/releases/download/v1.6.4/CursorBar-1.6.4.zip"
  name "CursorBar"
  desc "Menu bar app showing Cursor plan usage and remaining credits"
  homepage "https://github.com/c-johannesen/cursorbar"

  depends_on macos: ">= :sonoma"

  app "CursorBar.app"

  postflight do
    system_command "/usr/bin/xattr", args: ["-cr", "#{appdir}/CursorBar.app"]
  end
end
