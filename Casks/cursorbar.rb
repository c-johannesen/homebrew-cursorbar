cask "cursorbar" do
  version "1.7.0"
  sha256 "af411ae27fb97cd8b1f2adac795133dfc0d3d9a0b1fd6e553c2cdbbb7135fad1"

  url "https://github.com/c-johannesen/cursorbar/releases/download/v1.7.0/CursorBar-1.7.0.zip"
  name "CursorBar"
  desc "Menu bar app showing Cursor plan usage and remaining credits"
  homepage "https://github.com/c-johannesen/cursorbar"

  depends_on macos: ">= :sonoma"

  app "CursorBar.app"

  postflight do
    system_command "/usr/bin/xattr", args: ["-cr", "#{appdir}/CursorBar.app"]
  end
end
