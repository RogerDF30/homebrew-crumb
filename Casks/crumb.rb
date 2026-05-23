cask "crumb" do
  version "2.1.2"
  sha256 "b6218c1a9e535a32bafbc43c40cb567b683446cfb2cbc9c3dd38d239d4b00243"

  url "https://github.com/RogerDF30/crumb-updates/releases/download/v#{version}/Crumb-#{version}.dmg"
  name "Crumb"
  desc "Translucent floating sticky notes for macOS — drop a thought, keep working"
  homepage "https://rogerio412.gumroad.com/l/crumb"

  livecheck do
    url "https://github.com/RogerDF30/crumb-updates/releases.atom"
    strategy :github_latest
  end

  auto_updates true
  depends_on macos: ">= :ventura"

  app "Crumb.app"

  zap trash: [
    "~/Library/Application Support/Crumb",
    "~/Library/Preferences/io.companystore.Crumb.plist",
    "~/Library/Caches/io.companystore.Crumb",
  ]
end
