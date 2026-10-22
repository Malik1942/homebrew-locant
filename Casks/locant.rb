cask "locant" do
  version "1.0.1"
  sha256 "1fb553443ebe97e36bd43e7c050b93ba8269989ca555614a039bfe70a0bfe28a"

  url "https://github.com/Malik1942/locant/releases/download/v#{version}/Locant-#{version}.dmg"
  name "Locant"
  desc "Point at any UI element and hand a coding agent a grep-able reference"
  homepage "https://locant.malikzhang.com/"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on macos: :sequoia

  app "Locant.app"

  # The captures in ~/Pictures/Locant are the user's and stay; the README's Uninstall section says
  # how to remove them, the two privacy grants, and the MCP entries in the agents' configurations.
  zap trash: [
    "~/Library/Preferences/com.malikzhang.deixis.plist",
    "~/Library/Saved Application State/com.malikzhang.deixis.savedState",
  ]
end
