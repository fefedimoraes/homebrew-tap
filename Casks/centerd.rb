cask "centerd" do
  version "0.1.0"
  sha256 "c0ab65ce55bf42352b6d7401257f3d2a7e03d9920b76ba2f051dc0d3f7a45162"

  url "https://github.com/fefedimoraes/centerd/releases/download/v#{version}/centerd-#{version}.zip"
  name "centerd"
  desc "Jump to apps and windows with keyboard shortcuts, centering the mouse cursor"
  homepage "https://github.com/fefedimoraes/centerd"

  depends_on macos: ">= :sonoma"

  app "centerd.app"

  # The app is self-signed, not notarized, so Gatekeeper would otherwise block it.
  # Strip the quarantine attribute on install so it launches without the "damaged /
  # cannot be opened" prompt. Users who prefer to vet it themselves can instead run
  # `brew install --cask --no-quarantine centerd`.
  postflight do
    system_command "/usr/bin/xattr",
                   args: ["-dr", "com.apple.quarantine", "#{appdir}/centerd.app"],
                   sudo: false
  end

  uninstall quit: "com.fefedimoraes.centerd"

  zap trash: [
    "~/.config/centerd/config.json",
    "~/Library/Preferences/com.fefedimoraes.centerd.plist",
  ]
end
