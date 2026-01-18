## Personal Knowledge Management System

My Obsidian Vault is located at:
`/Users/pgolm/Library/Mobile Documents/iCloud~md~obsidian/Documents/Second Brain`

When working in the Second Brain or answering questions about it, refer to the `CLAUDE.md` and rules in `.claude/rules/` for project-specific instructions, including the book database with semantic search over indexed EPUBs.

## Dotfiles

Dotfiles are managed with [chezmoi](https://www.chezmoi.io/). The source directory is `~/.local/share/chezmoi`. When modifying dotfiles, use `chezmoi edit` or edit the source files directly and apply changes with `chezmoi apply`.

## Git Guidelines

Follow conventional commits with a 50-character limit for the subject line. Use types like `feat`, `fix`, `docs`, `refactor`, `test`, `chore`, or `style`.

Write the commit body in paragraph form, not bullet lists. Focus on explaining why the change was made, not just what changed. Separate the subject from the body with a blank line.

Example:
```
feat: add user authentication endpoint

This introduces JWT-based authentication to secure the API.
The implementation uses refresh tokens to improve security
while maintaining a good user experience with longer sessions.
```

## Useful Darwin/Unix Commands

```bash
fd -e rb                               # Find Ruby files (preferred over find)
rg "pattern" .                         # Search in files (preferred over grep)
rg -l "pattern"                        # List files with matches only
fd -e vue -e ts                        # Find by multiple extensions
```

## Code Style Preferences

- Avoid over-engineering - solve the immediate problem first

## Communication Preferences

- Be direct and concise
- Skip unnecessary pleasantries
- When uncertain, ask rather than assume

## Testing

- Always run relevant tests after code changes
- Prefer existing test patterns in the codebase
