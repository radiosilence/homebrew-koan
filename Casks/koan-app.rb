cask "koan-app" do
  version "0.61.3"
  sha256 "3e7bb381c4415c9afd928a7530c9654990ed00a4528f9ec57171cc75f90a6286"

  url "https://github.com/radiosilence/koan/releases/download/v#{version}/Koan.dmg"
  name "koan"
  desc "Bit-perfect music player"
  homepage "https://github.com/radiosilence/koan"

  depends_on macos: :tahoe

  app "kōan.app"

  zap trash: "~/.config/koan"
end
