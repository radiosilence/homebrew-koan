cask "koan-app" do
  version "0.55.0"
  sha256 "969ad50c802260f28208d748fe6253207ffecd39f5435e27261cf553ba2d2880"

  url "https://github.com/radiosilence/koan/releases/download/v#{version}/Koan.dmg"
  name "koan"
  desc "Bit-perfect music player"
  homepage "https://github.com/radiosilence/koan"

  depends_on macos: :tahoe

  app "kōan.app"

  zap trash: "~/.config/koan"
end
