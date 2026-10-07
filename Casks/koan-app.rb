cask "koan-app" do
  version "0.60.3"
  sha256 "109bba98c3db57d3f1df10951b0d6995ddff6932922bd4a666cd9172a9b3055c"

  url "https://github.com/radiosilence/koan/releases/download/v#{version}/Koan.dmg"
  name "koan"
  desc "Bit-perfect music player"
  homepage "https://github.com/radiosilence/koan"

  depends_on macos: :tahoe

  app "kōan.app"

  zap trash: "~/.config/koan"
end
