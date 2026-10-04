cask "koan-app" do
  version "0.52.3"
  sha256 "7eedefd91d34db108c69f44b15bddf6e2365ecb1caed8cb4bf6b84644133d7ae"

  url "https://github.com/radiosilence/koan/releases/download/v#{version}/Koan.dmg"
  name "koan"
  desc "Bit-perfect music player"
  homepage "https://github.com/radiosilence/koan"

  depends_on macos: :tahoe

  app "kōan.app"

  zap trash: "~/.config/koan"
end
