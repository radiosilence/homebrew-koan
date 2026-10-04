class Koan < Formula
  desc "Bit-perfect music player with TUI, gapless playback, and Subsonic support"
  homepage "https://github.com/radiosilence/koan"
  version "0.52.2"
  license "MIT"
  on_arm do
    url "https://github.com/radiosilence/koan/releases/download/v#{version}/koan-macos-arm64.tar.gz"
    sha256 "4a7adb9b5ef7004b804fe73a10d75607b44d97af4933d97f2ca687463878096d"
  end
  on_intel do
    url "https://github.com/radiosilence/koan/releases/download/v#{version}/koan-macos-x86_64.tar.gz"
    sha256 "5b219400ad952e9583cf13cc832c92b0082b7df95b5e4b130c8ecb91cf66cb76"
  end
  def install
    bin.install "koan"
  end
  test do
    assert_match "koan", shell_output("#{bin}/koan --version")
  end
end
