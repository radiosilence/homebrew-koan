cask "koan-app" do
  version "0.66.7"
  sha256 "b68aa90b3de28af16c47b932f08b0f41cb8de5905c381a26ed9139ca1812f1f4"

  url "https://github.com/radiosilence/koan/releases/download/v#{version}/Koan.dmg"
  name "koan"
  desc "Bit-perfect music player"
  homepage "https://github.com/radiosilence/koan"

  depends_on macos: :tahoe

  app "kōan.app"

  zap trash: "~/.config/koan"
end
