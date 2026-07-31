cask "claude-scope" do
  version "0.4.3"
  sha256 "15b6c01fd787f9cac404ff1155e4cd318d784f5af143a6b0496118c99e5f844d"

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
