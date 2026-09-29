cask "koan-app" do
  version "0.44.0"
  sha256 "5479481f677fcad0ee2d43d2ae282020f0d036d534a222581ab12f7c98c19b0e"

  url "https://github.com/radiosilence/koan/releases/download/v#{version}/Koan.dmg"
  name "koan"
  desc "Bit-perfect music player"
  homepage "https://github.com/radiosilence/koan"

  depends_on macos: :tahoe

  app "kōan.app"

  zap trash: "~/.config/koan"
end
