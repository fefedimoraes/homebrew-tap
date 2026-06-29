cask "centerd" do
  version "0.0.1"
  sha256 "0000000000000000000000000000000000000000000000000000000000000000"

  url "https://github.com/fefedimoraes/centerd/releases/download/v#{version}/centerd-#{version}.zip"
  name "centerd"
  desc "Jump to apps and windows with keyboard shortcuts, centering the mouse cursor"
  homepage "https://github.com/fefedimoraes/centerd"

  depends_on macos: ">= :sonoma"

  app "centerd.app"

  uninstall quit: "com.fefedimoraes.centerd"

  zap trash: [
    "~/.config/centerd/config.json",
    "~/Library/Preferences/com.fefedimoraes.centerd.plist",
  ]
end
