cask "koan-app" do
  version "0.66.5"
  sha256 "62e8d557df86d01cdc2e0fde21c159e03b11fd6adc801cce32ec6a923878e3c5"

  url "https://github.com/radiosilence/koan/releases/download/v#{version}/Koan.dmg"
  name "koan"
  desc "Bit-perfect music player"
  homepage "https://github.com/radiosilence/koan"

  depends_on macos: :tahoe

  app "kōan.app"

  zap trash: "~/.config/koan"
end
