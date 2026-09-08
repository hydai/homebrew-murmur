cask "murmur" do
  version "0.2.17"
  sha256 "60a2e9e049de92869ae3d5d9fca599ef84091dd1bcad6aca8167e871f5686dfc"

  url "https://github.com/hydai/murmur/releases/download/v#{version}/Murmur_#{version}_aarch64.dmg"
  name "Murmur"
  desc "Privacy-first BYOK voice typing app"
  homepage "https://github.com/hydai/murmur"

  depends_on macos: :tahoe
  depends_on arch: :arm64

  app "Murmur.app"
  auto_updates true

  zap trash: [
    "~/Library/Application Support/com.hydai.murmur",
    "~/Library/Caches/com.hydai.murmur",
    "~/Library/Preferences/com.hydai.murmur.plist",
  ]
end
