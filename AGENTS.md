# Dotfiles

This document provides context and instructions for AI coding agents working with this repository.

## Overview

This is a **personal dotfiles repository** for macOS, managed with [chezmoi](https://chezmoi.io). It contains configuration files, shell scripts, and automation for setting up and maintaining a development environment.

### Profiles

The repository supports **two profiles** configured during initial setup:

1. **`personal`**: Personal machine setup
   - Excludes Docker configuration (`dot_config/docker/`)
   - Uses personal Git configuration settings
   - Installs personal Homebrew packages

2. **`work`**: Work machine setup
   - Includes Docker configuration
   - Includes work-specific encrypted aliases (`.work_aliases.age`)
   - Runs work-specific setup script (`.work-before-setup.age`)
   - Installs additional Homebrew packages (`.work-brew-packages.age`)

The profile is selected during `chezmoi init` via an interactive prompt and stored in `.chezmoi.json.tmpl`. Template files use `{{ if eq .profile "work" }}` and `{{ if eq .profile "personal" }}` conditionals to customize configuration based on the selected profile.

## Repository structure

```
.
├── dot_config/              # Application configurations (~/.config/)
│   ├── docker/
│   ├── ghostty/
│   ├── git/
│   ├── npm/
│   └── starship/
├── dot_dotfiles/            # Shell and environment configuration (~/.dotfiles/)
│   ├── .work_aliases.age    # Work-specific aliases
│   ├── dot_aliases.tmpl     # Shell aliases
│   ├── dot_exports          # Environment variables
│   ├── dot_extra.tmpl       # Extra configurations (templated)
│   └── dot_functions        # Shell functions
├── dot_ssh/                 # SSH configuration (~/.ssh/)
├── dot_zshrc                # Zsh configuration (~/.zshrc)
├── run_once_*.sh.tmpl       # One-time setup scripts
├── run_onchange_*.sh.tmpl   # Scripts that run when files change
└── key.txt.age              # Age key
```

## Chezmoi Conventions

### File naming

- `dot_` prefix: creates a `.` file (e.g., `dot_zshrc`: `~/.zshrc`)
- `.tmpl` suffix: template file processed with templates
- `.age` suffix: encrypted file using age encryption
- `run_once_` prefix: scripts that run once during chezmoi apply
- `run_onchange_` prefix: scripts that run when their content changes
- `run_once_after_`: runs after other scripts
- `run_once_before_`: runs before other scripts

### Key files

- `.chezmoi.json.tmpl`: Chezmoi configuration
- `.chezmoiignore.tmpl`: Files to ignore by chezmoi
- `.setup.sh`: Installation script
- `key.txt.age`: Encrypted age private key for decryption

## Guidelines

**Important:** Do **NOT** attempt to decrypt or modify encrypted `.age` files directly. These require the age private key and should be handled through chezmoi's encryption workflow.

### Making Changes

1. **Template Files**: When editing `.tmpl` files, preserve Go template syntax (e.g., `{{ .chezmoi.* }}`)
2. **Shell Scripts**: Follow existing shell script conventions (zsh compatible)
3. **Encrypted Files**: Never attempt to read or modify `.age` files
4. **Testing**: Use `chezmoi diff` to preview changes before applying
5. **Validation**: Run `chezmoi apply --dry-run` to test changes

### Best Practices

- **Preserve existing structure**: Don't reorganize files without explicit request
- **Maintain compatibility**: Changes should work on macOS and unix systems
- **Template variables**: Use chezmoi template variables when appropriate
- **Idempotency**: Scripts should be safe to run multiple times
- **Error handling**: Fail gracefully when writing scripts
- **Comments**: Never add comments

## Development Workflow

When helping with this repository:

1. **Understand the change**: Know if it's a config, script, or template
2. **Locate the correct file**: Use chezmoi naming conventions
3. **Preserve templates**: Keep `{{ }}` syntax intact
4. **Test safely**: Use `--dry-run` flags
5. **Respect encryption**: Don't touch `.age` files

## Questions?

- [Chezmoi.io docs](https://chezmoi.io)
- [Age docs](https://github.com/FiloSottile/age)
