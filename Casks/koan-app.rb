cask "koan-app" do
  version "0.30.0"
  sha256 "7e2b0c27f30f566190e122a987df3eccb597dfc4425b6b7aca00518ab154d9b4"

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
