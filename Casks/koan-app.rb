cask "koan-app" do
  version "0.60.0"
  sha256 "1cc3a120a5f6ade3e734d8cee8513bebe7b952e6472a79e3daff7b26d021bad0"

  url "https://github.com/radiosilence/koan/releases/download/v#{version}/Koan.dmg"
  name "koan"
  desc "Bit-perfect music player"
  homepage "https://github.com/radiosilence/koan"

  depends_on macos: :tahoe

  app "kōan.app"

  zap trash: "~/.config/koan"
end
