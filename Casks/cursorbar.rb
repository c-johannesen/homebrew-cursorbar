cask "cursorbar" do
  version "1.5.0"
  sha256 "dfbbf0f4c9d916ea854cc85d384c4cf0245261b3aaeca5bda123a4d49f96c377"

  url "https://github.com/c-johannesen/cursorbar/releases/download/v1.5.0/CursorBar-1.5.0.zip"
  name "CursorBar"
  desc "Menu bar app showing Cursor plan usage and remaining credits"
  homepage "https://github.com/c-johannesen/cursorbar"

  depends_on macos: ">= :sonoma"

  app "CursorBar.app"

  postflight do
    system_command "/usr/bin/xattr", args: ["-cr", "#{appdir}/CursorBar.app"]
  end
end
