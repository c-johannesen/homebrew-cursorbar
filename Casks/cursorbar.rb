cask "cursorbar" do
  version "1.2.0"
  sha256 "cd5aca952f5a1a801166aca1134dba0c2fc6335337d88707ada8b40a145e69a0"

  url "https://github.com/c-johannesen/cursorbar/releases/download/v1.2.0/CursorBar-1.2.0.zip"
  name "CursorBar"
  desc "Menu bar app showing Cursor plan usage and remaining credits"
  homepage "https://github.com/c-johannesen/cursorbar"

  depends_on macos: ">= :sonoma"

  app "CursorBar.app"

  postflight do
    system_command "/usr/bin/xattr", args: ["-cr", "#{appdir}/CursorBar.app"]
  end
end
