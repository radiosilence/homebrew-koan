cask "koan-app" do
  version "0.46.1"
  sha256 "899e2a9542d1922516c026777fd45f88bd66feb88f2bc90af08223a0639cc6f7"

  url "https://github.com/radiosilence/koan/releases/download/v#{version}/Koan.dmg"
  name "koan"
  desc "Bit-perfect music player"
  homepage "https://github.com/radiosilence/koan"

  depends_on macos: :tahoe

  app "kōan.app"

  zap trash: "~/.config/koan"
end
