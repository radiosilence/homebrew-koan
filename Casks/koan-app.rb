cask "koan-app" do
  version "0.50.3"
  sha256 "67ca7f614ee788087d4522a295c3e8deec1c4f3fd90298cc8edebca71410cfb1"

  url "https://github.com/radiosilence/koan/releases/download/v#{version}/Koan.dmg"
  name "koan"
  desc "Bit-perfect music player"
  homepage "https://github.com/radiosilence/koan"

  depends_on macos: :tahoe

  app "kōan.app"

  zap trash: "~/.config/koan"
end
