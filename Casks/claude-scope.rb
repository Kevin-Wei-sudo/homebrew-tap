cask "claude-scope" do
  version "0.4.2"
  sha256 "80908f5d427bcbafd9ad3feb7c607b39041976cbcfc1b079788145de0cbe373d"

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
