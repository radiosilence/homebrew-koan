cask "koan-app" do
  version "0.60.12"
  sha256 "78d1ed1cfdc2b31b23410a93885198c4528cebfb81298fea21b48de415597673"

  url "https://github.com/radiosilence/koan/releases/download/v#{version}/Koan.dmg"
  name "koan"
  desc "Bit-perfect music player"
  homepage "https://github.com/radiosilence/koan"

  depends_on macos: :tahoe

  app "kōan.app"

  zap trash: "~/.config/koan"
end
