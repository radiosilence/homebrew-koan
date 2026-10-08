cask "koan-app" do
  version "0.60.11"
  sha256 "2376186461d8256842385159159207a5651d16bd8304a556ed750ca39627979a"

  url "https://github.com/radiosilence/koan/releases/download/v#{version}/Koan.dmg"
  name "koan"
  desc "Bit-perfect music player"
  homepage "https://github.com/radiosilence/koan"

  depends_on macos: :tahoe

  app "kōan.app"

  zap trash: "~/.config/koan"
end
