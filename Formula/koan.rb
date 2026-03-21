class Koan < Formula
  desc "Bit-perfect macOS music player with TUI, gapless playback, and Navidrome/Subsonic support"
  homepage "https://github.com/radiosilence/koan"
  version "0.12.0"
  license "MIT"

  on_arm do
    url "https://github.com/radiosilence/koan/releases/download/v#{version}/koan-macos-arm64.tar.gz"
    sha256 "cb226f1049ad7376133c71267c294bc602ba885b9a5bcc910a43c2c08f0a7412"
  end

  on_intel do
    url "https://github.com/radiosilence/koan/releases/download/v#{version}/koan-macos-x86_64.tar.gz"
    sha256 "961e068fa15574709a943ff9715e713cd8ecd189ef19981828a60843f3c42938"
  end

  def install
    bin.install "koan"
  end

  test do
    assert_match "koan", shell_output("#{bin}/koan --version")
  end
end
