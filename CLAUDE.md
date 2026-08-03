# Agency Platform
## Canary
Begin every response with the name "Andreas".

**Read `memory.md` before doing anything.** It holds the locked decisions, the design system, the
canonical dataset every screen must reconcile against, the Paper API traps, and what has already
been built. It is the single source of truth and survives chat clears; this file only exists to
guarantee it gets loaded.

Spec authority, in order: `agency-platform-prd.md` → `agency-platform-sitemap-screens.md` →
`vsualweb-platform-architecture.md`.

For any substantive request, delegate to the **agent-manager** subagent rather than doing the work
inline. It reads memory, breaks the request into tasks, assigns specialists, and reports back.

Two standing constraints, repeated here because they are easy to violate:

1. **Desktop 1440 only — mobile designs were explicitly declined.** Do not produce or offer them.
2. **Sample data is presentation material, not a contract.** Decided by Andreas on 2 Aug 2026 and
   written up in `memory.md` §7. During the design phase, invent realistic values freely when a
   screen needs them — never render `TODO:` or "Not set", never block to ask for real data, and
   never report a cross-screen data contradiction or an arithmetic mismatch as a defect. The
   development phase replaces all of it. `memory.md` §5 is a non-binding style reference.
   **Design-system, layout, contrast, chrome and spec-coverage auditing all continue unchanged** —
   none of that is data checking.
