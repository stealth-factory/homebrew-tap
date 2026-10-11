# Stealth Factory's Homebrew Tap

This tap contains formulae for tools maintained by Stealth Factory.

## Installation

```bash
brew tap stealth-factory/tap
```

## Available Formulae

### gh-manager-cli

Interactive terminal UI for managing GitHub repositories.

```bash
# Install
brew install gh-manager-cli

# Or install directly without tapping
brew install stealth-factory/tap/gh-manager-cli
```

**Features:**
- Browse and manage personal GitHub repositories
- Sort, filter, and search repositories
- Archive/unarchive and delete repositories
- Sync forks with upstream
- Organization support

**Links:**
- [GitHub Repository](https://github.com/stealth-factory/gh-manager-cli)
- [npm Package](https://www.npmjs.com/package/gh-manager-cli)

## Migrating from the personal tap

If you previously used `wiiiimm/tap`, switch to the organization tap:

```bash
brew untap wiiiimm/tap
brew tap stealth-factory/tap
brew reinstall stealth-factory/tap/gh-manager-cli
```

## Updating

```bash
brew update
brew upgrade gh-manager-cli
```

## Troubleshooting

If you encounter issues:

```bash
brew uninstall gh-manager-cli
brew untap stealth-factory/tap
brew tap stealth-factory/tap
brew install gh-manager-cli
```

## License

All formulae are subject to their respective licenses. See individual formula files for details.