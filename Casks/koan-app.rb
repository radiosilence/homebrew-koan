cask "koan-app" do
  version "0.52.9"
  sha256 "b377f731de952807066b5e003e105b78dc16b8bfc3cad3d2dab628428170fe8c"

  url "https://github.com/radiosilence/koan/releases/download/v#{version}/Koan.dmg"
  name "koan"
  desc "Bit-perfect music player"
  homepage "https://github.com/radiosilence/koan"

  depends_on macos: :tahoe

  app "kōan.app"

  zap trash: "~/.config/koan"
end
