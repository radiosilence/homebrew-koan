cask "koan-app" do
  version "0.45.0"
  sha256 "8e7a37109724e8357509cb4f9f4d455110f00c963ff546cc22351d4581075c1e"

  url "https://github.com/radiosilence/koan/releases/download/v#{version}/Koan.dmg"
  name "koan"
  desc "Bit-perfect music player"
  homepage "https://github.com/radiosilence/koan"

  depends_on macos: :tahoe

  app "kōan.app"

  zap trash: "~/.config/koan"
end
