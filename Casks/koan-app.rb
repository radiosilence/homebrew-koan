cask "koan-app" do
  version "0.54.0"
  sha256 "7783c6b6c9d5b0b237fb204ddf0f858fabd7948b11d42dc2d6fd5509e67da4cc"

  url "https://github.com/radiosilence/koan/releases/download/v#{version}/Koan.dmg"
  name "koan"
  desc "Bit-perfect music player"
  homepage "https://github.com/radiosilence/koan"

  depends_on macos: :tahoe

  app "kōan.app"

  zap trash: "~/.config/koan"
end
