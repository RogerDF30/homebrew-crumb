<p align="center">
  <img src="https://rogerdf30.github.io/crumb-updates/logo/crumb-icon.png" width="128" alt="Crumb logo">
</p>

<h1 align="center">Homebrew tap for Crumb</h1>

<p align="center">
  <em>Drop a thought. Keep working.</em>
</p>

---

This is the [Homebrew](https://brew.sh) tap for
[Crumb](https://rogerio412.gumroad.com/l/crumb) — translucent floating
sticky notes for macOS.

## Install

```bash
brew install --cask RogerDF30/crumb/crumb
```

That's it. `brew` adds the tap automatically, downloads the latest
notarized DMG, mounts it, and copies `Crumb.app` to `/Applications`.

## Upgrade

```bash
brew upgrade --cask crumb
```

(Or just let Crumb's built-in auto-updater handle it — every shipped
version after 2.0 includes Sparkle.)

## Uninstall

```bash
brew uninstall --cask crumb           # removes the app
brew uninstall --cask --zap crumb     # removes app + all preferences + saved crumbs
```

## What you're installing

- **Crumb** — translucent floating sticky-notes app for macOS
- Apple Silicon, macOS 13 (Ventura) or later
- Signed with Developer ID, notarized by Apple
- Auto-update via Sparkle, EdDSA-signed
- No accounts, no telemetry, no analytics

## Cask formula

The cask formula lives at [`Casks/crumb.rb`](Casks/crumb.rb). DMG
releases live on
[`RogerDF30/crumb-updates`](https://github.com/RogerDF30/crumb-updates).

## Source code + ops

- App source (private): https://github.com/RogerDF30/crumb
- Update feed (public): https://github.com/RogerDF30/crumb-updates
- Operations manual (private): https://github.com/RogerDF30/crumb-ops
