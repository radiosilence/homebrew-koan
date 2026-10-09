cask "koan-app" do
  version "0.61.10"
  sha256 "ff88210cf78c5bf016a39126f1b0e5efd7165c1ee045acca5e0897cee317b52e"

  url "https://github.com/radiosilence/koan/releases/download/v#{version}/Koan.dmg"
  name "koan"
  desc "Bit-perfect music player"
  homepage "https://github.com/radiosilence/koan"

  depends_on macos: :tahoe

  app "kōan.app"

  zap trash: "~/.config/koan"
end
