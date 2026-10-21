class Koan < Formula
  desc "Bit-perfect music player with TUI, gapless playback, and Subsonic support"
  homepage "https://github.com/radiosilence/koan"
  version "0.66.3"
  license "MIT"
  url "https://github.com/radiosilence/koan/releases/download/v#{version}/koan-macos-arm64.tar.gz"
  sha256 "6b69cfe4a1a480fb4946e445e8d00a80bfd964e114b5a782feada0af0edb6c65"
  depends_on arch: :arm64
  def install
    bin.install "koan"
  end
  test do
    assert_match "koan", shell_output("#{bin}/koan --version")
  end
end
