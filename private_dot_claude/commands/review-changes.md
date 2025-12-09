---
description: Review all changes on the current branch
allowed-tools: Bash(git status:*), Bash(git log:*), Bash(git show:*)
---

# Critical Code Review

Review all changes on the current branch compared to main/master. Be a critical reviewer who challenges decisions and pushes for excellence.

## Instructions

1. First, identify the base branch and get the diff:
   ```
   git diff main...HEAD
   ```
   (try `master` if `main` doesn't exist)

2. For each changed file, analyze:

### Correctness
- Are there bugs, edge cases, or potential runtime errors?
- Is error handling comprehensive?
- Are there race conditions or concurrency issues?

### Design & Architecture
- Does this change belong here, or should it live elsewhere?
- Is the abstraction level appropriate?
- Are there unnecessary dependencies introduced?
- Does it follow SOLID principles where applicable?

### Idiomatic Code
- Does it follow the language's conventions and idioms?
- Are standard library solutions used where appropriate?
- Does it match the existing codebase style?

### Best Practices
- Is the code testable? Are there tests?
- Are there security concerns (SQL injection, XSS, secrets, etc.)?
- Is there proper logging/observability?
- Are there performance implications?

### Simplicity
- Is there unnecessary complexity?
- Could this be achieved with less code?
- Is cleverness prioritized over clarity?

## Response Format

Be direct and critical. For each issue:
- State the problem clearly
- Explain WHY it matters
- Suggest a concrete improvement

Don't sugarcoat. If something is bad, say so. If something is good, acknowledge it briefly and move on.

End with a summary: Would you approve this PR as-is? What MUST change before merge?
