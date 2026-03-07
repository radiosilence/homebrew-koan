class Koan < Formula
  desc "Bit-perfect macOS music player with TUI, gapless playback, and Navidrome/Subsonic support"
  homepage "https://github.com/radiosilence/koan"
  version "0.9.0"
  license "MIT"

  on_arm do
    url "https://github.com/radiosilence/koan/releases/download/v#{version}/koan-macos-arm64.tar.gz"
    sha256 "00ad7f81c8fc37f87d3af124e2994ec6ae757c0ea2b8c0478daba99cb25bd18a"
  end

  on_intel do
    url "https://github.com/radiosilence/koan/releases/download/v#{version}/koan-macos-x86_64.tar.gz"
    sha256 "9955c77223f8bf14e0840923d63e9a7ab350f62bfdb1b20259f75855ef920aba"
  end

  def install
    bin.install "koan"
  end

  test do
    assert_match "koan", shell_output("#{bin}/koan --version")
  end
end
