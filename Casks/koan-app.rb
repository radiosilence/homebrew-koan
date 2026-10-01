cask "koan-app" do
  version "0.46.3"
  sha256 "766ffbfc20fff600ada6ba1ba31b168073c1a6935b715e25be47dd3a7e180b4a"

  url "https://github.com/radiosilence/koan/releases/download/v#{version}/Koan.dmg"
  name "koan"
  desc "Bit-perfect music player"
  homepage "https://github.com/radiosilence/koan"

  depends_on macos: :tahoe

  app "kōan.app"

  zap trash: "~/.config/koan"
end
