cask "koan-app" do
  version "0.66.4"
  sha256 "0778e776b55e5c5e24824bc774f521a39fae530f6d44b58605017fc78d513ee7"

  url "https://github.com/radiosilence/koan/releases/download/v#{version}/Koan.dmg"
  name "koan"
  desc "Bit-perfect music player"
  homepage "https://github.com/radiosilence/koan"

  depends_on macos: :tahoe

  app "kōan.app"

  zap trash: "~/.config/koan"
end
