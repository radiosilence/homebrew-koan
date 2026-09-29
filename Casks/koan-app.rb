cask "koan-app" do
  version "0.42.0"
  sha256 "549d3f5107a7f7e2ce2f4aadc6dab4556a53ed50e176f037612072fc71b06df9"

  url "https://github.com/radiosilence/koan/releases/download/v#{version}/Koan.dmg"
  name "koan"
  desc "Bit-perfect music player"
  homepage "https://github.com/radiosilence/koan"

  depends_on macos: :tahoe

  app "kōan.app"

  zap trash: "~/.config/koan"
end
