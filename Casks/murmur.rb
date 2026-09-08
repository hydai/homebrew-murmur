cask "murmur" do
  version "0.2.16"
  sha256 "dcec2e2e7fb5b41ae2c8c158298b53e790eeefc1e65537757d3a136e85a2103d"

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
