cask "cursorbar" do
  version "1.6.5"
  sha256 "c3d423e3fa1e6d6407f631ded329159a0df71f15fc04a370d19ecb2712a9c991"

  url "https://github.com/c-johannesen/cursorbar/releases/download/v1.6.5/CursorBar-1.6.5.zip"
  name "CursorBar"
  desc "Menu bar app showing Cursor plan usage and remaining credits"
  homepage "https://github.com/c-johannesen/cursorbar"

  depends_on macos: ">= :sonoma"

  app "CursorBar.app"

  postflight do
    system_command "/usr/bin/xattr", args: ["-cr", "#{appdir}/CursorBar.app"]
  end
end
