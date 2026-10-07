cask "koan-app" do
  version "0.60.6"
  sha256 "70de1ac629067a83493b47d1fffed4c94e148fca2f56418a3ddeaf2c69344411"

  url "https://github.com/radiosilence/koan/releases/download/v#{version}/Koan.dmg"
  name "koan"
  desc "Bit-perfect music player"
  homepage "https://github.com/radiosilence/koan"

  depends_on macos: :tahoe

  app "kōan.app"

  zap trash: "~/.config/koan"
end
