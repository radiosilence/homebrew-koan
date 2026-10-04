cask "koan-app" do
  version "0.52.4"
  sha256 "9bbe7984f6411d44dfe164f76b19cc969f9e239a492bce584abbb93f53dbead3"

  url "https://github.com/radiosilence/koan/releases/download/v#{version}/Koan.dmg"
  name "koan"
  desc "Bit-perfect music player"
  homepage "https://github.com/radiosilence/koan"

  depends_on macos: :tahoe

  app "kōan.app"

  zap trash: "~/.config/koan"
end
