cask "koan-app" do
  version "0.66.3"
  sha256 "33f9ab053d46a7b62db3d48295ce886cb14a1e39bf833e52ee4c54c29e09dd1b"

  url "https://github.com/radiosilence/koan/releases/download/v#{version}/Koan.dmg"
  name "koan"
  desc "Bit-perfect music player"
  homepage "https://github.com/radiosilence/koan"

  depends_on macos: :tahoe

  app "kōan.app"

  zap trash: "~/.config/koan"
end
