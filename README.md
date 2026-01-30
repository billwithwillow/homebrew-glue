# Homebrew Tap for Glue

This is the official Homebrew tap for [Glue](https://github.com/billwithwillow/glue) - a dev-only UI annotation tool with source-linked element IDs.

## Installation

```bash
brew tap billwithwillow/glue
brew install --cask glue
```

This will install:
- `Glue.app` in `/Applications`
- `glue` CLI available globally

## Usage

After installation:

```bash
# Initialize Glue in your project
glue init

# Run your dev server with Glue instrumentation
glue -- npm run dev

# Export annotations for coding agents
glue handoff
```

## Updating

```bash
brew update
brew upgrade --cask glue
```

## Uninstalling

```bash
brew uninstall --cask glue
```

## About

Glue helps you annotate UI elements in your web applications and export them with source-linked context for coding agents like Cursor and Claude Code.

Binary releases are hosted at [billwithwillow/glue-releases](https://github.com/billwithwillow/glue-releases).
