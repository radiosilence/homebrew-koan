cask "koan-app" do
  version "0.62.1"
  sha256 "056a935699b8e8ef18f6a646713eece528fda0ae2e116e3f2de2f3be8daa9e87"

  url "https://github.com/radiosilence/koan/releases/download/v#{version}/Koan.dmg"
  name "koan"
  desc "Bit-perfect music player"
  homepage "https://github.com/radiosilence/koan"

  depends_on macos: :tahoe

  app "kōan.app"

  zap trash: "~/.config/koan"
end
