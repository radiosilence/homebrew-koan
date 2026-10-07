cask "koan-app" do
  version "0.60.9"
  sha256 "ec42c92103c90fc91252926d4807d252b627fad0f5bb45bead23b35d3a2594ec"

  url "https://github.com/radiosilence/koan/releases/download/v#{version}/Koan.dmg"
  name "koan"
  desc "Bit-perfect music player"
  homepage "https://github.com/radiosilence/koan"

  depends_on macos: :tahoe

  app "kōan.app"

  zap trash: "~/.config/koan"
end
