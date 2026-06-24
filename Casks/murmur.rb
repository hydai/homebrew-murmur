cask "murmur" do
  version "0.2.14"
  sha256 "25983b438f519a50a0c1e4227444f2df92d1cfaef5ea90c916275424fe5a4eb4"

  url "https://github.com/hydai/murmur/releases/download/v#{version}/Murmur_#{version}_aarch64.dmg"
  name "Murmur"
  desc "Privacy-first BYOK voice typing app"
  homepage "https://github.com/hydai/murmur"

  depends_on macos: :catalina
  depends_on arch: :arm64

  app "Murmur.app"
  auto_updates true

  zap trash: [
    "~/Library/Application Support/com.hydai.murmur",
    "~/Library/Caches/com.hydai.murmur",
    "~/Library/Preferences/com.hydai.murmur.plist",
  ]
end
