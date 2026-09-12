---
name: studio-ship
description: Track B GitHub factory. Use when starting a Clinic Group / app feature, opening a PR, proving an AI change works, or merging to main. Isolate on a fresh branch, build, attach evidence, Critic reviews, Operator merges.
---

# studio-ship

Track B only (Clinic Group and other app repos). Not for WordPress SME sites.

## Beats

1. **Isolate** — Linear `GN-*` first. `git checkout main && git pull && git checkout -b feat/GN-NNN-slug`. Worktree if two features run in parallel. Never build on main. Never push to a merged branch.
2. **Build** — actions = why/when, services = how. One issue per PR.
3. **Prove** — CI green. UI = before/after. Non-UI = output pair. Write `docs/evidence/GN-NNN.md` when non-trivial.
4. **Ship** — draft PR → main. Critic reviews. Operator merges. Wait for previous Vercel production build. Smoke-test live. Delete branch. AUDIT line.

## Eval
Done = PR merged to main + live smoke test posted to `#clinic-group` + branch deleted.

## Deny
- Merge without Operator
- Greptile / paid review loop
- Vercel "Promote to Production" on a preview
- Live Stripe test charge
