cask "koan-app" do
  version "0.25.1"
  sha256 ""

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
