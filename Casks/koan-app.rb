cask "koan-app" do
  version "0.67.6"
  sha256 "a28c3620290210d4e8670d7fd79b59d454277794767dab6c08e3fb7755056c52"

  url "https://github.com/radiosilence/koan/releases/download/v#{version}/Koan.dmg"
  name "koan"
  desc "Bit-perfect music player"
  homepage "https://github.com/radiosilence/koan"

  depends_on macos: :tahoe

  app "kōan.app"

  zap trash: "~/.config/koan"
end
