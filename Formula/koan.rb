class Koan < Formula
  desc "Bit-perfect music player with TUI, gapless playback, and Subsonic support"
  homepage "https://github.com/radiosilence/koan"
  version "0.28.0"
  license "MIT"
  on_arm do
    url "https://github.com/radiosilence/koan/releases/download/v#{version}/koan-macos-arm64.tar.gz"
    sha256 "8f37b8418907b5ce222a8fa36f7800fcadde43550f5996f14d4b3916f9464db8"
  end
  on_intel do
    url "https://github.com/radiosilence/koan/releases/download/v#{version}/koan-macos-x86_64.tar.gz"
    sha256 "9b47fba08bf59bcf2da6de9e87751280f1299eafea2e537315c9cdfdb300eae0"
  end
  def install
    bin.install "koan"
  end
  test do
    assert_match "koan", shell_output("#{bin}/koan --version")
  end
end
