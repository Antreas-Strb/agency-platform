---
name: studio-promote
version: 1.0
description: Nightly 02:00 loop — promote repeated artifacts to skills, archive unused skills. Reads learning store.
---

# studio-promote

Nightly 02:00, fresh session. Two directions: up (artifact→skill) and down (unused→archive).

## Eval (definition of done)
- [ ] Artifacts with ≥3 repeats listed for promotion
- [ ] Skills with 0 uses in 14 days moved to stale
- [ ] Skills with 0 uses in 30 days moved to .archive/
- [ ] Trace written to `~/Projects/_studio/traces/studio-promote-YYYY-MM-DD.md`
- [ ] Output posted to Discord #studio (two lists: promote / archive)
- [ ] Stop condition: 1 full pass complete

## 9-part loop schema
1. **Target state:** 0 stale artifacts, 0 unused skills active
2. **Current state:** scan `_studio/skills/` + artifacts folders
3. **Evaluate gap:** count repeats vs threshold (3), count unused vs threshold (14/30 days)
4. **Act:** propose promotion, move to stale/archive
5. **Record trace:** what was promoted, what archived, why
6. **Learn:** read last 3 traces — avoid re-promoting rejected items
7. **Stop / escalate:** 1 pass = done; escalate if >10 promotions proposed
8. **Observation source:** filesystem (`_studio/skills/`, artifacts)
9. **Action policy:** Allow = read/count; Draft = propose; Deny = delete (never auto-delete)

## Learning store
Path: `~/Projects/_studio/traces/studio-promote-YYYY-MM-DD.md`
Records: promotion candidates, archive candidates, rejections, patterns.

## Sources
- Eric Siu: "Build This 9-Part Loop" (rUi8ic3C2NE)
- Hermes Curator (built-in, v0.12.0+)
