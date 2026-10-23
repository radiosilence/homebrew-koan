cask "koan-app" do
  version "0.67.5"
  sha256 "2e6a30944df894ed91e6dbd895b87cb5e29b2909199400914b15dc38bd06e29a"

  url "https://github.com/radiosilence/koan/releases/download/v#{version}/Koan.dmg"
  name "koan"
  desc "Bit-perfect music player"
  homepage "https://github.com/radiosilence/koan"

  depends_on macos: :tahoe

  app "kōan.app"

  zap trash: "~/.config/koan"
end
