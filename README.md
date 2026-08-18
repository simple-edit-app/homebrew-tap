# SimpleEdit Homebrew Tap

Homebrew cask for [SimpleEdit](https://github.com/simple-edit-app/simpleedit) — a fast,
stable text editor for macOS and Linux, built in Rust.

## Install

```bash
brew install --cask simple-edit-app/tap/simpleedit
```

This installs `SimpleEdit.app` into `/Applications` and links the `simpleedit`
command onto your `PATH`.

## Uninstall

```bash
brew uninstall --cask simpleedit
```

Add `--zap` to remove your settings as well:

```bash
brew uninstall --zap --cask simpleedit
```

## Gatekeeper

The app is signed ad-hoc but not notarised. If macOS blocks the first launch,
right-click the app and choose **Open**, or clear the quarantine flag:

```bash
xattr -dr com.apple.quarantine /Applications/SimpleEdit.app
```

## Requirements

- macOS 11 (Big Sur) or newer
- Apple Silicon (arm64)

## Maintenance

`Casks/simpleedit.rb` is updated automatically by the `update-tap` job in the
[main repository's release workflow](https://github.com/simple-edit-app/simpleedit/blob/main/.github/workflows/release.yml)
whenever a `v*.*.*` tag is pushed. Manual edits are normally unnecessary.

## License

MIT
