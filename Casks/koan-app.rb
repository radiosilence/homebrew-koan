cask "koan-app" do
  version "0.61.0"
  sha256 "fc587080bf0f33fed86f32a1408b0c071d18e06d2cde61228636794ed29368a4"

  url "https://github.com/radiosilence/koan/releases/download/v#{version}/Koan.dmg"
  name "koan"
  desc "Bit-perfect music player"
  homepage "https://github.com/radiosilence/koan"

  depends_on macos: :tahoe

  app "kōan.app"

  zap trash: "~/.config/koan"
end
