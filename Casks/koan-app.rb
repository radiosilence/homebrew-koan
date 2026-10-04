cask "koan-app" do
  version "0.52.5"
  sha256 "0af6e0edbb5db7f25feab0824ac7cd3b7fe94260f2b2adb56980336ea441dad0"

  url "https://github.com/radiosilence/koan/releases/download/v#{version}/Koan.dmg"
  name "koan"
  desc "Bit-perfect music player"
  homepage "https://github.com/radiosilence/koan"

  depends_on macos: :tahoe

  app "kōan.app"

  zap trash: "~/.config/koan"
end
