cask "koan-app" do
  version "0.65.1"
  sha256 "4b88aa6b3f1ed18ea96d560d1ef0044bf90eb7e236199237dc840ad56ee21972"

  url "https://github.com/radiosilence/koan/releases/download/v#{version}/Koan.dmg"
  name "koan"
  desc "Bit-perfect music player"
  homepage "https://github.com/radiosilence/koan"

  depends_on macos: :tahoe

  app "kōan.app"

  zap trash: "~/.config/koan"
end
