cask "crumb" do
  version "2.1.5"
  sha256 "21f50aec3cb2e14486c9878d87860824abbf098956e7b72f575ee7da1102bf91"

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
