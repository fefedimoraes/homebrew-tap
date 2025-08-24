class Centerd < Formula
  desc "Warp mouse cursor to an application window using a terminal command"
  homepage "https://github.com/fefedimoraes/centerd"
  license "MIT"
  url "https://github.com/fefedimoraes/centerd/releases/download/v0.0.0/v0.0.0.tar.gz"
  sha256 "placeholder"
  version "0.0.0"

  depends_on :macos

  def install
    bin.install "centerd"
  end
end
