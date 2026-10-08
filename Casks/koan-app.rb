cask "koan-app" do
  version "0.61.1"
  sha256 "96a1333b8cc738b201a0a1bb27a8ba85b047c4836102af2636f75f792418cecb"

  url "https://github.com/radiosilence/koan/releases/download/v#{version}/Koan.dmg"
  name "koan"
  desc "Bit-perfect music player"
  homepage "https://github.com/radiosilence/koan"

  depends_on macos: :tahoe

  app "kōan.app"

  zap trash: "~/.config/koan"
end
