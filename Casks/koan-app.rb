cask "koan-app" do
  version "0.69.0"
  sha256 "854fa9c667757350877dfbcc675f548974900ff5e9bd0f349433e96405660aa9"

  url "https://github.com/radiosilence/koan/releases/download/v#{version}/Koan.dmg"
  name "koan"
  desc "Bit-perfect music player"
  homepage "https://github.com/radiosilence/koan"

  depends_on macos: :tahoe

  app "kōan.app"

  zap trash: "~/.config/koan"
end
