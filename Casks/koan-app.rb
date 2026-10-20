cask "koan-app" do
  version "0.66.1"
  sha256 "3d71a456faba5451d7510108915b4da8fe09b6f456f7066f0b3616cef8fdfc33"

  url "https://github.com/radiosilence/koan/releases/download/v#{version}/Koan.dmg"
  name "koan"
  desc "Bit-perfect music player"
  homepage "https://github.com/radiosilence/koan"

  depends_on macos: :tahoe

  app "kōan.app"

  zap trash: "~/.config/koan"
end
