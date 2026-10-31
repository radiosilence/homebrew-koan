cask "koan-app" do
  version "0.68.0"
  sha256 "f0d3140e605774a3f549effc9c388ebb1e73fff12b2b9c901449ddf3390e6d26"

  url "https://github.com/radiosilence/koan/releases/download/v#{version}/Koan.dmg"
  name "koan"
  desc "Bit-perfect music player"
  homepage "https://github.com/radiosilence/koan"

  depends_on macos: :tahoe

  app "kōan.app"

  zap trash: "~/.config/koan"
end
