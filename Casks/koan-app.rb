cask "koan-app" do
  version "0.61.13"
  sha256 "e66460b953c764f3b622c4b82536acc841b04f0bf08efef54688cedf06ec176d"

  url "https://github.com/radiosilence/koan/releases/download/v#{version}/Koan.dmg"
  name "koan"
  desc "Bit-perfect music player"
  homepage "https://github.com/radiosilence/koan"

  depends_on macos: :tahoe

  app "kōan.app"

  zap trash: "~/.config/koan"
end
