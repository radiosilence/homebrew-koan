cask "koan-app" do
  version "0.57.0"
  sha256 "e0c92003a55906cf68063aa85ba36d9eff34056dbfbe2bc16c6e602df1b242da"

  url "https://github.com/radiosilence/koan/releases/download/v#{version}/Koan.dmg"
  name "koan"
  desc "Bit-perfect music player"
  homepage "https://github.com/radiosilence/koan"

  depends_on macos: :tahoe

  app "kōan.app"

  zap trash: "~/.config/koan"
end
