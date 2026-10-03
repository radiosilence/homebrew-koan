cask "koan-app" do
  version "0.50.1"
  sha256 "f557f73012a2c75ef66de9ac000819d2fc7ab180f9cfb0b678b45e42f3eb9b96"

  url "https://github.com/radiosilence/koan/releases/download/v#{version}/Koan.dmg"
  name "koan"
  desc "Bit-perfect music player"
  homepage "https://github.com/radiosilence/koan"

  depends_on macos: :tahoe

  app "kōan.app"

  zap trash: "~/.config/koan"
end
