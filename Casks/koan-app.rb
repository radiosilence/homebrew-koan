cask "koan-app" do
  version "0.30.2"
  sha256 "f2c81cb68445dc2b474a3d8d508819bb0cc64272cde383d2195dfd18f8d4fdfd"

  url "https://github.com/radiosilence/koan/releases/download/v#{version}/Koan.dmg"
  name "koan"
  desc "Bit-perfect music player"
  homepage "https://github.com/radiosilence/koan"

  depends_on macos: :tahoe

  app "kōan.app"

  # Ad-hoc signed, not notarised — without this Gatekeeper quarantines it.
  postflight do
    system_command "/usr/bin/xattr", args: ["-cr", "#{appdir}/kōan.app"]
  end

  zap trash: "~/.config/koan"
end
