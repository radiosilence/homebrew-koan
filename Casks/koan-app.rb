cask "koan-app" do
  version "0.61.12"
  sha256 "86ac66d7e9abebc46f26b245db1a359f9b0009691a33e59d470f9f6f58a7e8cd"

  url "https://github.com/radiosilence/koan/releases/download/v#{version}/Koan.dmg"
  name "koan"
  desc "Bit-perfect music player"
  homepage "https://github.com/radiosilence/koan"

  depends_on macos: :tahoe

  app "kōan.app"

  zap trash: "~/.config/koan"
end
