cask "claude-scope" do
  version "0.2.4"
  sha256 "8c9ce0a0aacd21fff7abbd4086801789434f5b656defd371cee1d3e862665406"

  url "https://github.com/Kevin-Wei-sudo/claude-scope/releases/download/v#{version}/ClaudeScope.dmg"
  name "ClaudeScope"
  desc "macOS menu bar app for Claude usage tracking"
  homepage "https://github.com/Kevin-Wei-sudo/claude-scope"

  auto_updates true
  depends_on macos: :sonoma

  app "ClaudeScope.app"

  zap trash: [
    "~/.config/claude-scope",
    "~/Library/Preferences/com.local.ClaudeScope.plist",
  ]
end
