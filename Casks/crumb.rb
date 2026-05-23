cask "crumb" do
  version "2.1.3"
  sha256 "91209a662b336a042a198952e3c2469759598ca3304e4870f3b6fcdbb08d7bd7"

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
