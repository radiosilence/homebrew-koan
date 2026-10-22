cask "koan-app" do
  version "0.66.6"
  sha256 "ac499038645281c3ba388437b2a83e1eb357f68030da144e07b8d7c143657066"

  url "https://github.com/radiosilence/koan/releases/download/v#{version}/Koan.dmg"
  name "koan"
  desc "Bit-perfect music player"
  homepage "https://github.com/radiosilence/koan"

  depends_on macos: :tahoe

  app "kōan.app"

  zap trash: "~/.config/koan"
end
