cask "koan-app" do
  version "0.52.0"
  sha256 "0adf3818df6f6e20cfd4267716b54807578da8abf89ef9f7314cc34928ef01dd"

  url "https://github.com/radiosilence/koan/releases/download/v#{version}/Koan.dmg"
  name "koan"
  desc "Bit-perfect music player"
  homepage "https://github.com/radiosilence/koan"

  depends_on macos: :tahoe

  app "kōan.app"

  zap trash: "~/.config/koan"
end
