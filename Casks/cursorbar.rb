cask "cursorbar" do
  version "1.4.0"
  sha256 "2db7871ad07ef66fb4f0d480689262aa1482efe6c6ae3c7db4d1bc1ae686968f"

  url "https://github.com/c-johannesen/cursorbar/releases/download/v1.4.0/CursorBar-1.4.0.zip"
  name "CursorBar"
  desc "Menu bar app showing Cursor plan usage and remaining credits"
  homepage "https://github.com/c-johannesen/cursorbar"

  depends_on macos: ">= :sonoma"

  app "CursorBar.app"

  postflight do
    system_command "/usr/bin/xattr", args: ["-cr", "#{appdir}/CursorBar.app"]
  end
end
