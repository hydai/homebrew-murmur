# homebrew-murmur

Homebrew tap for [Murmur](https://github.com/hydai/murmur) — a privacy-first BYOK voice typing app.

## Installation

```bash
brew tap hydai/murmur
brew install --cask murmur
```

After installation, clear the quarantine attribute (unsigned app):

```bash
xattr -cr /Applications/Murmur.app
```

## Updating

Murmur includes a built-in auto-updater. You can also update via Homebrew:

```bash
brew upgrade --cask murmur
```

## Uninstalling

```bash
brew uninstall --cask murmur

# To also remove app data:
brew uninstall --zap --cask murmur
```
