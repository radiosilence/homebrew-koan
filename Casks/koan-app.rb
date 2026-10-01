cask "koan-app" do
  version "0.46.2"
  sha256 "33ddc0d5d130e049c2a53f98425ddaefa2f799bf3ff2c720e11096562168172e"

  url "https://github.com/radiosilence/koan/releases/download/v#{version}/Koan.dmg"
  name "koan"
  desc "Bit-perfect music player"
  homepage "https://github.com/radiosilence/koan"

  depends_on macos: :tahoe

  app "kōan.app"

  zap trash: "~/.config/koan"
end
