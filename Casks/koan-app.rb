cask "koan-app" do
  version "0.64.0"
  sha256 "287cd2a8ff40442aaba8f8908421883abd7792636b21d2dfd832a5f182372062"

  url "https://github.com/radiosilence/koan/releases/download/v#{version}/Koan.dmg"
  name "koan"
  desc "Bit-perfect music player"
  homepage "https://github.com/radiosilence/koan"

  depends_on macos: :tahoe

  app "kōan.app"

  zap trash: "~/.config/koan"
end
