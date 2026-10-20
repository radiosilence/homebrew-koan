cask "koan-app" do
  version "0.66.2"
  sha256 "dc2c2250670ef0f624ad99c9c876988636ebc45f3f1410dd5149cac9c530eab3"

  url "https://github.com/radiosilence/koan/releases/download/v#{version}/Koan.dmg"
  name "koan"
  desc "Bit-perfect music player"
  homepage "https://github.com/radiosilence/koan"

  depends_on macos: :tahoe

  app "kōan.app"

  zap trash: "~/.config/koan"
end
