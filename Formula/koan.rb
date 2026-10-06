class Koan < Formula
  desc "Bit-perfect music player with TUI, gapless playback, and Subsonic support"
  homepage "https://github.com/radiosilence/koan"
  version "0.60.0"
  license "MIT"
  on_arm do
    url "https://github.com/radiosilence/koan/releases/download/v#{version}/koan-macos-arm64.tar.gz"
    sha256 "8efc1c695f88f948c13922a57ce6d125cb10c16ac99aac1ba6a43377ec66aa90"
  end
  on_intel do
    url "https://github.com/radiosilence/koan/releases/download/v#{version}/koan-macos-x86_64.tar.gz"
    sha256 "d8633eafaf7ae207df224cf71f2710906af99b06869a18d2ae2273b20eba1347"
  end
  def install
    bin.install "koan"
  end
  test do
    assert_match "koan", shell_output("#{bin}/koan --version")
  end
end
