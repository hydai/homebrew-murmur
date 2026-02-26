cask "murmur" do
  version "0.2.9"
  sha256 "02eb9651319594004777f489380a1b904d4686c2b0763df935b0e81f2aeae8b5"

  url "https://github.com/hydai/murmur/releases/download/v#{version}/Murmur_#{version}_aarch64.dmg"
  name "Murmur"
  desc "Privacy-first BYOK voice typing app"
  homepage "https://github.com/hydai/murmur"

  depends_on macos: ">= :catalina"
  depends_on arch: :arm64

  app "Murmur.app"
  auto_updates true

  zap trash: [
    "~/Library/Application Support/com.hydai.murmur",
    "~/Library/Caches/com.hydai.murmur",
    "~/Library/Preferences/com.hydai.murmur.plist",
  ]
end
