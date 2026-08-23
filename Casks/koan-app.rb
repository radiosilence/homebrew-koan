cask "koan-app" do
  version "0.25.2"
  sha256 "6b0f3c63c30a274b3fc8cb7f4eccc0d65d7c13836d012000e5bee7f5583d8e4e"

  url "https://github.com/radiosilence/koan/releases/download/v#{version}/Koan.dmg"
  name "koan"
  desc "Bit-perfect music player for macOS"
  homepage "https://github.com/radiosilence/koan"

  depends_on macos: ">= :sonoma"

  app "Koan.app"

  # Ad-hoc signed, not notarised — without this Gatekeeper quarantines it.
  postflight do
    system_command "/usr/bin/xattr", args: ["-cr", "#{appdir}/Koan.app"]
  end

  zap trash: [
    "~/.config/koan",
  ]
end
