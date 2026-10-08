cask "koan-app" do
  version "0.61.6"
  sha256 "2f207beb2c87e6766aadc2a2c889162ea43de00670656bb639164d274f13a994"

  url "https://github.com/radiosilence/koan/releases/download/v#{version}/Koan.dmg"
  name "koan"
  desc "Bit-perfect music player"
  homepage "https://github.com/radiosilence/koan"

  depends_on macos: :tahoe

  app "kōan.app"

  zap trash: "~/.config/koan"
end
