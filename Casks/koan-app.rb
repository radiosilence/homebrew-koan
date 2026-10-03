cask "koan-app" do
  version "0.50.2"
  sha256 "19ed4f8d0c576bb80f8f8c99cb71445caca16d13af8a901a6d47ebeaa6c7ef62"

  url "https://github.com/radiosilence/koan/releases/download/v#{version}/Koan.dmg"
  name "koan"
  desc "Bit-perfect music player"
  homepage "https://github.com/radiosilence/koan"

  depends_on macos: :tahoe

  app "kōan.app"

  zap trash: "~/.config/koan"
end
