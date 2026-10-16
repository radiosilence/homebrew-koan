cask "koan-app" do
  version "0.62.0"
  sha256 "ed69acf34913b9c67a00bd45d6afffae2926f2a5a9772d2536ba36a17af282cd"

  url "https://github.com/radiosilence/koan/releases/download/v#{version}/Koan.dmg"
  name "koan"
  desc "Bit-perfect music player"
  homepage "https://github.com/radiosilence/koan"

  depends_on macos: :tahoe

  app "kōan.app"

  zap trash: "~/.config/koan"
end
