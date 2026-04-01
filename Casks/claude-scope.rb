cask "claude-scope" do
  version "0.1.2"
  sha256 "d5b119fd477b4a7739ee108df727fd5039504bec07d65120d32f082f0fac40e7"

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
