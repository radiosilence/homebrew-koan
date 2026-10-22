cask "koan-app" do
  version "0.67.2"
  sha256 "93054784de939e6224776a1f883803ab88133b5219b69ab2ead759222fa11aaa"

  url "https://github.com/radiosilence/koan/releases/download/v#{version}/Koan.dmg"
  name "koan"
  desc "Bit-perfect music player"
  homepage "https://github.com/radiosilence/koan"

  depends_on macos: :tahoe

  app "kōan.app"

  zap trash: "~/.config/koan"
end
