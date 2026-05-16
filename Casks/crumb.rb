cask "crumb" do
  version "2.0.3"
  sha256 "79e51a352fba40d8bfe0e953124df6b06b8c258e7042c416debf4697322933e6"

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
