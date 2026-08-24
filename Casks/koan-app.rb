cask "koan-app" do
  version "0.27.0"
  sha256 "cf1cdc22c3806d9cd7b26d8dd340c88feaf8db58effd60c6e9c49e0409f76401"

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
