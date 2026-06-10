cask "cursorbar" do
  version "1.2.1"
  sha256 "6b4b1e9cfc7f0379a522a95e686f3364e962836a96fb4ad84fee6c823f264748"

  url "https://github.com/c-johannesen/cursorbar/releases/download/v1.2.1/CursorBar-1.2.1.zip"
  name "CursorBar"
  desc "Menu bar app showing Cursor plan usage and remaining credits"
  homepage "https://github.com/c-johannesen/cursorbar"

  depends_on macos: ">= :sonoma"

  app "CursorBar.app"

  postflight do
    system_command "/usr/bin/xattr", args: ["-cr", "#{appdir}/CursorBar.app"]
  end
end
