cask "aonsoku" do
  arch arm: "arm64", intel: "x64"

  version "0.13.0"

  sha256 arm: "5107a0e76cbc6a83bea86e05a73dca75d0bd829a9dbee60f11c737739cc5f3d5",
         intel: "8bece4d6674449f4e3be2ee00203a04cf9a1fb6949940e38237f99571a2c4245"

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
