cask "koan-app" do
  version "0.53.0"
  sha256 "93853e28ce281f0e8cd8bf94da67a25de8745a34c3d7a78f42bfd8f49f4721ee"

  url "https://github.com/radiosilence/koan/releases/download/v#{version}/Koan.dmg"
  name "koan"
  desc "Bit-perfect music player"
  homepage "https://github.com/radiosilence/koan"

  depends_on macos: :tahoe

  app "kōan.app"

  zap trash: "~/.config/koan"
end
