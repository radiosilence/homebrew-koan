cask "koan-app" do
  version "0.60.5"
  sha256 "f0186f1a77d20d3f03065fbedc26295cdef70060d94b1f1a2f971a24cadf1d08"

  url "https://github.com/radiosilence/koan/releases/download/v#{version}/Koan.dmg"
  name "koan"
  desc "Bit-perfect music player"
  homepage "https://github.com/radiosilence/koan"

  depends_on macos: :tahoe

  app "kōan.app"

  zap trash: "~/.config/koan"
end
