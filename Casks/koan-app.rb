cask "koan-app" do
  version "0.61.2"
  sha256 "caa51299a91252a1d8098a1a19a3ed2b6b202e298746086bb5dd2c90c0a23ee2"

  url "https://github.com/radiosilence/koan/releases/download/v#{version}/Koan.dmg"
  name "koan"
  desc "Bit-perfect music player"
  homepage "https://github.com/radiosilence/koan"

  depends_on macos: :tahoe

  app "kōan.app"

  zap trash: "~/.config/koan"
end
