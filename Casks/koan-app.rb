cask "koan-app" do
  version "0.60.8"
  sha256 "94889a83333a872ade61c8629b81420741988472d0f1a7e82a06cbee94d41879"

  url "https://github.com/radiosilence/koan/releases/download/v#{version}/Koan.dmg"
  name "koan"
  desc "Bit-perfect music player"
  homepage "https://github.com/radiosilence/koan"

  depends_on macos: :tahoe

  app "kōan.app"

  zap trash: "~/.config/koan"
end
