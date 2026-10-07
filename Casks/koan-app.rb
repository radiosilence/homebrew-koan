cask "koan-app" do
  version "0.60.7"
  sha256 "93e7a5fa3ae622256ecbbc65ea0eee4e8599606622c60ad0a4f24ae17d0f1475"

  url "https://github.com/radiosilence/koan/releases/download/v#{version}/Koan.dmg"
  name "koan"
  desc "Bit-perfect music player"
  homepage "https://github.com/radiosilence/koan"

  depends_on macos: :tahoe

  app "kōan.app"

  zap trash: "~/.config/koan"
end
