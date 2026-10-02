cask "koan-app" do
  version "0.48.0"
  sha256 "90e3ad0304b79eb55f5c5bce146c1a1e58025a1ad84c6a0a7220da758ea68810"

  url "https://github.com/radiosilence/koan/releases/download/v#{version}/Koan.dmg"
  name "koan"
  desc "Bit-perfect music player"
  homepage "https://github.com/radiosilence/koan"

  depends_on macos: :tahoe

  app "kōan.app"

  zap trash: "~/.config/koan"
end
