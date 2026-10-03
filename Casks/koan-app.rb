cask "koan-app" do
  version "0.49.0"
  sha256 "10adada3440f8e910a228a2b5f12faa49e195754a741b1c5a724383ae4ae439a"

  url "https://github.com/radiosilence/koan/releases/download/v#{version}/Koan.dmg"
  name "koan"
  desc "Bit-perfect music player"
  homepage "https://github.com/radiosilence/koan"

  depends_on macos: :tahoe

  app "kōan.app"

  zap trash: "~/.config/koan"
end
