cask "koan-app" do
  version "0.47.1"
  sha256 "22d9d07b22ca32ada6a3ef0ef760a50f86d673a6f22e811ba4533b81776a11ab"

  url "https://github.com/radiosilence/koan/releases/download/v#{version}/Koan.dmg"
  name "koan"
  desc "Bit-perfect music player"
  homepage "https://github.com/radiosilence/koan"

  depends_on macos: :tahoe

  app "kōan.app"

  zap trash: "~/.config/koan"
end
