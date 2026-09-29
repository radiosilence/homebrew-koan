cask "koan-app" do
  version "0.42.1"
  sha256 "fba8ce6c2e5666b070ebefe38d852a128904124f62b545bbeeb8e7625c36fdb6"

  url "https://github.com/radiosilence/koan/releases/download/v#{version}/Koan.dmg"
  name "koan"
  desc "Bit-perfect music player"
  homepage "https://github.com/radiosilence/koan"

  depends_on macos: :tahoe

  app "kōan.app"

  zap trash: "~/.config/koan"
end
