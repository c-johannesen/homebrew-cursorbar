cask "cursorbar" do
  version "1.3.0"
  sha256 "657ee29d0e7fa6ae9d0c4dc18006fbcbffcb0f3704303128bf27773e857e4151"

  url "https://github.com/c-johannesen/cursorbar/releases/download/v1.3.0/CursorBar-1.3.0.zip"
  name "CursorBar"
  desc "Menu bar app showing Cursor plan usage and remaining credits"
  homepage "https://github.com/c-johannesen/cursorbar"

  depends_on macos: ">= :sonoma"

  app "CursorBar.app"

  postflight do
    system_command "/usr/bin/xattr", args: ["-cr", "#{appdir}/CursorBar.app"]
  end
end
