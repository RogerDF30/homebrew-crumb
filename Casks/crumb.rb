cask "crumb" do
  version "2.1.8"
  sha256 "cc24070489fb47376b66fd99bb6016eb931085f1f4528ff149f0de3f1cde04d1"

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
