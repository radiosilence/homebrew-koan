cask "koan-app" do
  version "0.67.3"
  sha256 "dc85eb86b068cd076700257f5993fb1ebd4cb0ab30822a6332816b5a81dc9d77"

  url "https://github.com/radiosilence/koan/releases/download/v#{version}/Koan.dmg"
  name "koan"
  desc "Bit-perfect music player"
  homepage "https://github.com/radiosilence/koan"

  depends_on macos: :tahoe

  app "kōan.app"

  zap trash: "~/.config/koan"
end
