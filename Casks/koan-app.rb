cask "koan-app" do
  version "0.46.0"
  sha256 "3fc27a2004e15b6fed82bd1054ccefcd4d34299d3af6335afdd36cfe78d06178"

  url "https://github.com/radiosilence/koan/releases/download/v#{version}/Koan.dmg"
  name "koan"
  desc "Bit-perfect music player"
  homepage "https://github.com/radiosilence/koan"

  depends_on macos: :tahoe

  app "kōan.app"

  zap trash: "~/.config/koan"
end
