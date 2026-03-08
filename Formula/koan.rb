class Koan < Formula
  desc "Bit-perfect macOS music player with TUI, gapless playback, and Navidrome/Subsonic support"
  homepage "https://github.com/radiosilence/koan"
  version "0.9.1"
  license "MIT"

  on_arm do
    url "https://github.com/radiosilence/koan/releases/download/v#{version}/koan-macos-arm64.tar.gz"
    sha256 "646656ba1d80c347897fb10dd4ab6f1d30917ecf23f7417dd9a3633753fad445"
  end

  on_intel do
    url "https://github.com/radiosilence/koan/releases/download/v#{version}/koan-macos-x86_64.tar.gz"
    sha256 "75a7fc05d4ddd3517e4de0508fb65ec5e8ac1a26210ce2e4047d24d520ff94a1"
  end

  def install
    bin.install "koan"
  end

  test do
    assert_match "koan", shell_output("#{bin}/koan --version")
  end
end
