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

### opscope

Terminal widgets showing real operational data, for Apple Silicon and Intel Macs.

```sh
brew install stealth-factory/tap/opscope
opscope                      # open the menu
opscope clocks               # open a widget directly
opscope doctor               # check optional external tools
brew update && brew upgrade opscope
```

Only `opscope` is exposed on PATH. The native launcher and all widgets ship
together; no Node or Rust installation is needed. Settings stay in
`~/.config/opscope/config.json` (or the configured override) across upgrades.

The formula is generated and updated by
[opscope's release workflow](https://github.com/stealth-factory/opscope/blob/main/.github/workflows/release.yml)
from its checksummed public Mac release archives. The initial formula must be
merged into this tap's `main` branch before the release updater can run. The
updater edits only `Formula/opscope.rb`, verifies the existing version, and refuses
to downgrade or replace different formula bytes for the same version.

Homebrew and [APT](https://github.com/stealth-factory/apt-repo) receive updates
from the same published Opscope release. Homebrew uses the two Mac archives;
APT uses the Linux amd64 Debian package and requires its signing/publishing
activation. A failure in either delivery job needs separate recovery; a GitHub
release alone does not prove both package managers are updated.

[Repository and documentation](https://github.com/stealth-factory/opscope)

## Migrating from the personal tap

If you previously used `wiiiimm/tap`, switch to the organization tap:

```bash
brew tap stealth-factory/tap
brew reinstall stealth-factory/tap/gh-manager-cli
```

Keep the old tap if you still use other formulae from it. Once all installed
formulae have been migrated, you can remove it with `brew untap wiiiimm/tap`.

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
