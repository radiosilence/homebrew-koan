cask "koan-app" do
  version "0.35.3"
  sha256 "191300030eb9c89b7b52556e7059afa42f22f2a8c64920770ce3af28e3a0035a"

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
