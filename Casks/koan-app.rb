cask "koan-app" do
  version "0.69.2"
  sha256 "a86ff8c1f69315fac04007ee9c5af470c553fdb3ae0d3ce140f3dd7ee7fe506b"

  url "https://github.com/radiosilence/koan/releases/download/v#{version}/Koan.dmg"
  name "koan"
  desc "Bit-perfect music player"
  homepage "https://github.com/radiosilence/koan"

  depends_on macos: :tahoe

  app "kōan.app"

  zap trash: "~/.config/koan"
end
