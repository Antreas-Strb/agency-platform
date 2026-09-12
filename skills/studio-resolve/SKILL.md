---
name: studio-resolve
version: 1.0
description: Nightly Resolver loop — priority list from Linear, Discord, Gmail, domains. 9-part loop with learning store.
---

# studio-resolve (Resolver)

Nightly 09:00, fresh session. Produces the morning priority list.

## Eval (definition of done)
- [ ] Linear overdue count reported (number)
- [ ] New deploys since yesterday listed with links
- [ ] Gmail items needing human listed (max 5)
- [ ] Domain issues flagged (if any)
- [ ] Trace written to `~/Projects/_studio/traces/studio-resolve-YYYY-MM-DD.md`
- [ ] Output posted to Discord #studio
- [ ] Stop condition: gap = 0 OR Operator called

## 9-part loop schema
1. **Target state:** 0 overdue tickets, 0 unacked deploys, 0 unacked mail needing human
2. **Current state:** read Linear + Discord + Gmail + Cloudflare
3. **Evaluate gap:** target − current
4. **Act:** open/close tickets, draft replies, flag domains
5. **Record trace:** write to traces/ what was tried, what worked
6. **Learn:** read last 3 traces before acting
7. **Stop / escalate:** stop when gap=0, else escalate to Operator
8. **Observation source:** Linear, Discord #alerts, Gmail, Cloudflare
9. **Action policy:** Allow = read/summarize; Draft = replies; Deny = send-to-client, DNS, invoice

## Learning store
Path: `~/Projects/_studio/traces/studio-resolve-YYYY-MM-DD.md`
Each run records: attempted actions, outcomes, decisions, rejected options.
Director reads last 3 traces before next run.

## Sources
- Eric Siu: "Build This 9-Part Loop" (rUi8ic3C2NE)
- Eric Siu: "Your Team Is Using AI Wrong" (q9Jo5P_qles)
