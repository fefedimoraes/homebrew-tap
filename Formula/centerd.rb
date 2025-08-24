class Centerd < Formula
  desc "Warp mouse cursor to an application window using a terminal command"
  homepage "https://github.com/fefedimoraes/centerd"
  license "MIT"
  url "https://github.com/fefedimoraes/centerd/releases/download/v0.0.1/v0.0.1.tar.gz"
  sha256 "cedc628cb877441627d5d908ce3263fddbec581a89e5523d3729da4c34ed4504"
  version "0.0.1"

  depends_on :macos

  def install
    bin.install "centerd"
  end
end
