class Koan < Formula
  desc "Bit-perfect macOS music player with TUI, gapless playback, and Navidrome/Subsonic support"
  homepage "https://github.com/radiosilence/koan"
  version "0.12.2"
  license "MIT"

  on_arm do
    url "https://github.com/radiosilence/koan/releases/download/v#{version}/koan-macos-arm64.tar.gz"
    sha256 "576475489904bef4c7acd4043a8c3e1d0488104b0e39cfa61224ba86f47ea385"
  end

  on_intel do
    url "https://github.com/radiosilence/koan/releases/download/v#{version}/koan-macos-x86_64.tar.gz"
    sha256 "338fe65990bdd62cacd7023f101c364a904df55f7db4a8979b8aa5c356109502"
  end

  def install
    bin.install "koan"
  end

  test do
    assert_match "koan", shell_output("#{bin}/koan --version")
  end
end
