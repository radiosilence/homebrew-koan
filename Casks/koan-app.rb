cask "koan-app" do
  version "0.52.1"
  sha256 "68418f7d6cdf1b4a787bbf5e55b8b3b3b10634ab5105ea80db7dfa3474245342"

  url "https://github.com/radiosilence/koan/releases/download/v#{version}/Koan.dmg"
  name "koan"
  desc "Bit-perfect music player"
  homepage "https://github.com/radiosilence/koan"

  depends_on macos: :tahoe

  app "kōan.app"

  zap trash: "~/.config/koan"
end
