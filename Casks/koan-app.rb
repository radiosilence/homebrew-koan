cask "koan-app" do
  version "0.67.0"
  sha256 "d2a1f32694da16825fbe9c75257a9d058aa14cee952ea8996fc61e326b809969"

  url "https://github.com/radiosilence/koan/releases/download/v#{version}/Koan.dmg"
  name "koan"
  desc "Bit-perfect music player"
  homepage "https://github.com/radiosilence/koan"

  depends_on macos: :tahoe

  app "kōan.app"

  zap trash: "~/.config/koan"
end
