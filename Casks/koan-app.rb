cask "koan-app" do
  version "0.67.1"
  sha256 "75c4435178e0a753c73070863fd7565f47f27e7d690b4b5ee7be235a1f687215"

  url "https://github.com/radiosilence/koan/releases/download/v#{version}/Koan.dmg"
  name "koan"
  desc "Bit-perfect music player"
  homepage "https://github.com/radiosilence/koan"

  depends_on macos: :tahoe

  app "kōan.app"

  zap trash: "~/.config/koan"
end
