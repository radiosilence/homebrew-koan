cask "koan-app" do
  version "0.67.4"
  sha256 "70dcd560f04ead5f4e87e767b8c7539d0800014fb737cff35b4a32908f2c29f0"

  url "https://github.com/radiosilence/koan/releases/download/v#{version}/Koan.dmg"
  name "koan"
  desc "Bit-perfect music player"
  homepage "https://github.com/radiosilence/koan"

  depends_on macos: :tahoe

  app "kōan.app"

  zap trash: "~/.config/koan"
end
