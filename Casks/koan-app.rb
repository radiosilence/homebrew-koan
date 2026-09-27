cask "koan-app" do
  version "0.36.1"
  sha256 "823b0f8a6609dcb4b25db24bc68585e3cae890195ffaf70333ee8844aaca3f8a"

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
