cask "koan-app" do
  version "0.56.0"
  sha256 "a5bb72e202abc83f5492d0097f5d146ced7bdcc6878090c4ed30793c1bdc4ac6"

  url "https://github.com/radiosilence/koan/releases/download/v#{version}/Koan.dmg"
  name "koan"
  desc "Bit-perfect music player"
  homepage "https://github.com/radiosilence/koan"

  depends_on macos: :tahoe

  app "kōan.app"

  zap trash: "~/.config/koan"
end
