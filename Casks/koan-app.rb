cask "koan-app" do
  version "0.26.0"
  sha256 "b76d95f57ef6b86283209dcbe81048bc81460805b06c02280447c23b79f12ca2"

  url "https://github.com/radiosilence/koan/releases/download/v#{version}/Koan.dmg"
  name "koan"
  desc "Bit-perfect music player for macOS"
  homepage "https://github.com/radiosilence/koan"

  depends_on macos: ">= :sonoma"

  app "kōan.app"

  # Ad-hoc signed, not notarised — without this Gatekeeper quarantines it.
  postflight do
    system_command "/usr/bin/xattr", args: ["-cr", "#{appdir}/kōan.app"]
  end

  zap trash: [
    "~/.config/koan",
  ]
end
