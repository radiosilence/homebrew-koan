cask "koan-app" do
  version "0.41.0"
  sha256 "4935b5ecb650112db471ebe2c3a6e637b6c8c5015a8445e77eb7c9c9caed97dc"

  url "https://github.com/radiosilence/koan/releases/download/v#{version}/Koan.dmg"
  name "koan"
  desc "Bit-perfect music player"
  homepage "https://github.com/radiosilence/koan"

  depends_on macos: :tahoe

  app "kōan.app"

  zap trash: "~/.config/koan"
end
