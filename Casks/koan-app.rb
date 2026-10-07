cask "koan-app" do
  version "0.60.4"
  sha256 "e2c6a3934a1b4fc7e36d8c7c06db0fb676650855bffbe436364c31f87389b43a"

  url "https://github.com/radiosilence/koan/releases/download/v#{version}/Koan.dmg"
  name "koan"
  desc "Bit-perfect music player"
  homepage "https://github.com/radiosilence/koan"

  depends_on macos: :tahoe

  app "kōan.app"

  zap trash: "~/.config/koan"
end
