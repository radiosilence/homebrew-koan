cask "koan-app" do
  version "0.29.0"
  sha256 "cbebe83a187d4705b291752123fbf74e8d16e021d52c75172ce72d46e5379da0"

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
