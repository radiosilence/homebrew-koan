cask "koan-app" do
  version "0.64.1"
  sha256 "24a45bea85e040f13fadc09f138a9df7ba412a9fde62e950da949554a7199070"

  url "https://github.com/radiosilence/koan/releases/download/v#{version}/Koan.dmg"
  name "koan"
  desc "Bit-perfect music player"
  homepage "https://github.com/radiosilence/koan"

  depends_on macos: :tahoe

  app "kōan.app"

  zap trash: "~/.config/koan"
end
