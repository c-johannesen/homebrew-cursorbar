cask "cursorbar" do
  version "1.1.0"
  sha256 "90cb65afed974b544c07c71a2febfd42fdfc578bd3157a4ce238df99801083a7"

  url "https://github.com/c-johannesen/cursorbar/releases/download/v1.1.0/CursorBar-1.1.0.zip"
  name "CursorBar"
  desc "Menu bar app showing Cursor plan usage and remaining credits"
  homepage "https://github.com/c-johannesen/cursorbar"

  depends_on macos: ">= :sonoma"

  app "CursorBar.app"

  postflight do
    system_command "/usr/bin/xattr", args: ["-cr", "#{appdir}/CursorBar.app"]
  end
end
