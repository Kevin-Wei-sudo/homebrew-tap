cask "claude-scope" do
  version "0.1.0"
  sha256 "22d4febd9cd36e815d13b4807feda14c127d709d303cdd025e9f5ea14bf7759c"

  url "https://github.com/Kevin-Wei-sudo/claude-scope/releases/download/v#{version}/ClaudeScope.dmg",
      verified: "github.com/Kevin-Wei-sudo/claude-scope/"
  name "ClaudeScope"
  desc "macOS menu bar app for Claude usage tracking"
  homepage "https://github.com/Kevin-Wei-sudo/claude-scope"

  auto_updates true
  depends_on macos: ">= :sonoma"

  app "ClaudeScope.app"

  zap trash: [
    "~/.config/claude-scope",
    "~/Library/Preferences/com.local.ClaudeScope.plist",
  ]
end
