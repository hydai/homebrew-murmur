cask "murmur" do
  version "0.2.15"
  sha256 "852ea09f1e8dc3c372835eefb41880621e94430c513070ed3aeb33a8200a866e"

  url "https://github.com/hydai/murmur/releases/download/v#{version}/Murmur_#{version}_aarch64.dmg"
  name "Murmur"
  desc "Privacy-first BYOK voice typing app"
  homepage "https://github.com/hydai/murmur"

  depends_on :macos
  depends_on arch: :arm64

  app "Murmur.app"
  auto_updates true

  zap trash: [
    "~/Library/Application Support/com.hydai.murmur",
    "~/Library/Caches/com.hydai.murmur",
    "~/Library/Preferences/com.hydai.murmur.plist",
  ]
end
