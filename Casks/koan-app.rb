cask "koan-app" do
  version "0.67.7"
  sha256 "3ba8dd3eb2d5a892a0b79fdb4eb01fb114f9bf6d2024d6a061032cf92535d79a"

  url "https://github.com/radiosilence/koan/releases/download/v#{version}/Koan.dmg"
  name "koan"
  desc "Bit-perfect music player"
  homepage "https://github.com/radiosilence/koan"

  depends_on macos: :tahoe

  app "kōan.app"

  zap trash: "~/.config/koan"
end
