cask "cursorbar" do
  version "1.1.1"
  sha256 "9b188e7ae1b45db3acc79c63bc564f015fb79cc1d2ccb0f28264da5511c602dc"

  url "https://github.com/c-johannesen/cursorbar/releases/download/v1.1.1/CursorBar-1.1.1.zip"
  name "CursorBar"
  desc "Menu bar app showing Cursor plan usage and remaining credits"
  homepage "https://github.com/c-johannesen/cursorbar"

  depends_on macos: ">= :sonoma"

  app "CursorBar.app"

  postflight do
    system_command "/usr/bin/xattr", args: ["-cr", "#{appdir}/CursorBar.app"]
  end
end
