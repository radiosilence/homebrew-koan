cask "koan-app" do
  version "0.48.2"
  sha256 "86623ad3dae56d11ea0b3952cfd10cf60c5b01f6ab992113e952bcc074a0f0e3"

  url "https://github.com/radiosilence/koan/releases/download/v#{version}/Koan.dmg"
  name "koan"
  desc "Bit-perfect music player"
  homepage "https://github.com/radiosilence/koan"

  depends_on macos: :tahoe

  app "kōan.app"

  zap trash: "~/.config/koan"
end
