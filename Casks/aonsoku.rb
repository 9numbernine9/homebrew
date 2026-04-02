cask "aonsoku" do
  arch arm: "arm64", intel: "x64"

  version "0.14.0"

  sha256 arm: "ad4e7eb62e8d30b708e6e24f15ded1fd9188c67771773b420d97988d5778725f",
         intel: "028783a5f3756fe09414436e415e65af9576fd861d1e2cacfc6c91c2798dd397"

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
