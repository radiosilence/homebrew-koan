cask "koan-app" do
  version "0.63.0"
  sha256 "f9c41fd87e16eb7cb54ab6ca0afdbda7215a835c5341aab4250f7407c1d835bc"

  url "https://github.com/radiosilence/koan/releases/download/v#{version}/Koan.dmg"
  name "koan"
  desc "Bit-perfect music player"
  homepage "https://github.com/radiosilence/koan"

  depends_on macos: :tahoe

  app "kōan.app"

  zap trash: "~/.config/koan"
end
