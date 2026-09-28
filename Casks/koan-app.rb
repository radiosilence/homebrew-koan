cask "koan-app" do
  version "0.38.2"
  sha256 "f41ad11ef4756bc149f45101cd7b7eae20f4e1ec328b2944f0b4e385a2257aac"

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
