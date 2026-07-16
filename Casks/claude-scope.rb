cask "claude-scope" do
  version "0.2.0"
  sha256 "46108feadd1db740c3ce5a38dd86ec8d8afc69ce0baa353711767078bd5553be"

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
