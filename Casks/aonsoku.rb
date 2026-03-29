cask "aonsoku" do
  arch arm: "arm64", intel: "x64"

  version "0.13.0"

  sha256 arm: "5107a0e76cbc6a83bea86e05a73dca75d0bd829a9dbee60f11c737739cc5f3d5",
         intel: "b96f36c39513d00ae5f54e25b347115c4ae73304638ca7a7dbb6361ae3baf245"

  url "https://github.com/victoralvesf/aonsoku/releases/download/v#{version}/Aonsoku-v#{version}-mac-#{arch}.dmg",
      verified: "github.com/victoralvesf/aonsoku/"
  name "aonsoku"
  desc "A modern desktop client for Navidrome/Subsonic servers built with React and Electron. "
  homepage "https://github.com/victoralvesf/aonsoku"

  livecheck do
    url :url
    strategy :github_releases
  end

  app "Aonsoku.app"

  zap trash: [
    "~/Library/Application Support/Aonsoku",
    "~/Library/Preferences/com.victoralvesf.aonsoku.plist",
  ]
end
