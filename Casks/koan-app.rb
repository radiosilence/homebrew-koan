cask "koan-app" do
  version "0.54.1"
  sha256 "486b3813362ddbe042500f966ee79e0348a8441f50f8774f165299725b528a88"

  url "https://github.com/radiosilence/koan/releases/download/v#{version}/Koan.dmg"
  name "koan"
  desc "Bit-perfect music player"
  homepage "https://github.com/radiosilence/koan"

  depends_on macos: :tahoe

  app "kōan.app"

  zap trash: "~/.config/koan"
end
