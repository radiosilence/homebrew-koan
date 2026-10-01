cask "koan-app" do
  version "0.47.0"
  sha256 "966463bc2bc550dd8f4946eb7bea93e2fa8e584e794be3c0310200bc8dbabab3"

  url "https://github.com/radiosilence/koan/releases/download/v#{version}/Koan.dmg"
  name "koan"
  desc "Bit-perfect music player"
  homepage "https://github.com/radiosilence/koan"

  depends_on macos: :tahoe

  app "kōan.app"

  zap trash: "~/.config/koan"
end
