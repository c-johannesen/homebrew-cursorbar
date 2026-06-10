cask "cursorbar" do
  version "1.0.0"
  sha256 "9bd13300ccad8abb653c0648de82fbb3b268ce2cef2de2716852a344bac1b774"

  url "https://github.com/c-johannesen/cursorbar/releases/download/v1.0.0/CursorBar-1.0.0.zip"
  name "CursorBar"
  desc "Menu bar app showing Cursor plan usage and remaining credits"
  homepage "https://github.com/c-johannesen/cursorbar"

  depends_on macos: ">= :sonoma"

  app "CursorBar.app"

  postflight do
    system_command "/usr/bin/xattr", args: ["-cr", "#{appdir}/CursorBar.app"]
  end
end
