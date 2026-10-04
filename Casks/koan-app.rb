cask "koan-app" do
  version "0.51.0"
  sha256 "0f2767265028f35e45e66aa8e75817461e96d37b01028ff86f47fab6ccf9fafe"

  url "https://github.com/radiosilence/koan/releases/download/v#{version}/Koan.dmg"
  name "koan"
  desc "Bit-perfect music player"
  homepage "https://github.com/radiosilence/koan"

  depends_on macos: :tahoe

  app "kōan.app"

  zap trash: "~/.config/koan"
end
