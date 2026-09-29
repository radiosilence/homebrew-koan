cask "koan-app" do
  version "0.40.0"
  sha256 "ff88af5f8d4b220950c676228ebaa64d6763ce936a9e7108f7aa4ef099883dab"

  url "https://github.com/radiosilence/koan/releases/download/v#{version}/Koan.dmg"
  name "koan"
  desc "Bit-perfect music player"
  homepage "https://github.com/radiosilence/koan"

  depends_on macos: :tahoe

  app "kōan.app"

  zap trash: "~/.config/koan"
end
