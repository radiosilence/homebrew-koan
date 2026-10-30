cask "koan-app" do
  version "0.67.8"
  sha256 "f302af56bf3805fef2680c97127bc021267698f473546f18f7ebb5d4b1b8f023"

  url "https://github.com/radiosilence/koan/releases/download/v#{version}/Koan.dmg"
  name "koan"
  desc "Bit-perfect music player"
  homepage "https://github.com/radiosilence/koan"

  depends_on macos: :tahoe

  app "kōan.app"

  zap trash: "~/.config/koan"
end
