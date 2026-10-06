cask "koan-app" do
  version "0.54.2"
  sha256 "052eeb4bcc5299fa2cefeba1e6df920d6487bc03337cb2fa616a573a1bbb992f"

  url "https://github.com/radiosilence/koan/releases/download/v#{version}/Koan.dmg"
  name "koan"
  desc "Bit-perfect music player"
  homepage "https://github.com/radiosilence/koan"

  depends_on macos: :tahoe

  app "kōan.app"

  zap trash: "~/.config/koan"
end
