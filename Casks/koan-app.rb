cask "koan-app" do
  version "0.36.0"
  sha256 "1dec82bec576fa15e78db1341853d13523688746bd1cab2a4e0ab3ef9c9632a1"

  url "https://github.com/radiosilence/koan/releases/download/v#{version}/Koan.dmg"
  name "koan"
  desc "Bit-perfect music player"
  homepage "https://github.com/radiosilence/koan"

  depends_on macos: :tahoe

  app "kōan.app"

  # Ad-hoc signed, not notarised — without this Gatekeeper quarantines it.
  postflight_steps do
    run "/usr/bin/xattr", args: ["-cr", "{{appdir}}/kōan.app"], writable_paths: ["kōan.app"], writable_base: :appdir
  end

  zap trash: "~/.config/koan"
end
