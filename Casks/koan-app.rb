cask "koan-app" do
  version "0.69.1"
  sha256 "d650c042a027c6e43ce55172ade963cae130ae5d360cf436fd4efb66eef0a338"

  url "https://github.com/radiosilence/koan/releases/download/v#{version}/Koan.dmg"
  name "koan"
  desc "Bit-perfect music player"
  homepage "https://github.com/radiosilence/koan"

  depends_on macos: :tahoe

  app "kōan.app"

  zap trash: "~/.config/koan"
end
