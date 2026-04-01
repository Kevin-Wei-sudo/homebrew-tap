cask "claude-scope" do
  version "0.1.1"
  sha256 "ba8405d8772b0ffe1f5e0c839cba4a73314ef48d507c90416d754d740969354b"

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
