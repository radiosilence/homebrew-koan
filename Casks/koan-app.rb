cask "koan-app" do
  version "0.48.1"
  sha256 "3c96c1b4b0c21817e876aa5a7f8fe7ee7a0b6d8ee284e0d0a6cc3ab1598f4dfb"

  url "https://github.com/radiosilence/koan/releases/download/v#{version}/Koan.dmg"
  name "koan"
  desc "Bit-perfect music player"
  homepage "https://github.com/radiosilence/koan"

  depends_on macos: :tahoe

  app "kōan.app"

  zap trash: "~/.config/koan"
end
