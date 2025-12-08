# Update Branch Name

---
description: Rename branch based on its content
model: haiku
allowed-tools: Bash(git branch --show-current:*), Bash(git symbolic-ref:*), Bash(git diff:*)
---

Follow these steps to update the current branch name:

1. Get the current branch name with `git branch --show-current`
2. Determine the default branch (main/master) with `git symbolic-ref refs/remotes/origin/HEAD`
3. If on the default branch, stop and inform the user
4. Check differences using `git diff <default-branch>...HEAD` and `git log --oneline <default-branch>..HEAD`
5. Analyze the changes to understand the work being done
6. Generate a descriptive branch name using this format:
   - `feature/<description>` for new features
   - `fix/<description>` for bug fixes
   - `refactor/<description>` for refactoring
   - `chore/<description>` for maintenance tasks
   - Use kebab-case for the description (e.g., `feature/add-user-authentication`)
7. Present the proposed name to the user for approval using AskUserQuestion
8. If approved, rename with `git branch -m <new-name>`
9. Verify with `git branch --show-current`
10. If the branch was tracking a remote, inform the user they may need to update it with:
    `git push origin -u <new-name> && git push origin --delete <old-name>`
