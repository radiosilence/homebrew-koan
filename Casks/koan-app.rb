cask "koan-app" do
  version "0.61.4"
  sha256 "86525082577014855628c4be4c28ae778413e4ffe538dedb1ad2a8194156ee44"

  url "https://github.com/radiosilence/koan/releases/download/v#{version}/Koan.dmg"
  name "koan"
  desc "Bit-perfect music player"
  homepage "https://github.com/radiosilence/koan"

  depends_on macos: :tahoe

  app "kōan.app"

  zap trash: "~/.config/koan"
end
