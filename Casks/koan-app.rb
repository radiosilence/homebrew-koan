cask "koan-app" do
  version "0.45.1"
  sha256 "0edb456262ec489ab73e352cfb960efe11c00c558885592050f3c614ebb131b8"

  url "https://github.com/radiosilence/koan/releases/download/v#{version}/Koan.dmg"
  name "koan"
  desc "Bit-perfect music player"
  homepage "https://github.com/radiosilence/koan"

  depends_on macos: :tahoe

  app "kōan.app"

  zap trash: "~/.config/koan"
end
