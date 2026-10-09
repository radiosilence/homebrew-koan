cask "koan-app" do
  version "0.61.11"
  sha256 "d95947fdbcef4da3b5abc67cf035912625c98213ba3fe7dc6f9e5c447783b48f"

  url "https://github.com/radiosilence/koan/releases/download/v#{version}/Koan.dmg"
  name "koan"
  desc "Bit-perfect music player"
  homepage "https://github.com/radiosilence/koan"

  depends_on macos: :tahoe

  app "kōan.app"

  zap trash: "~/.config/koan"
end
