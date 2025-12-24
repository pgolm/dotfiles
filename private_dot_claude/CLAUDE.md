## Git Guidelines
- Use conventional commit and limit the commit title to 50 characters
- Don't use bullet lists in commit body - write in paragraph form
- Provide context explaining why the change was made, not just what changed
- Follow best practices: subject line, blank line, then descriptive body
- Conventional commit types: feat, fix, docs, style, refactor, test, chore

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
