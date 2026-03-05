# 9numbernine9's Homebrew Casks

This is a [Homebrew](https://brew.sh/) tap (third-party repository) for various pplications.

## Usage

To install this tap:

```sh
brew tap 9numbernine9/homebrew https://github.com/9numbernine9/homebrew
```

## Applications

The following applications are supported by this repo:

### Aonsoku

_A modern desktop client for Navidrome/Subsonic servers built with React and Electron._

https://github.com/victoralvesf/aonsoku

```sh
brew install aonsoku

# Remove the quarantine attribute (Fixes "App is damaged")
sudo xattr -cr /Applications/Aonsoku.app

# Re-sign the application locally (Fixes immediate crashes/library errors)
sudo codesign --force --deep --sign - /Applications/Aonsoku.app
```
