cask "koan-app" do
  version "0.58.0"
  sha256 "6d1a0997a7db109b40d885561d37600a44919a11c42f8e4c3ff33513161496b3"

  url "https://github.com/radiosilence/koan/releases/download/v#{version}/Koan.dmg"
  name "koan"
  desc "Bit-perfect music player"
  homepage "https://github.com/radiosilence/koan"

  depends_on macos: :tahoe

  app "kōan.app"

  zap trash: "~/.config/koan"
end
