cask "koan-app" do
  version "0.36.10"
  sha256 "c8ec1681f328354f79c07b5976a8dc5ebb9002f42abae873d580cb38c05384ca"

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
