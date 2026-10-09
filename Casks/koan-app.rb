cask "koan-app" do
  version "0.61.9"
  sha256 "150867027740b440653e73d5de159eeb0ce2205b702adfe8a6aa9c39dfafc6b5"

  url "https://github.com/radiosilence/koan/releases/download/v#{version}/Koan.dmg"
  name "koan"
  desc "Bit-perfect music player"
  homepage "https://github.com/radiosilence/koan"

  depends_on macos: :tahoe

  app "kōan.app"

  zap trash: "~/.config/koan"
end
