cask "koan-app" do
  version "0.47.2"
  sha256 "45d7f3ec596c97e4de95f0fd4e2949c05a48f615f360ad9191f4290078747549"

  url "https://github.com/radiosilence/koan/releases/download/v#{version}/Koan.dmg"
  name "koan"
  desc "Bit-perfect music player"
  homepage "https://github.com/radiosilence/koan"

  depends_on macos: :tahoe

  app "kōan.app"

  zap trash: "~/.config/koan"
end
