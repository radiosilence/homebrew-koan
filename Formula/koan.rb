class Koan < Formula
  desc "Bit-perfect music player with TUI, gapless playback, and Subsonic support"
  homepage "https://github.com/radiosilence/koan"
  version "0.23.0"
  license "MIT"
  on_arm do
    url "https://github.com/radiosilence/koan/releases/download/v#{version}/koan-macos-arm64.tar.gz"
    sha256 "7977044e0e5f859568f6c32a1183827c1ed636746a9ea741c98e8d5f9baca80a"
  end
  on_intel do
    url "https://github.com/radiosilence/koan/releases/download/v#{version}/koan-macos-x86_64.tar.gz"
    sha256 "84164e4f7fad4bb5b0636e0dc4b9ecc8ff2c50c67fe562c624faea74a10b65ca"
  end
  def install
    bin.install "koan"
  end
  test do
    assert_match "koan", shell_output("#{bin}/koan --version")
  end
end
