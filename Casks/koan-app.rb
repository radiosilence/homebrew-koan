cask "koan-app" do
  version "0.61.7"
  sha256 "ff58ad6c926d90cbc718b2b88445917b7f24d77243c253c6ace1ef05bcb41635"

  url "https://github.com/radiosilence/koan/releases/download/v#{version}/Koan.dmg"
  name "koan"
  desc "Bit-perfect music player"
  homepage "https://github.com/radiosilence/koan"

  depends_on macos: :tahoe

  app "kōan.app"

  zap trash: "~/.config/koan"
end
