class Koan < Formula
  desc "Bit-perfect music player with TUI, gapless playback, and Subsonic support"
  homepage "https://github.com/radiosilence/koan"
  version "0.30.0"
  license "MIT"
  on_arm do
    url "https://github.com/radiosilence/koan/releases/download/v#{version}/koan-macos-arm64.tar.gz"
    sha256 "377404d968b73ef172f88d78561c50abf69c5c06130039e0de473c60dc8f9a1f"
  end
  on_intel do
    url "https://github.com/radiosilence/koan/releases/download/v#{version}/koan-macos-x86_64.tar.gz"
    sha256 "82b60c942830c74dcb7a93b1296e6e773b9dc25bb19e67e7b687c03ea336038c"
  end
  def install
    bin.install "koan"
  end
  test do
    assert_match "koan", shell_output("#{bin}/koan --version")
  end
end
