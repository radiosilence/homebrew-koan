cask "koan-app" do
  version "0.52.2"
  sha256 "17aaa4e7020d74c0b28905e260bb26f7e8aa388111ec162e5568ab9b63886b2c"

  url "https://github.com/radiosilence/koan/releases/download/v#{version}/Koan.dmg"
  name "koan"
  desc "Bit-perfect music player"
  homepage "https://github.com/radiosilence/koan"

  depends_on macos: :tahoe

  app "kōan.app"

  zap trash: "~/.config/koan"
end
