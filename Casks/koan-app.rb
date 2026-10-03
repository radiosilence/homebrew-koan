cask "koan-app" do
  version "0.49.2"
  sha256 "dab35946cbf6ef3384bd2f8059e109e8f0ba88bd6b218947700826ca7d997737"

  url "https://github.com/radiosilence/koan/releases/download/v#{version}/Koan.dmg"
  name "koan"
  desc "Bit-perfect music player"
  homepage "https://github.com/radiosilence/koan"

  depends_on macos: :tahoe

  app "kōan.app"

  zap trash: "~/.config/koan"
end
