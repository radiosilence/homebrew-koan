class Koan < Formula
  desc "Bit-perfect macOS music player with TUI, gapless playback, and Navidrome/Subsonic support"
  homepage "https://github.com/radiosilence/koan"
  version "0.12.1"
  license "MIT"

  on_arm do
    url "https://github.com/radiosilence/koan/releases/download/v#{version}/koan-macos-arm64.tar.gz"
    sha256 "72842d0a56e68b66eef272245f65e60031307d48d54745a217a1cb2e290a2f51"
  end

  on_intel do
    url "https://github.com/radiosilence/koan/releases/download/v#{version}/koan-macos-x86_64.tar.gz"
    sha256 "3fbff78213946d77c2604ad8999c40cd79c0849da8d0ee64fcd1d343d1c1a5ed"
  end

  def install
    bin.install "koan"
  end

  test do
    assert_match "koan", shell_output("#{bin}/koan --version")
  end
end
