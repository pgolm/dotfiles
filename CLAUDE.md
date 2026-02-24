# CLAUDE.md

This file provides guidance to Claude Code (claude.ai/code) when working with code in this repository.

## Repository Overview

This is a chezmoi dotfiles repository for managing home environment configuration across macOS machines. Chezmoi uses a source-state model where files are stored with special prefixes (`dot_`, `private_`, `.tmpl`) and get transformed when applied to the home directory.

## Common Commands

```bash
chezmoi apply              # Apply changes to home directory
chezmoi diff               # Preview changes before applying
chezmoi edit <file>        # Edit a managed file (opens Zed editor)
chezmoi add ~/.config/x    # Add a new file to be managed
chezmoi data               # View template data (useful for debugging)
chezmoi execute-template < file.tmpl  # Test template rendering
```

## Architecture

### Template Data Flow
- `.chezmoi.yaml.tmpl` defines template variables (`email`, `work`, `ephemeral`, `headless`, `hostname`)
  - Also defines `name`, `email_work` (prompted on work machines)
- `.chezmoidata/package.yaml` contains package lists for Homebrew
- Templates (`.tmpl` files) use Go template syntax with these variables

### Key Conditionals
- `$work` - true for work machines (hostname `pg-work`)
- `$ephemeral` - true for containers/codespaces
- `$headless` - true when no display (disables interactive prompts)

### Scripts (`.chezmoiscripts/`)
Scripts run automatically based on their prefix:
- `run_onchange_before_*` - runs before file sync when dependencies change
- `run_onchange_after_*` - runs after file sync when dependencies change

Current scripts:
- `install-packages.sh.tmpl` - installs Homebrew packages on Darwin
- `mise-install.sh.tmpl` - installs development tools via mise
- `setup-defaults.sh.tmpl` - creates ~/Development with custom icon

### File Naming Conventions
- `dot_` prefix becomes `.` (e.g., `dot_config` -> `.config`)
- `private_` prefix sets restrictive permissions
- `.tmpl` suffix indicates Go template processing
- `executable_` prefix makes file executable

### Managed Configurations
- **Shell**: Fish shell with starship prompt, atuin history, zoxide navigation
- **Development**: mise for runtime versions (Ruby, Node, Go, Python), git config
- **Terminal**: Ghostty terminal, Zellij multiplexer
- **Editors**: Zed, Neovim (NvChad-based config)
- **CLI tools**: bat, eza, ripgrep, fd, try-rs
- **AI**: Claude Code (settings, permissions, skills managed via chezmoi)
- **SSH**: Templated config (`dot_ssh/config.tmpl`) with conditional work entries
