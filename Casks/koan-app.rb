cask "koan-app" do
  version "0.49.1"
  sha256 "886ce0da02ee867764b5d7ded5d39cfc5a4920fb4c8eb15f01eacdcc14af1019"

  url "https://github.com/radiosilence/koan/releases/download/v#{version}/Koan.dmg"
  name "koan"
  desc "Bit-perfect music player"
  homepage "https://github.com/radiosilence/koan"

  depends_on macos: :tahoe

  app "kōan.app"

  zap trash: "~/.config/koan"
end
