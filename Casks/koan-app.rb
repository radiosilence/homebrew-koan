cask "koan-app" do
  version "0.31.2"
  sha256 "86f34da2ead6037fc15a80e767a60fbbc72a56fa374b0ebd1144d0ed458ddc6b"

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
