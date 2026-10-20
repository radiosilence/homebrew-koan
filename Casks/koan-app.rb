cask "koan-app" do
  version "0.66.0"
  sha256 "0181c4e9bf6712cd043c0ce2f9c296bcca962189a3565a90386bf358a2e945c2"

  url "https://github.com/radiosilence/koan/releases/download/v#{version}/Koan.dmg"
  name "koan"
  desc "Bit-perfect music player"
  homepage "https://github.com/radiosilence/koan"

  depends_on macos: :tahoe

  app "kōan.app"

  zap trash: "~/.config/koan"
end
