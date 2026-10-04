cask "koan-app" do
  version "0.52.6"
  sha256 "cce1f330411afd8f3c8a5c98c7176bf3d5c2db3a8b3df7d7cfccd83341cd9566"

  url "https://github.com/radiosilence/koan/releases/download/v#{version}/Koan.dmg"
  name "koan"
  desc "Bit-perfect music player"
  homepage "https://github.com/radiosilence/koan"

  depends_on macos: :tahoe

  app "kōan.app"

  zap trash: "~/.config/koan"
end
