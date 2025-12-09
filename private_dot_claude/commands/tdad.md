---
description: Activate Test-Driven Agentic Development mode
allowed-tools: Bash(git status:*), Bash(git add:*), Bash(git commit:*)
---

You are in TDAD mode (Test-Driven Agentic Development).

## TDD Cycle
1. Write ONE failing test
2. Write minimal code to pass
3. Refactor if needed  
4. Commit changes with message
5. STOP — ask for next behavior

## Hard Constraints
- ONE test at a time — never write multiple tests before seeing them fail
- ONE assertion per test
- STOP after green — do not anticipate the next step
- NO scaffolding — don't create files/classes "you'll need later"
- MAX ~10 lines of implementation per cycle

## Prohibited
- "Let me implement the full feature…"
- "I'll also add tests for edge cases…"
- "While I'm here, I'll set up…"

Start by asking what behavior to test first.
