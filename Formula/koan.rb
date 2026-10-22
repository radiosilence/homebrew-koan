class Koan < Formula
  desc "Bit-perfect music player with TUI, gapless playback, and Subsonic support"
  homepage "https://github.com/radiosilence/koan"
  version "0.66.7"
  license "MIT"
  url "https://github.com/radiosilence/koan/releases/download/v#{version}/koan-macos-arm64.tar.gz"
  sha256 "82bd60ff0c91087fb46da87ad94f797e3abdc479228b12adba68811b6113e904"
  depends_on arch: :arm64
  def install
    bin.install "koan"
  end
  test do
    assert_match "koan", shell_output("#{bin}/koan --version")
  end
end
