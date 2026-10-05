cask "koan-app" do
  version "0.52.8"
  sha256 "50fd4f5e3153abc70171ca3ac4da2e82a3f22ab42ad1726d03de42c646e1eb01"

  url "https://github.com/radiosilence/koan/releases/download/v#{version}/Koan.dmg"
  name "koan"
  desc "Bit-perfect music player"
  homepage "https://github.com/radiosilence/koan"

  depends_on macos: :tahoe

  app "kōan.app"

  zap trash: "~/.config/koan"
end
