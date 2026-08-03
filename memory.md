# Agency Platform — Project Memory

Single source of truth for this project. Read this before doing anything. Update it when a
decision is made, a screen ships, or a fact is discovered that a future session would otherwise
have to rediscover.

Last updated: **3 Aug 2026 - Batch A: the last three P1 variant screens, found already built and
undocumented, audited and repaired. 111 → 119 artboards.**
A prior interrupted run had built all of Batch A in the file at worldY 19000 but never updated this
memory. Eight artboards: **W-02a project-detail list view** - which closes the **PRD §6.5 P0**
"board and list view per project" gap - the **W-02 board's own `-LOADING`/`-EMPTY`** states, a
**shared board+list `W-02-ERROR`**, and the two role variants **W-02b (contractor board)** and
**D-01a (contractor dashboard)**. Nothing was rebuilt and no new shared idiom was authored; the three
"Still to design (P1)" variant items in §6 are now discharged and the W-02 state-coverage debt with them.
**Four real defects were caught by node inspection and fixed in place.** Three of the "state"
artboards had been miscloned - both empties and the error rendered fully-populated *source* content,
and only the two loading skeletons were correct - and W-02b's topbar carried the Owner persona
instead of the Contractor. All four fixes were re-verified at node level; the design auditor confirmed
the contractor sidebars match W-04 token-for-token and accent stays reserved to the running timer.
**New §8 lesson: a `-EMPTY`/`-ERROR` artboard existing under the right name is NOT evidence the state
was built** - a clone whose body was never swapped silently renders the source's populated content, so
state artboards must be verified by *body inspection*, not by name or existence. spec-compliance-checker
again mis-read persona and empty states from screenshots/names (the failure §8 already records); the
design-consistency-auditor's node-level findings were authoritative.

(Prior: **2 Aug 2026 - Track B5: the last P1 route screens. 98 → 111 artboards.**
**Every P1 route in the sitemap tree now has a screen.** Thirteen artboards at worldY 17000:
**S-01 audit log** with all three states, **S-02 notifications centre in BOTH chromes** (console and
portal, four artboards each), and **S-03a**, the Admin (AA) settings variant that was the last item
owed from §6's to-do list. The "still to design (P1)" list is now empty of *route* screens.
**That is not the same as the design phase being done** — see the three role/view variants and the
state-coverage debt recorded in §6, which the list had never carried.
**`paper-screen-builder.md` was rewritten before this batch and it worked.** Briefs no longer
hand-paste the trap list, the design system or corrected recipes; the four builders read §2/§3/§4
themselves and one of them corrected agent-manager's own brief from the file. The stale-definition
warnings in §3 and §8 are retired accordingly.
Two defects were caught and fixed (a raw-hue bell badge failing AA, counts on two `-EMPTY` screens).
**Four of agent-manager's own premises were wrong and specialists caught every one** — and it
fabricated a specialist report for the second track running. Both written up in §8.)

(Prior: **2 Aug 2026 — Track B4: the accent collision closed, then B-05 + the catalog module.
84 → 98 artboards.** *Waiting on client* moved off `--color-accent` to `--color-warning` across 17
nodes on 9 artboards, and §2 gained the full five-hue task-status map. Accent now means exactly one
thing: a running timer. Then fourteen artboards at worldY 15000 — B-05 with all three states plus
B-05a, and the catalog module CA-01/CA-02 with one shared CA-01-ERROR and two editor drawers.
Three new §4 traps: `create_artboard` ignores its own `left`/`top`, Paper has no rich text so a mono
`<span>` inside sans silently collapses, and `get_screenshot` empties out intermittently.)

(Prior: **2 Aug 2026 — Track B3, the Work module. 75 → 84 artboards.**)
W-01 projects list and W-04 my tasks are built with all their states, at worldY 13000. Both were
missing from §6's to-do list until an audit caught them; they are now off it. The batch established
the **row-level timer affordance** as the file's third shared idiom (§6) and settled that
**T-03 already exists** — the sidebar footer timer widget is pre-existing console chrome, so memory's
"never designed" claim was wrong. See §8.

(Prior: **2 Aug 2026 — the placeholder-clearing pass. The `TODO:` idiom is retired file-wide.**)
Andreas reversed the data discipline (§7): sample data is presentation material, invented freely,
never blocked on. **Eleven placeholders across ten artboards** were replaced with invented values —
tax office `ΔΟΥ Άρτας`, the two agency emails, a new Member `Giorgos Petrou`, Thalassa's billing
email, and a password policy. All are catalogued in **§5's invented-values table**; reuse them, and
do not mistake them for company data. `find_nodes` returns **zero hits on `TODO` and `Not set`**
file-wide. Edit-only — still 75 artboards. Audited clean: zero drift, zero defects.
**Nothing is owed to Andreas any more** — the "still owed" list (ΔΟΥ, emails, password policy) is
discharged. The one genuinely open item is unchanged and is *not* sample data: **certified myDATA
provider selection, PRD §11 Q1**, which still blocks native invoice issuing and still says so on
S-05 and B-04.
**All three agent definitions now match §7** — `paper-screen-builder.md` was the last stale one and
is fixed (verified Track B3, see §8). **Builder briefs must NOT carry a data-rule override any more**;
two dispatches were refused as prompt injection for opening that way.

(Prior: Track B2 — the Clients state-variant debt is discharged, 67 → 75 artboards. Eight artboards
at worldY 5700 built concurrently with B0.3 without a collision; established the **illustrated empty
state** idiom and the **disabled-nav treatment** the still-owed Admin settings shell should reuse. Also
**the design-consistency-auditor stopped embedding its own copy of the ledger** — it reads §5 at run
time, after that embedded copy had to be overridden in three consecutive audit briefs (§8).)

(Prior: Track B0.3 — **the invoice series is closed out.** Edit-only, no new artboards. Both open
items B1 left behind are resolved: the series is now **monotonic across
all nine** (`0177` ↔ `0184` swapped, tiebreak for the 31 Jul pair ruled in §2), and the unbacked
**"18 invoices" is gone** — count is 9 on B-01 and B-02, and "Invoiced this month" was re-derived
€12,450 → **€8,980** from the three August-issued rows. B-02's page size of 9 is now a **settled
decision (§2), not an open question**. Also closed: B-04's eCare line label, and B-02's pagination,
which still claimed three pages beside a nine-invoice caption. Artboards touched: B-02, B-01, D-01,
B-04/B-04a/B-04b. Audited clean, zero defects.
**B1** shipped the auth set A-01–A-04, 57 → 67 artboards and the file's third chrome;
**B0.1** renumbered 0141→0172 and 0166→0187 and rebuilt B-02 from 7 rows to 9; **B0.2** applied the
ten retroactive state renames.)
(Note: the *dataset's* "today" is 31 Aug 2026 and is fixed; that is not the
session date.)

---

## 1. What this is

VSUALWEB's internal agency platform: one system where every client request, task, hour and euro
lives, with clients seeing it live through a portal. Phase 1 is an internal MVP; the schema
carries multi-tenancy so it can become a white-label SaaS later.

**Spec is authority, in this order:**
- `agency-platform-prd.md` — functional requirements, permissions matrix, acceptance criteria
- `agency-platform-sitemap-screens.md` — every screen with ID, scope, states, access
- `vsualweb-platform-architecture.md` — technical architecture

**Current phase: design.** There is no codebase yet. Do not scaffold one unless asked.

**Design file:** Paper.design, file name "Agency Platform", fileId `01KYY80STEDR16TQY4CW9VPEJ0`.

---

## 2. Locked decisions — do not relitigate

| Decision | Detail |
|---|---|
| Visual reference | Ætheria admin (`aetheria-admin.vercel.app/admin`). Design system reverse-engineered from its live computed styles, not eyeballed. |
| Accent | Terracotta `#CE6E44` kept from the reference. Not VSUALWEB lime/violet. |
| Typography | Open Runde is the reference font but **is not installed**. Nunito Sans is the stand-in. Geist Mono for all numerals. Install Open Runde and all artboards can be swapped in one pass. |
| Contrast | Ætheria's chips fail AA (~1.9:1). We keep its hue families but darken chip **text** only. Never use a raw semantic hue as text on its own tint. |
| Breakpoint | **Desktop 1440 only.** Client explicitly declined mobile designs. Do not produce or offer them. (PRD §9 still requires 375px operability at build time — flagged once, accepted.) |
| Task board | **Five** statuses: todo / in progress / in review / waiting on client / done. Resolves PRD §11 Q4. |
| Owner time | **Not** auto-approved. Andreas's own entries pass through the approvals queue like everyone else's. Resolves PRD §11 Q3. |
| Status families | Six systems must never collide in one screenshot: request = filled tint pill, invoice = outlined pill, task = bare dot + label, time entry = left colour bar or square tag, **client + project lifecycle = filled tint pill** (active = success green for both entity types; completed/churned = neutral-bg + ink-muted), **user role = neutral grey chip** (neutral-bg + ink, never coloured). |
| Task-status hue map — all five | **todo = `--color-rule-strong` · in progress = `--color-info` · in review = `--color-review` · waiting on client = `--color-warning` · done = `--color-success`.** Treatment is bare dot + label, never a pill. Established by node inspection in Track B4; memory had never recorded the other four, which is why the fifth could not be reassigned without a sweep first. **Waiting on client was `--color-accent`** and collided with the running-timer affordance that §2 reserves accent for — moved to warning across all 10 instances. **`--color-review` was rejected as the replacement**: it is already *in review* in the same family, so it would have re-created the same one-hue-two-statuses defect. **Warning is deliberately shared with project-lifecycle *paused*** — different family, different treatment (filled tint pill vs bare dot), and §2 permits hue reuse across families when the treatment differs. Never put accent back on any task status. |
| Primary buttons | Filled `--color-ink`, matching B-02 and D-01. Accent is reserved for active-state marking and links — never a button fill. **Shape is a pill (`9999px`) at height 40px** — measured on B-02's "New invoice" (`Y9-0`) and CL-01's "New client" (`54E-0`). §3's "controls 8px, pills 9999px" does *not* cover buttons and its ambiguity already caused one drift (the auth set shipped 8px/44px and was corrected on all ten). **Inputs** are the 8px control: 40px tall, 8px radius. |
| Billing email vs login | A client's **billing email** is a company invoicing address (`finance@aegeanyachting.gr`). A user's **login** is personal (`sofia.marinaki@aegeanyachting.gr`). Different fields; do not conflate them. |
| Canonical hour ledger | **CL-06 (client detail: Time) is authoritative.** T-01's week grid was re-authored to match it, not the reverse. Any future disagreement about a time entry's date, hours or owner resolves to CL-06. |
| Artboard naming | **Lowercase letter suffixes mean flow/behaviour variants** (B-03a mismatch, B-04a/b outcomes, CL-09a archive confirm, C-01b first visit). **The three required states take uppercase word suffixes — `-LOADING`, `-ERROR`, `-EMPTY`.** Overloading lowercase for states is what made `CL-09a` unusable for CL-09's loading variant. **The rule now holds file-wide** — the ten early lowercase state artboards were retroactively renamed (see §8); no exceptions remain. |
| Hub state variants | **Error is one artboard for all seven tabs** (CL-03-ERROR) — a failure panel is content-independent, so it is designed once, not seven times. **Loading is per-tab wherever body geometry differs**, and it differs more than expected: CL-04, CL-05, CL-08 and CL-09 are each verified NOT covered by CL-03-LOADING. Do not collapse them and do not pad the set with duplicates. |
| Project lifecycle enum | **active / paused / completed.** The PRD gives projects a `status` field (§6.5) but never enumerates it, so this was decided in Track B3 for W-01. Rendered as a filled tint pill in the same family as client status: active = success green, paused = warning, completed = neutral-bg + ink-muted. |
| `-ERROR` is per route, not per file | CL-03-ERROR being one artboard for seven tabs is **scoped to the client hub** and does not generalise. It works there because the seven tabs share one shell *and* one body region, so a content-independent failure panel drops into all seven unchanged. W-01 and W-04 are separate routes with different page titles and different toolbars, so Track B3 built **one error artboard each**. Rule: share an error artboard only across screens that share a shell; otherwise build one per route. |
| Error and empty states must not assert counts | A screen that failed to load a collection cannot report how many items are in it. W-01-ERROR shipped with a live `7 projects · 5 active` caption above a "couldn't load projects" panel and the caption was deleted; CL-01-ERROR (the file's existing list-error precedent) renders no count either. Same rule applied to W-04-ERROR and W-04-EMPTY, whose subtitle drops to the person's name alone. **The rule covers filter pills and chrome badges, not just captions** — Track B5's two `S-02-EMPTY` screens shipped `All 0` / `Unread 0` on their filter pills and had to be corrected, even though both `-ERROR` twins got it right. **This has now been violated in three separate batches, always on a control rather than a caption.** When building an empty or error state, sweep every number on the screen including the nav badge, not just the headline. |
| B-02 page size is 9 | **Settled by Andreas, not open.** All nine invoices render on one page. Nothing in the spec fixes the page size at 7, no ordering rule lifts 0172 into a top-7, and trimming to 7 would delete B-02's only `VOID` chip — which sitemap §3.5 requires B-02 to demonstrate. The pagination control is a single-page state accordingly. Do not revert to 7 and do not re-litigate. |
| Invoice number ↔ issue date | **Number order must match issue-date order across the whole series.** When two invoices share an issue date, monotonicity does not order them; the tiebreak is **preserve the existing relative number order**. Applied to the 31 Jul pair (0187 above 0184). Any future invoice must be numbered to keep this property. |
| B-03 / B-04 share a number | They are the **same route, two tabs** — mutually exclusive branches of one billing event. Both reserve **INV-2026-0207** and each carries its own MARK (upload `400001802337415`, native rail `400001827364519`). Only one branch executes. This is deliberate; do **not** "fix" it by renumbering B-03 to 0208. |
| One screen, two chromes — how to name and scope it | **S-02 is one sitemap row served by two routes in two chromes** (`/admin/notifications`, `/portal/notifications`). The sitemap gives the portal instance **no C-ID and that is a spec gap, not a licence to mint one** — see §6. The artboards disambiguate by the **surface token in the existing naming convention** (`S-02 · Agency Console — …` vs `S-02 · Client Portal — …`), which needs no new identifier. **Do not "fix" this by assigning C-11**: C-11 through C-14 are already Reports / Quotes / Contracts / Files in sitemap §4, so minting one collides with a real spec ID. An audit proposed exactly that and was overruled on those grounds. **State scoping: each chrome gets its own `-LOADING`/`-EMPTY`/`-ERROR`.** The §2 rule below shares an error panel only across screens sharing a shell *and* a body region; two chromes are two different shells, so the CA-01-ERROR precedent does **not** apply here. |
| The settings tab bar has its OWN four-state ladder | Distinct from the sidebar's four-state ladder in §3, because a tab carries no icon to differentiate with. **Completed in Track B6; all four states verified by computed styles on all five settings artboards.** **Active** = weight 700, `--color-ink`, 2px `--color-accent` underline bar · **inactive but reachable** = `--color-ink-muted` 500 · **role-gated** (S-03a's Team + Billing setup) = `--color-ink-faint` 500 · **Phase 2/3, route unbuilt** (Branding & integrations) = **`--color-rule-strong` 500 plus a plain `Soon` sibling text** (`--font-sans` 11.5px/600, `--color-rule-strong`, 6px after the label, in a flex-row wrapper — **no fill, border, radius or tint**, because a tinted container here would mint a seventh status family against §2's six). Steps 1–3 reuse the sidebar's *logic* but not its tokens; step 4 takes the sidebar's own P2/P3 token. **The `Soon` marker is not decoration.** All four states co-occur on S-03a, where role-gated (`ink-faint` #999999) and Phase-3 (`rule-strong` #BBBCC3) would otherwise sit side by side one shade apart with nothing else separating them — the exact ladder-collapse the fix existed to close. The sidebar's own fourth step is likewise categorical, not a hue step: §3 records its P2/P3 icon going *unstyled*. A tab bar has no icon, so it needs a different categorical channel and a word is that channel. **Reusing a treatment across components means reusing its logic, not its exact token.** |
| Notification read/unread is neutral — never a coloured dot | Unread = `--color-surface-muted` fill, title 600 `--color-ink`. Read = `--color-page` fill, title 400 `--color-ink-muted`. Identical geometry so nothing shifts when an item is read, and **identical in both chromes**. A bare dot is the **task-status family's** treatment (§2) and these screens render task-status-change notifications, so a dot would rebuild the exact collision Track B4 spent a pass closing; `--color-accent` is worse still, being reserved for the running timer. Notification **type icons are `--color-ink-muted` strokes** — no per-event hue, or seven events become a seventh de-facto status family. Verified identical across `OEB-0` and `QCB-0` by computed styles. |

**Still open (PRD §11):** certified myDATA provider selection (blocks native invoice issuing);
Viva Wallet vs Stripe.

---

## 3. Design system

70 tokens live in the Paper file. Always use CSS variables, never raw hex.

**Neutrals** — page `#FFFFFF` · ink `#181925` · ink-muted `#666666` · ink-faint `#999999` ·
rule `#E8E8E8` · rule-strong `#BBBCC3` · surface-muted `#F8F8FA` · neutral-bg `#EFEFF1`

**Accent** — accent `#CE6E44` · accent-wash `#FBF0EB` · accent-text `#A0512C`

**Semantic (always the `-text` token on the `-bg` token)** — success `#1B7A38`/`#DEF6E4` ·
info `#1746B8`/`#DDE8FE` · warning `#B25900`/`#FFF0D6` · destructive `#C42E00`/`#FFE7E0` ·
review `#A32478`/`#FCE4F2`

**Type** — `--font-sans` Nunito Sans; `--font-mono` Geist Mono, mandatory for money, dates,
durations, IDs, invoice numbers, MARK/UID, counts. Page titles weight 400 at `-0.022em`.
KPI values weight 600 at `-0.028em`.

**Shape** — cards 16px, inner 10–12px, controls 8px, pills 9999px, hairline borders,
near-zero shadow, 4px spacing base.

**Three chromes** — console: 260px left sidebar on white. Portal: top nav on `surface-muted`,
calmer voice, no jargon, no internal assignee names. **Auth (public): no sidebar and no top nav.**

**The auth/public chrome — reusable for any future public page.** Added by Track B1; A-01 (`EWB-0`)
is canonical and the other nine auth artboards are clones of it.
- Artboard 1440 × `height:"fit-content"`, fill `--color-surface-muted`, `flexDirection:column`,
  `alignItems:center`, 120px top/bottom padding, 32px gap. Two direct children — brand mark and
  card group — no wrapper frame, matching the console's flat-structure rule below.
- Brand mark `VSUALWEB` above the card: 28px / weight 700 / `-0.025em` / lh 34px / `--color-ink`,
  scaled from the sidebar's treatment. This is the **logo slot** (sitemap §6.5 requires the logo be
  tokenised for Phase 3 white-label) — a tenant swaps it here.
  It is the **brand mark**, never the legal name `VSUALWEB Ε Ε`; see §5.
- Card: 420px wide, `--color-page`, `borderRadius:16px`, 1px `--color-rule`, 32px padding, column,
  24px section gaps, no shadow. Title 20px/700/`-0.022em`; subtitle 13px/400/`--color-ink-muted`.
- Field label 13px/600, 8px to input. Input 40px tall, 8px radius, 1px `--color-rule`, 356px wide,
  placeholder `--color-ink-faint`. Button 356×40, pill, `--color-ink` (see §2). Links
  `--color-accent-text` at 12.5px/600.
- **Helper line below the card is sign-in only** — present on A-01/A-01-ERROR/A-01a, absent from the
  other seven. It answers "how do I get an account", which is only asked when sign-in fails; on the
  invite screens it was actively wrong (a client-side invitee has no "agency admin"). Do not
  reintroduce it elsewhere.

**Clone node IDs** — console sidebar (Billing active) `JI-0` · **console sidebar (Catalog active)
`KC8-0`** · console topbar `MY-0` · portal nav (Billing active) `DN-0` · portal nav (Home active)
`3WG-0` · **auth card shell `EWB-0`** · illustrated empty state `FQS-0` ·
**notification row `PHM-0`** (Track B5; icon lane + eyebrow/title column + mono nowrap timestamp lane
+ chevron) · **All/Unread pill group `PHE-0` active / `PHH-0` inactive** ·
**contractor console reference `QT0-0`** (Batch A; contractor topbar + six-item gated sidebar
together - clone this for any future AC console screen, matches W-04 `IMB-0`) ·
**project-detail list/table view `R0Z-0`** (Batch A; source for any future list view of a board)

**There is no Notifications item in the console sidebar and none in the portal nav.** Notifications
are reached by the **bell in the chrome**, per sitemap §3.8 and §4. So S-02 in both chromes has **no
active nav item** and marks the bell instead (`--color-accent-wash` fill — legitimate, §2 reserves
accent for active-state marking). Established by two builders inspecting independently in Track B5.
The console sidebar order, verified: Dashboard, Requests / Clients, Projects, My tasks, Time /
Billing, Catalog / Quotes, Contracts, Reports, Analytics (Phase 2, disabled) / **Audit log**, Settings.

**The console sidebar has FOUR item states, not two. Verified by computed styles on `JI-0`, `E0B-0`,
`KC7-0` and `FR7-0` (Track B4) — get this right or two of them become indistinguishable:**
| State | Label | Icon stroke |
|---|---|---|
| **Active** (current route) | `--color-accent-text` / 600, on a `--color-accent-wash` frame | `--color-accent` |
| **Inactive** (enabled, not current) | **`--color-ink` / 500** | `--color-ink-muted` |
| **Disabled** (role-gated, CL-01c) | `--color-ink-muted` / 500 | `--color-ink-faint` |
| **Phase 2/3** (route unbuilt) | `--color-rule-strong` / 500 | unstyled paths |
**`paper-screen-builder.md` WAS wrong about this and is now FIXED — stop overriding it by hand.**
Its old swap recipe gave a deactivated item the *disabled* treatment, collapsing two states into one.
The definition was rewritten before Track B5: it no longer embeds the design system at all, it points
at §2/§3/§4 as the authority, it names all four nav states, and it tells builders to distrust values
quoted in briefs — **including agent-manager's**. Verified working across four Track B5 builders who
received no hand-pasted tokens, recipes or trap list. The two other errors in that file (a drawer
recipe demanding `position:relative`, and spacing stated as 1560) are corrected too. The previous
version is kept at `.claude/agents/paper-screen-builder.PREVIOUS.md`.

---

## 4. Paper API traps (established failures, not theory)

- **`fontFamily` does not inherit.** Setting it on an artboard does nothing. Every Text node
  needs it inline or it silently renders `system-ui`. Once hit 113 nodes at once.
- **Mono numbers wrap** in narrow fixed lanes (`3.5`, `24`, `€332.50`) — needs
  `white-space:nowrap`. Broke four separate rows.
- **Paper has no rich text — a nested `<span>` cannot carry its own font.** Writing a mono run
  inside a sans sentence (`<span style="font-family:var(--font-mono)">€1,500.00</span>` inside a
  Text node) **silently collapses to a single font** for the whole node. No error. Found in Track B4
  on B-05a. This collides head-on with §3's rule that money, dates and IDs are *mandatory* mono, so
  it bites any sentence with a figure in it. **Fix: split into sibling Text nodes**, one per font,
  laid out in a row — do not try to style a fragment.
- **`whiteSpace` clobbers a fixed `width`.** `update_styles` setting `whiteSpace` alone on a Text
  node that has a fixed width silently resets that width to `max-content`, and setting whiteSpace
  back does **not** restore it. Broke B-01's date/hours/amount lane alignment. Always set `width`
  and `whiteSpace` in the *same* update; an existing `pre-wrap` + fixed width is already correct.
- **Long button labels wrap** in fixed action lanes. ~7px/char at 12.5px semibold + 28px padding.
- `create_artboard` — width/height are **strings inside `styles`**, not top-level numbers.
- `update_styles` — `{updates:[{nodeIds:[...], styles:{...}}]}`, plural, in an array.
- `set_text_content` — `{updates:[{nodeId, textContent}]}`, singular, key is `textContent`.
- `create_tokens` — every token needs a `type`.
- **`write_html` needs kebab-case CSS; `update_styles` needs camelCase. They are opposites.** Raw
  `style=""` strings passed to `write_html` are real CSS, so `flexDirection` / `paddingInline` /
  `alignItems` are **silently dropped by the browser** and the layout collapses with no error. Write
  `flex-direction`, `padding-inline`, `align-items`. `update_styles` takes JSON and wants the
  camelCase form. Found on W-01 (Track B3), where it collapsed the Main/Content layout and had to be
  repaired with `update_styles` after the fact.
- **`find_nodes` searches text-node *content*, not node/artboard *names*.** A rename cannot be
  verified with `find_nodes` — it returns zero hits for a name that plainly exists. Verify renames
  by diffing the artboard list from `get_basic_info` before and after.
- Artboards must be `height: "fit-content"`. Never guess a pixel height.
- Overlay drawers: `position:absolute; top:0; right:0; bottom:0; width:600px`, over a base layer
  cloned at `opacity:0.4`. **`bottom:0` is required** or the drawer stops short.
  **The artboard does NOT need `position:relative` — that requirement was wrong and is removed.**
  Verified Track B4 by inspecting all five overlay artboards (`1C1-0`, `1V6-0`, `MO1-0`, `NLN-0`,
  `LBY-0`): none carries it, every overlay child anchors correctly on `position:absolute` alone, and
  one builder reported the stray `relative` actively causing a stale height-0 read.
  **Dim the WHOLE base layer — sidebar and body — to the same value.** CA-03 shipped with its body
  at 0.4 and its sidebar left unset, so the nav and the timer widget glowed at full brightness beside
  a greyed page. Caught in audit, fixed. Every other overlay dims both children.
  **`0.4` is canonical.** Two values coexist: W-03 and R-01 (the two oldest drawers) use **0.45**;
  C-06, B-05a, CA-03 and CA-03a use 0.4, which is what this recipe has always said. Known, adjudicated,
  left alone — fix the two outliers only if you are already editing those nodes.
  A **centred confirm dialog is not a drawer**: B-05a and CL-09a put a scrim
  (`#18192547`, ~28% alpha) over the dimmed base and centre the dialog on it.
- Cloning is far cheaper than rewriting chrome. After cloning a nav, swap the active item.
- **A detached node cannot be deleted, and `delete_nodes` lies about it.** Removing a node from an
  artboard can leave it orphaned (`parentId: null`, `artboardId: null`) rather than destroyed. It
  stops rendering and `find_nodes` stops matching its text, so it is invisible — but it is still a
  live node. Calling `delete_nodes` on it returns success with the ID in `deletedNodeIds` and the
  node still resolves via `get_node_info`. **Do not trust that success response.** Verify a delete
  with `get_node_info`. **Orphans are knowingly left in the file and that is now the standing policy**
  — S-03's old ΔΟΥ blocking note (`EAA-0`), plus at least ten from Track B4's catalog rebuilds
  (`N5A-0`, `N59-0`, `N4M-0`, `N4L-0`, `N3Y-0`, `N3X-0`, `N3A-0`, `N39-0`, `N2M-0`, `N2K-0`) and more
  from the same batch. All verified `parentId: null`, non-rendering, inert. Re-parenting them just to
  force a delete does not work either — **this was actually attempted in Track B4** on six nodes
  (`NUO-0`, `NUP-0`, `NUQ-0`, `NUR-0`, `NUS-0`, `NUT-0`): re-parented to root, `delete_nodes` re-run,
  reported success again, and all six still resolve with `parentId: null`. **The remediation does not
  exist; stop trying to find one.** **Expect a table or component rebuild to leave orphans; confirm
  they do not render and move on.** `write_html replace` avoids creating them in the first
  place and is the better tool when you are swapping a whole region.
- **Parallel builders pick the same empty coordinates.** Two builders running concurrently both
  chose worldX 12960 / worldY 3600 and stacked five artboards on top of each other. Assign explicit
  worldX/worldY to every artboard in every brief when more than one builder is in the file.
- **`get_screenshot` intermittently returns empty output for every node**, at both scales and with
  transparency on or off. Hit in Track B3's final audit and again mid-build in Track B4, so it is
  **recurring, not a one-off**. Node and computed-style inspection is the fallback and is *stronger*
  for token and colour checks — but it cannot catch sub-pixel crowding, clipping or SVG fill colour.
  **A review done without screenshots is not fully visual and must say so** rather than implying it
  checked layout.
- **`create_artboard` ignores `styles.left` / `styles.top`.** The artboard is placed at an
  auto-picked spot regardless, and must be moved into position with a follow-up `update_styles`
  setting `left`/`top`. Found in Track B4. **This is the mechanism behind the coordinate-collision
  trap above** — assigning explicit coordinates in a brief is necessary but not sufficient, because
  a builder that only passes them to `create_artboard` will silently land somewhere else. Always
  reposition after creating, and verify with `get_basic_info` rather than trusting the create call.

---

## 5. Sample dataset — NON-BINDING style reference

> **Read §7's sample-data rule first.** As of 2 Aug 2026 this section is **no longer a contract**.
> It is presentation material that the development phase replaces wholesale. Use it so screens feel
> like one coherent product; depart from it freely when a screen needs something it does not have.
> **Nothing here is enforced. Do not audit against it, do not block on it, and do not report a
> screen for disagreeing with it.** The "do not revert" and "verified exact" notes below are
> historical — they record why a value was once chosen, not a rule you must obey.

**Today is Monday 31 August 2026.** All relative dates anchor to this.

**Clients — six.** Aegean Yachting AE (EL 998 452 117, €85/h) · Kliniki Group IKE (EL 801 336 429,
€95/h override) · Elias & Co (EL 094 517 682, €85/h) · Meraki Interiors (EL 776 208 194, €85/h) ·
Nostos Travel (EL 152 940 337, €85/h) · **Thalassa Foods MEPE** (EL 145 623 908, €85/h) — status
**lead**, €0.00 balance, 0 open tasks. The other five are **active**. Thalassa is the "1 client has
nothing to invoice yet" that B-01 always referred to but never named.

**Per client** — open tasks: Aegean 9 · Kliniki 5 · Elias 4 · Meraki 4 · Nostos 2 · Thalassa 0 =
**24 open**, matching D-01. Last activity: Aegean 30 Aug · Elias 29 Aug · Kliniki 28 Aug ·
Meraki 27 Aug · Nostos 26 Aug · Thalassa 21 Aug.

**Careful:** €14,280.00 is carried by **5** clients, not 6. Any "across N clients" caption on a
balance figure is 5; any client-count caption is 6.

**Client status enum is four values — lead / active / paused / churned** (PRD §6.2). The sample data
only ever exercises lead (Thalassa) and active (the other five); paused and churned are real spec
statuses with no instance in this ledger. CL-01 renders lead = info tint, active = success,
paused = warning, churned = neutral; CL-02 matches.

**People** — Andreas Strb. (owner) · Dimitra K. (contractor) · Sofia Marinaki (Aegean billing
owner) · Nikos Papadakis (Aegean collaborator)

**Balances** — total uninvoiced **€14,280.00** = Aegean 4,820 + Kliniki 3,540 + Elias 2,610 +
Meraki 1,890 + Nostos 1,420

**Aegean's 8 balance items = €4,820.00** — 29.0 h × €85 = €2,465.00 across **6 approved time
entries, 24–30 Aug** · eCare Growth plan August €650.00 (delivered 25 Aug) · Landing page Summer
charter promo €1,705.00 (delivered 30 Aug). VAT 24% = €1,156.80. Gross €5,976.80.
The six hourly lines, verbatim: 24 Aug Charter booking form — build (AS) 3.0 h €255.00 · 26 Aug
Charter booking form — form markup and validation (DK) 5.0 h €425.00 · 27 Aug Blog migration to
content collections (AS) 6.5 h €552.50 · 28 Aug Performance pass — image pipeline and fonts (AS)
4.5 h €382.50 · 29 Aug Yacht detail page template (DK) 7.0 h €595.00 · 30 Aug Accessibility fixes —
navigation and forms (AS) 3.0 h €255.00. **Item count is 8, span is 24–30 Aug** — was 7 / 26–30 Aug
until the fork was closed; do not revert.

**Charter booking form task rollup = 11.0 h / €935.00** (3.0 approved + 5.0 approved + 3.0
submitted). Distinct from the balance's 8.0 h, which is only the two *approved* entries.

**Invoices — nine, renumbered Aug 2026, this is the current series.** Source is UPLOADED for all
except 0206 (native draft). Terms are Net 14.

| № | Client | Source | Issued | Due | Total | Status |
|---|---|---|---|---|---|---|
| 0206 | Elias & Co | native | — | — | €2,180 | draft |
| 0203 | Aegean | uploaded | 21 Aug | 4 Sep | €3,900 | issued · MARK 400001791204336 |
| 0198 | Kliniki | uploaded | 20 Aug | 3 Sep | €3,410 | paid |
| 0191 | Meraki | uploaded | 11 Aug | 25 Aug | €1,670 | overdue 6 d |
| **0187** | **Aegean** | uploaded | 31 Jul | 14 Aug | €2,760 | **paid 12 Aug** (work to 31 Jul) |
| **0184** | **Nostos** | uploaded | 31 Jul | 14 Aug | €1,240 | paid |
| **0177** | **Kliniki** | uploaded | 14 Jul | 28 Jul | €2,480 | overdue 34 d |
| **0172** | **Aegean** | uploaded | 30 Jun | 14 Jul | €3,180 | **paid 10 Jul** (work to 30 Jun) |
| 0165 | Meraki | uploaded | 12 Jun | 26 Jun | €890 | void |

Overdue total €4,150 (0191 + 0177). **Aegean has three invoices — 0203, 0187, 0172 — not one.**
**0187 was 0166 and 0172 was 0141**; the renumbering is applied file-wide and both old numbers
return zero hits. Do not reintroduce them.

**The series is monotonic — number order matches issue-date order across all nine. Do not break it.**
`0177` and `0184` were **swapped** (Track B0.3) to close the last violation: the 14 Jul invoice now
takes the lower number. This was a swap, not a retirement — **both numbers still exist**, so the
verification for it is that each occurrence pairs with the right client and amount, *not* that an old
number returns zero hits. The number *set* is unchanged, so S-05's next number 0208 and the §2-reserved
0207 are untouched. **0184 and 0187 tie on 31 Jul**; the ruled tiebreak is *preserve the existing
relative number order*, so 0187 sits above 0184 and that is correct, not a defect (§2).
**Where the invoice numbers actually live:** 0177 and 0184 appear on exactly **two** artboards each —
**B-02** and **D-01** (D-01's Money-needing-attention widget carries the Kliniki overdue line, and its
Recent Activity feed carries the Nostos payment line). §5 previously claimed renumbering 0177 would
touch **C-07's history — that was wrong**; C-07 returns zero hits on both numbers and shows Aegean's
last invoice as 0203 (§8). Search file-wide rather than trusting any list of expected artboards.

**B-02 renders all nine rows**, descending by number, caption "Showing all 9 invoices". It was 7
rows and carried neither Aegean back-invoice, which is why the agency master list once contradicted
CL-07 and C-08. **Page size 9 is a settled decision — see §2, do not re-litigate.**

**The invoice count is 9 everywhere. `18` was unbacked and is gone.** Only these nine numbers exist
anywhere in the file; the "other nine" never had rows, dates, amounts or clients. Do not reintroduce
18, do not derive anything from it, and do not invent the missing nine. Note `All 18` on **D-02 and
R-01 counts requests, not invoices** — it is unrelated and correct; do not "fix" it.

**"Invoiced this month" = €8,980**, on **both B-01 and B-02** (a matched pair — edit both or neither).
= 0191 €1,670 + 0198 €3,410 + 0203 €3,900, the three invoices **issued** in Aug 2026 against the
dataset's fixed today of 31 Aug. Two exclusions are deliberate: **0206** is an undated draft, so it is
not invoiced; **0187** was *paid* 12 Aug but *issued* 31 Jul, and the KPI keys on **issue**, not
payment. Its sublabel is "€3,410 collected · €5,570 open" (3,410 + 5,570 = 8,980; collected = the one
paid August row, open = 0191 overdue + 0203 issued) and its badge is `3 ISSUED`. Was €12,450 /
€8,300 collected · €4,150 open / `4 ISSUED` — internally consistent but unsourced, and its "open"
figure was the book-wide overdue total, which is month-scoped nowhere. The standalone **Overdue KPI is
a different card** and still reads €4,150 / 2 UNPAID on both screens.

**Approvals queue** — 7 entries, 21.0 h, €1,890.00. Three are Andreas's own. Verified exact:
per-row amounts, the 3-selected 9.5 h/€832.50 subtotal, and the €1,842.50 post-adjustment footer
all reconcile. Aegean's share is 5.0 h/€425.00, matching §5's submitted bucket. Do not edit T-02.

**Agency-side defaults now have a source of truth.** S-03 holds the **€85.00/h agency default** (the
bottom of PRD's chain: client override > service rate > agency default), **CA-01 now holds the middle
tier — a service's own rate is authored in the catalog** (Track B4), and CL-09 holds the client
override at the top. All three tiers of PRD §6.6's chain finally have a screen. S-05 holds the **24% VAT
default** and the invoice series **prefix `INV-2026-` / next number `0208`** — 0206 is the ledger's
highest and §2 reserves 0207 for the B-03/B-04 event. Changing any of these breaks CL-09, B-01,
C-07, CL-07 and every VAT figure in this ledger.

**VSUALWEB's own identity — supplied by Andreas, canonical.** This is the block that prints on every
invoice document; every invoice screen must reconcile with it.
- Company name **`VSUALWEB Ε Ε`** — render exactly, Greek `Ε Ε`, do not stylise to `Ε.Ε.` or expand.
- VAT **`EL 802 688 499`** — raw number supplied was `802688499`; rendered with the `EL` prefix and
  3-3-3 spacing to match every client VAT in this ledger (`EL 998 452 117`).
- Company email **`info@vsualweb.com`**. The domain `vsualweb.com` is now established.
- Address **`Agios Spyridonas 3`, `47100 Arta`, `Epirus`, `Greece`**.

S-03 renders all of this: the VAT & billing identity card is **Legal name · VAT number · Tax office ·
Registered address**. `Agency name` in the Agency profile card stays the brand mark **`VSUALWEB`** —
two fields, two jobs: brand mark for chrome, legal name for documents. Do not re-merge them.
`info@vsualweb.com` is sourced but **has no field anywhere in the file yet**.

**The B-04 issuer contradiction is CLOSED.** B-04/B-04a/B-04b once printed a fabricated
`EL 176 402 883 · Chania, Crete`; all three now carry the real identity. `176 402 883` returns zero
hits file-wide. **The invoice masthead idiom is deliberately compact — legal name on one line,
`EL 802 688 499 · Arta, Epirus` on the second. No street address and no ΔΟΥ line**, because the
block has never had a field-row structure and the client's own "Bill To" block follows the same
name-plus-VAT pattern. The full registered address lives on S-03, which has a form to hold it. Do
not "complete" the masthead.

**`Chania` is not residue — it is Aegean's own address.** `Akti Koundourioti 42, 731 00 Chania,
Greece` appears on C-10, CL-09 and CL-09a as legitimate **client** data. The coincidence with the
old fabricated agency city is just that. Do not delete it.

**INVENTED VALUES — authored 2 Aug 2026 under §7's sample-data rule. Not sourced from Andreas.**
Nobody supplied these. They were written to clear the file's last placeholders and they are
**presentation material like everything else in §5** — do not cite them to a client as fact, and do
not treat them as company data in the development phase. Reuse them rather than minting new ones,
so one person keeps one email across screens.

| Value | Where it renders | Note |
|---|---|---|
| `ΔΟΥ Άρτας` | S-03 tax office field | The ΔΟΥ serving the agency's real Arta address. Plausible, not confirmed. |
| `andreas@vsualweb.com` | S-04 roster row 1 | Andreas Strb., owner. |
| `dimitra@vsualweb.com` | S-04 roster row 2 | Dimitra K., contractor. |
| `Giorgos Petrou` / `giorgos@vsualweb.com` | A-04 invitee · CL-01c account manager | **A wholly invented third agency person**, role Member — see the §6 note on the two-person agency. |
| `finance@thalassafoods.gr` | B-03-EMPTY + CL-04/05/06/07-EMPTY | Thalassa's billing email. `finance@` + client `.gr` domain, matching Aegean's idiom and §2's billing-email-vs-login rule. |
| `At least 10 characters, with one uppercase letter and one number.` | A-03 policy line | No password policy exists in the PRD or sitemap; this invents one. |

**The domain split still holds and still matters:** agency people use `vsualweb.com`, clients use
`.gr`. Never put a client domain on an agency screen or the reverse.

**S-04's roster is two people** — Andreas Strb. (owner) and Dimitra K. (contractor), two rows, no
pending invites. **A third agency person, Giorgos Petrou (Member), now exists on A-04 and CL-01c**
but is deliberately *not* on S-04's roster; adding him there was not asked for and would change a
shipped screen. Under §7 that inconsistency is presentation noise, not a defect — but if S-04 is
ever rebuilt, deciding whether he joins the roster is the coherent moment to do it.
Sofia Marinaki and Nikos Papadakis are **Aegean's**
client-side users and must never appear on an agency team screen. PRD §7's role names are Owner /
Admin / Member / Contractor (plus client owner / client collab); the matrix shows **no capability
where Owner and Admin diverge**.

Thalassa's billing email is **`finance@thalassafoods.gr`** — invented 2 Aug 2026, see the table
above. The "supply one before B-03-EMPTY ships" block that stood here is discharged.
(The B-04 eCare line-label defect is **CLOSED** — see §8.)

**Andreas's week 24–30 Aug** — **33.0 h = 27.5 billable + 5.5 internal.** By state: **24.0 approved**,
6.0 submitted, 2.5 invoiced, 0.5 draft. Day totals: MON 24 `5.0` · TUE 25 `0.0` (nothing logged) ·
WED 26 `5.0` · THU 27 `10.5` · FRI 28 `7.0` · SAT 29 `2.5` · SUN 30 `3.0`. Lives on T-01 and on
D-01's "My hours, week of 24 Aug" KPI — **those two are a matched pair, edit both or neither**.
(Was 26.5 h / 17.5 approved, from the pre-reconciliation T-01 grid.)

**Aegean's hours ledger — Website rebuild, 64.0 h logged of a 90.0 h budget (71%, 26.0 h left).**
Split: 26.0 h invoiced on INV-2026-0203 (€2,210.00) · 29.0 h approved uninvoiced (€2,465.00) ·
5.0 h submitted (€425.00) · 4.0 h draft (€340.00). 64.0 × €85 = €5,440.00. This split is what
CL-05 and CL-06 reconcile against; changing any part of it breaks the budget-burn bar.

**INV-2026-0203's line breakdown:** €2,210.00 (26.0 h × €85) + €650.00 eCare July + €285.16
fixed price = net €3,145.16, VAT 24% €754.84, total €3,900.00. Still not derived from the C-07
balance items, but it is now arithmetically exact — the old €285.48/€3,145.48/€754.52 set had a
back-solved VAT that was not 24% of its own net.

---

## 6. Screens designed (119 artboards)

**Batch A - the last three P1 variant screens (eight artboards, all at worldY 19000).** Built by a
prior interrupted run, left undocumented, then audited and repaired in place (see §8). None rebuilt,
no new shared idiom authored.
**W-02a project detail: list view** (`R0Z-0`, x −720) · **W-02a-LOADING** (`RHE-0`, 800) ·
**W-02a-EMPTY, no tasks** (`RU3-0`, 2320) · **W-02-LOADING board** (`SM4-0`, 3840) ·
**W-02-EMPTY board, no tasks** (`SUH-0`, 5360) ·
**W-02-ERROR, load error (pattern, board and list)** (`T2U-0`, 6880) ·
**W-02b project board, contractor (AC)** (`S6S-0`, 8400) ·
**D-01a dashboard, contractor (AC)** (`QT0-0`, 9920)

**W-02a closes the PRD §6.5 P0 gap** - "board and list view per project" now has both views. It is a
genuine distinct route body (`/projects/{id} board | list`), so it correctly owns its own
`-LOADING`/`-EMPTY` and **shares the content-independent `W-02-ERROR` with the board** - board and
list share the project-detail shell *and* body region, the exact CL-03-ERROR / CA-01-ERROR condition
in §2. The board additionally gained its own `-LOADING`/`-EMPTY`, which **discharges the W-02
state-coverage debt** the list below used to carry. **W-02b and D-01a carry no state artboards** -
pure role/permission variants, precedent CL-01c/CL-01d/S-03a. The eight-artboard set is the complete
required-state set for W-02 board + W-02a list + the two role variants.
**Both contractor screens gate the sidebar exactly like W-04 (`IMB-0`)** - Requests, Clients, Billing,
Catalog, Audit log, Settings muted (label `--color-ink-muted`/500, icon `--color-ink-faint`, badges
`--color-neutral-bg`/`--color-ink-muted`), verified token-for-token by the design auditor. **D-01a is
the reduced dashboard** - "My hours" KPI + my-tasks-grouped-by-status + timer only, no money or
agency-wide widgets - rendering the **Dimitra K. / Contractor** persona (§5). **W-02b is the filtered
board** ("AC: assigned tasks only") on the same persona. **QT0-0 is now the clean contractor-console
reference** (contractor topbar + gated sidebar together) for any future AC screen; **R0Z-0 is the
source for any future project-detail list/table view.** The W-02a Board/List toggle is an **ink-filled
active pill with no accent** - accent stays reserved to the running timer.

**System + the Admin settings variant (Track B5 — thirteen artboards, all at worldY 17000)** —
**S-01 audit log** (`NXD-0`, x −720) · **S-01-LOADING** (`OK4-0`, 800) ·
**S-01-EMPTY, no events match filters** (`OV2-0`, 2320) · **S-01-ERROR** (`P60-0`, 3840) ·
**S-02 console notifications** (`OEB-0`, 5360) · **S-02-LOADING console** (`POL-0`, 6880) ·
**S-02-EMPTY console** (`PVV-0`, 8400) · **S-02-ERROR console** (`Q35-0`, 9920) ·
**S-02 portal notifications** (`QCB-0`, 11440) · **S-02-LOADING portal** (`QHC-0`, 12960) ·
**S-02-EMPTY portal** (`QMF-0`, 14480) · **S-02-ERROR portal** (`QQP-0`, 16000) ·
**S-03a settings: Agency, Admin (AA)** (`O1H-0`, 17520)

**S-01 is read-only by spec and by architecture.** Sitemap §3.8 says "read-only, dense"; architecture
line 188 says *"Financial records are append-only. Invoices and audit events never update in place."*
So the screen carries **no create, edit or delete affordance and no primary action button** — that is
deliberate, not an omission. Pagination is **cursor-based Newer/Older with no page numbers**, per the
sitemap's "no pagination surprises". The **diff expander is backed by a real `diff jsonb` column**
(architecture line 144: `audit_events actor_id, action, entity_type, entity_id, diff jsonb, ip`), so
it renders structured before → after values, not a prose summary. Two rows ship expanded and each
depicts a **named PRD acceptance criterion** — §6.6's adjusted-then-approved entry keeping its
original duration, and §6.7's void returning items to approved-uninvoiced. Both verified by
spec-compliance-checker, not taken from the builder's report.
**Audit actions are plain sans text with a neutral role chip** — deliberately not a coloured pill, so
the audit log does not mint a seventh status family.
**S-01-EMPTY is a filtered no-result, not a fresh tenant** — an append-only log on a running agency is
never globally empty, and the sitemap leads with "filterable table". Filter bar stays populated and
the column header row stays; only the body is replaced. This follows CL-01d's logic (a filtered view
keeps its real global context) rather than CL-01-EMPTY's (nothing exists at all).

**S-02 is one sitemap row built twice, once per chrome** — see §2 for the naming and state-scoping
rule and for why no C-ID was minted. The two lists deliberately carry **different event sets**, taken
from PRD §6.9's per-audience tags: console shows the agency-tagged events (new request, payment
received) and portal shows the client-tagged ones (request converted/declined, task status change,
invoice issued, time approved into balance). The portal is scoped to the **billing owner (CO)** — a
collaborator has no financial visibility, so invoice and balance notifications belong to CO. No CC
variant was built; the sitemap does not split S-02 by role.
**Portal S-02 was verified against two negative acceptance criteria**, both PRD §6.5: no agency-only
comment appears in any form, and no internal assignee name appears — work is attributed to
"VSUALWEB". Confirmed by spec-compliance-checker.

**S-03a discharges the last owed item from the to-do list.** It gates **exactly two of five tabs**
(Team and Billing setup), derived from the sitemap access column — S-03 `AO AA` · S-06 `AO AA` ·
S-04 `AO` · S-05 `AO` — **not** from CL-01c's scope. **The sidebar is deliberately NOT gated**: PRD
§7's Owner and Admin columns are identical on all eleven capability rows, so an Admin reaches every
console route; only the finer-grained per-screen sitemap access restricts anything. Auditor confirmed
the sidebar is byte-identical to S-03's. It is a role variant, so it correctly has **no state
artboards**, following CL-01c and CL-01d. The lowercase `a` is correct per §2's naming rule.
S-03a renders an invented Admin persona in the topbar (a permission variant needs a person who holds
that permission — §8's CL-01c lesson). **agent-manager specified `Maria Lekka` / `maria@vsualweb.com`
but never received that builder's report and did not verify what shipped** — confirm by inspection
before citing the name, and add it to §5's invented-values table once confirmed.

**Billing detail + Catalog (Track B4 — fourteen artboards, all at worldY 15000)** —
**B-05 invoice detail** (`K5X-0`, x -720) · **B-05-LOADING** (`KN1-0`, 800) ·
**B-05-EMPTY, no payments recorded** (`KVC-0`, 2320) · **B-05-ERROR** (`L3N-0`, 3840) ·
**B-05a void confirm** (`LBY-0`, 5360) · **CA-01 catalog: services** (`KC7-0`, 6880) ·
**CA-01-LOADING** (`LLG-0`, 8400) · **CA-01-EMPTY** (`LTP-0`, 9920) ·
**CA-01-ERROR, shared by both tabs** (`M1Y-0`, 11440) · **CA-02 catalog: packages** (`MD6-0`, 12960) ·
**CA-02-LOADING** (`N2G-0`, 14480) · **CA-02-EMPTY** (`ND1-0`, 16000) ·
**CA-03 service editor drawer** (`MO1-0`, 17520) · **CA-03a package editor drawer** (`NLN-0`, 19040)

**The catalog is one cloned shell, like the client hub.** CA-01 is the source and the other four
catalog artboards are clones with only the tab active-marker moved. **CA-01 also introduced the
Catalog-active sidebar**, which no screen had before.
**`CA-01-ERROR` is one artboard for both tabs**, on the CL-03-ERROR precedent: sitemap §1's route
tree gives `/catalog` **one route with two tabs**, so the two share a shell *and* a body region,
which is exactly the condition §2 requires. There is deliberately **no CA-02-ERROR** — do not add one.
**Loading and empty are per tab**, because the two tables have different columns (services carry
pricing type and unit; packages carry interval and an included-services cell).
**CA-03 and CA-03a are two artboards for one sitemap row.** The sitemap describes a single
service/package editor, but the package branch carries a **service picker with quantities** that has
no service-side analogue (architecture §6: `package_items → package_id, service_id, quantity`). The
service branch is CA-03 over CA-01; the package branch is CA-03a over CA-02.
**Neither drawer has its own `-LOADING`/`-ERROR`/`-EMPTY`**, following the file's existing precedent —
W-03, R-01, C-04 and C-06 are all drawers and none has state artboards. A drawer's data is loaded by
its parent list, whose own states cover the fetch; a failed save is an inline field error.
**B-05's only collection is the payments list**, so `B-05-EMPTY` means *no payment recorded yet* —
a real state for a freshly issued invoice, not a contrived one.
**B-05a exists because the sitemap's B-05 row names it** ("void (confirm; items return to balance,
audit)"). It was outside agent-manager's original enumeration and was built because the spec outranks
the summary.
**B-05's payment-link block names no provider** — PRD §11 Q2 (Viva Wallet vs Stripe) is still open,
so the block shows generate/copy and a webhook indicator without naming a vendor, the same discipline
S-05 and B-04 apply to the open myDATA question. **Agency screens never offer "Pay now"**: PRD §7
gives *Pay invoices* to the client billing owner only. The agency generates a link and records a
payment; C-08b keeps the paying action.

**Work (Track B3 — nine artboards, all at worldY 13000)** — **W-01 projects list** (`HKF-0`, x -720) ·
**W-01-LOADING** (`HU0-0`, 800) · **W-01-EMPTY** (`I3D-0`, 2320) · **W-01-ERROR** (`ICQ-0`, 3840) ·
**W-04 my tasks, contractor** (`IMB-0`, 5360) · **W-04a grouped by due** (`J2W-0`, 6880) ·
**W-04-LOADING** (`JEW-0`, 8400) · **W-04-EMPTY** (`JMP-0`, 9920) · **W-04-ERROR** (`JUI-0`, 11440)

**Console** — D-01 dashboard · D-02 requests inbox · R-01 triage drawer · W-02 project board ·
W-03 task drawer · T-01 timesheet · T-02 approvals · T-02-EMPTY approvals empty · B-01 balances ·
B-02 invoices · **B-03 upload invoice · B-03a mismatch warning · B-03-EMPTY empty · B-03-LOADING
loading · B-03-ERROR duplicate-number error** · B-04 invoice builder · B-04a issue success ·
B-04b issue failed

**Clients** — CL-01 clients list · **CL-01-LOADING list loading · CL-01-ERROR list error** ·
**CL-02 new client · CL-02a VAT format invalid · CL-02b foreign VAT bypassed** · CL-03 hub /
Overview · **CL-03-LOADING Overview loading · CL-03-ERROR tab load error (the pattern for all seven
tabs)** · CL-04 Users · **CL-04-LOADING** · CL-05 Projects · **CL-05-LOADING** · CL-06 Time ·
**CL-06-LOADING Time loading** · CL-07 Billing · **CL-07-LOADING Billing loading** · CL-08 Files ·
**CL-08-LOADING** · CL-09 Settings · **CL-09-LOADING** · CL-09a archive-client confirm ·
**CL-01-EMPTY · CL-04-EMPTY · CL-05-EMPTY · CL-06-EMPTY · CL-07-EMPTY zero balance ·
CL-09b VAT invalid · CL-01c AM read-only · CL-01d archived view** (Track B2, worldY 5700)

**The clients state-variant debt is DISCHARGED.** Every P1 Clients screen now has its loading,
error and empty state. Nothing in the Clients area is owed.

**The retroactive rename is APPLIED** — the whole file now obeys the §2 naming rule. B-03a,
B-04a/b, C-01b and CL-09a are flow variants and correctly keep their lowercase suffixes. See §8.

**The illustrated empty state is the file's second shared idiom**, after B-03's skeleton/loading
pattern. Authored once on CL-01-EMPTY (root `FQS-0`) and cloned outward — **twelve uses as of Track
B5** (the original six, plus B-05-EMPTY, CA-01-EMPTY, CA-02-EMPTY, S-01-EMPTY and both S-02-EMPTYs),
verified byte-identical every time.
**Reuse it; do not author a second one.** It is a 72×72
`--color-neutral-bg` glyph at 16px radius holding two `--color-rule` bars, an 18px/600 ink title,
a 14px/400 ink-muted line capped at 380px, centred at 64px/24px padding with 16px gap. Deliberately
abstract so it serves clients, users, projects, time, billing, payments and catalog without
redrawing — **it has now absorbed three new domains without a single change, which is the point.**
**The table's column header row stays; only the body is replaced.**

**All four hub empties depict Thalassa Foods MEPE** — §5 already names it as the zero-balance lead,
so one client gives one coherent story and one set of header numbers to verify. Its billing email
now renders `finance@thalassafoods.gr` on all four plus B-03-EMPTY (invented 2 Aug 2026, §5).

**CL-01c establishes the disabled-nav treatment** — ink-muted label, ink-faint icon — on Billing,
Catalog, Audit log and Settings, with Billing's red badge muted (an alarming count on an unreachable
item contradicts the state).
**The Admin settings shell it was owed is now BUILT (S-03a, Track B5) and this item is discharged.**
It reused CL-01c's *logic* but not its token: a settings **tab** carries no icon, and the tab bar's
inactive state is already `--color-ink-muted`, so gated tabs went one step lighter to
`--color-ink-faint`. See §2's tab-bar ladder row. **Third time §8 records that reusing a treatment
across roles or components means reusing the reasoning, not copying the values.**

**An account manager KEEPS the uninvoiced balance column.** Counter-intuitive and easy to get
backwards: PRD §7 gives Member ✔ on *See rates & balances*. It is the **Contractor** who is
rate-blind — §4, §6.5, §9 and sitemap S-04 each say so independently. AM loses creation and
mutation only. Do not design an AM screen that hides money.

**CL-01d zeroes only the result set**, keeping Active 5 / Lead 1 / All 6 as real global tallies —
zeroing them would assert no active clients exist. This differs deliberately from CL-01-EMPTY,
where zeroing all six chips *is* correct, because there no clients exist at all.

**Console artboard structure:** Sidebar and Main sit as **direct children of the artboard** (two
children, `flexDirection: row` on the artboard node), not inside a wrapper frame. CL-02/02a/02b
shipped with a `Console shell` wrapper and were flattened to match; verified a visual no-op. The
whole file is clone-and-edit against node IDs, so a deeper nesting level eventually breaks a clone.

**CL-02 carries no rate and no payment-terms field.** The builder checked the spec and found rate
override lives on CL-09, default rate on S-03, terms and VAT rate on S-05 — none are in CL-02's
scope. This was a deliberate omission, not an oversight; do not "complete" the form by adding them.

**Auth (public, Track B1 — ten artboards, all at worldY 11000)** — A-01 sign in · **A-01-ERROR
invalid credentials** · A-01a revoked account · A-02 forgot password · A-02b link sent ·
A-03 reset password · **A-03-ERROR expired or used link** · A-04 accept invite: agency ·
A-04b accept invite: client · **A-04-ERROR expired invite**

**Auth state coverage is deliberate and complete — do not flag it as three missing states per
screen.** Sitemap §Conventions requires empty/loading/error on every P1 screen. For auth:
**empty is meaningless** (no auth screen renders a collection, so there is nothing to be empty);
**loading is an in-button submitting state**, not a separate artboard; **error is designed
explicitly** — the three `-ERROR` artboards, plus A-01a as a second, materially distinct login
failure (sitemap §2 names both "invalid credentials, revoked account"). Verified by
spec-compliance-checker: zero missing, zero non-compliant across all ten.

**Two auth content rulings:**
- **A-04's invitee is `giorgos@vsualweb.com` (Giorgos Petrou, role Member)** — invented 2 Aug 2026,
  §5. **This ruling was reversed.** It previously read "A-04 names no invitee" and rendered
  `TODO: email`, on the reasoning that §5 fixes the agency at two people with no pending invites so
  naming a third would manufacture a person. Under §7's rule that reasoning no longer holds and the
  invite is now filled. The same person appears on CL-01c as the read-only account manager.
  **A-04's "Your name" input is NOT a placeholder** — it is the accepting user's own empty field
  showing an ink-faint "Full name" prompt, which is correct UX per sitemap A-04 ("Set name +
  password"). Do not prefill it; it has been mistaken for a defect once already.
- **A-04b uses Nikos Papadakis / `nikos.papadakis@aegeanyachting.gr`**, read off CL-04, inviter Sofia
  Marinaki (both §5 people; sitemap C-09 confirms billing-owner-invites-collaborator is the spec'd
  flow). CL-04 shows Nikos as an established user since 4 Jun 2026, so A-04b depicts a past moment.
  That is **not** a contradiction — §8 already ruled CL-04's join dates "incidental roster metadata",
  and he is the only §5-sourced client collaborator; inventing a second person would be worse.
  Adjudicated, closed, do not re-flag.

**Settings** — S-03 Agency · S-04 Team · S-05 Billing setup · S-06 Notifications ·
**S-03a Agency, Admin (AA) role variant** (Track B5)

**System** — **S-01 audit log + its three states · S-02 notifications centre ×2 chromes + three
states each** (Track B5)

**The settings tab bar has five tabs — Agency · Team · Billing setup · Notifications ·
Branding & integrations.** S-03 is canonical. **Four of the five now exist**; only Branding &
integrations is unbuilt — and it is **[P3], so it stays unbuilt** (see the route-tree re-check
below). The tab exists in the bar; the screen behind it is deliberately not designed. S-04 and S-06 were built by cloning S-03 whole and moving only the active
marker — the shared-chrome rule worked, all four tab bars verified identical.
**S-01 audit log and S-02 notifications centre are standalone screens, not settings tabs** — memory
previously implied a contiguous "S-01–S-06 settings" block and that was wrong.
**Refined in Track B5: only S-01 is a System-nav item.** memory called both "System-nav screens";
two builders inspecting independently found **no Notifications item in the sidebar at all** — S-02 is
reached by the topbar bell in both chromes. See §3.
**S-03a is a fifth settings artboard** and the first with a role-gated tab bar; the shared-chrome rule
held again, it being a whole clone of S-03 with only the gating changed.

**The settings tab-bar state collapse is CLOSED (Track B6). Do not re-flag it.**
*Inactive but reachable* and the *Phase-3* tab (Branding & integrations) both rendered
`--color-ink-muted` 500, so "not open right now" and "doesn't exist yet" were indistinguishable.
Andreas ruled it be fixed by extending the existing ladder rather than minting a new decision.
**Branding & integrations is now `--color-rule-strong` 500 + a plain `Soon` sibling text on all five
settings artboards** (S-03 `E0B-0`, S-04 `EBD-0`, S-05 `DWV-0`, S-06 `EIO-0`, S-03a `O1H-0`) — the
full four-state ladder is now in §2 and all four states were verified by computed styles pre- and
post-edit. The defect was pre-existing and **S-03a did not cause it**; its gated tabs were already
correctly distinct at `--color-ink-faint`.
**The one-author-then-replicate rule was applied to a five-instance chrome edit and held** — the ten
new label/marker nodes returned byte-identical computed styles across all five artboards.
Each edit replaced the old label Text node with a row wrapper, so **five orphans are expected** per
§4's known pattern; they do not render.

**Portal** — C-01 home · C-01b home first visit · C-02 services · C-03 new request · C-03b request
sent · C-04 requests + drawer · C-05 work · C-06 task drawer (approve / request changes) ·
C-07 balance · C-08 invoices · C-08b invoice detail · C-09 team · C-10 settings

**The client hub is one cloned shell.** CL-03 is the source; the other six tabs are duplicates of
it with the active-tab marker moved. Sidebar, breadcrumb, client header, three KPIs, quick actions
and the seven-tab bar are identical across all eight and must stay that way — edit the shell on
every artboard or on none.

**B-03 established the file's skeleton/loading pattern** — `--color-neutral-bg` bars, 4–5px radius,
9–13px tall, varied widths. None existed before. Reuse it; do not invent a second one.
The CL batch extended it within the same idiom: bar height scales with the text it stands in for
(11px text lines up to ~20px for KPI-scale values), and avatars/chips take a pill radius. Same fill
token, same radius family. This is the sanctioned extension — a taller bar is not a violation.

**Still to design (P1):**

**EVERY P1 ROUTE IN THE SITEMAP TREE NOW HAS A SCREEN.** Verified by agent-manager walking the route
tree line by line in Track B5, and independently by spec-compliance-checker. The auth set (B1),
W-01/W-04 (B3), B-05 and the catalog (B4), and S-01/S-02/S-03a (B5) are all done with their states.

**Route coverage is NOT the same as design coverage. The three variant items that used to sit here are
now DISCHARGED - built in Batch A (§6 top, worldY 19000), audited and repaired.** They were the fourth
time this list proved incomplete, so treat the warning as permanent rather than historical, and keep
walking the sitemap route tree yourself before scoping any batch.

- ~~**W-02's list view (PRD §6.5 P0).**~~ **DONE - `R0Z-0` (W-02a)**, with its own `-LOADING`/`-EMPTY`
  and the shared `W-02-ERROR`. The board also gained `-LOADING`/`-EMPTY`. P0 gap closed.
- ~~**D-01's contractor variant.**~~ **DONE - `QT0-0` (D-01a)**, the reduced "my tasks + my timer"
  dashboard on the Dimitra K. / Contractor persona.
- ~~**W-02's contractor variant.**~~ **DONE - `S6S-0` (W-02b)**, the "AC: assigned tasks only"
  filtered board on the same persona.

**The state-coverage debt across older screens is large and mostly untouched.** Sitemap §Conventions
requires empty/loading/error on **every** P1 screen. The Clients area (B2), Work (B3), B-05 + catalog
(B4) and System (B5) are complete. **W-02 is now complete too (Batch A: board + list, all states).**
Most of the rest is not: **D-01, D-02, T-01, T-02, B-01,
B-02, S-04, S-05, S-06** console-side, and **C-01/C-01b, C-02, C-04, C-05, C-09, C-10** portal-side
each lack one or more. Drawers (R-01, W-03, C-04's, C-06) are exempt by the precedent recorded above.
A Track B5 compliance run put the figure near 26 screens, **but that same run also reported C-07 as
"missing entirely from the file" when it plainly exists (`DM-0`)**, so treat the list as indicative
and re-derive the exact set before scoping a batch on it.

**One S-02 ↔ S-06 spec gap worth closing.** S-06's toggle groups and S-02's rendered event types do
not share a vocabulary. PRD §6.9 names *invoice issued* and *time approved into balance*; S-02
renders both, but S-06 offers no toggle for either — so a user can receive a notification they cannot
switch off. This is a **pre-existing S-06 gap that S-02 exposed**, not a B5 defect. Closing it means
editing S-06, which was out of B5's scope.

**Do not assume this list is complete without re-checking the sitemap route tree yourself.** Four
screens were missing from it entirely until the Aug 2026 audit caught them, W-01/W-04 were missing
until Track B3, and the three variants above were missing until Track B5. **The list has been wrong
more often than it has been right.**

**Route-tree re-check, Aug 2026 session — two corrections, both still standing.**
- **S-07 Branding / Integrations is [P3], not P1.** Sitemap §3.8: "Nav items exist disabled/hidden;
  no design now beyond the settings-tab pattern accommodating them." The five-tab bar already
  accommodates it. Do not put it back. (Note the route tree lists `branding[P3]` and `integrations[P3]`
  as two entries while the screen table has one combined S-07 row; the file follows the screen table
  with one combined tab. Known, adjudicated, left alone.)
- **S-02 Notifications centre is a shared console + portal screen needing two artboards.** Done in
  Track B5. The portal screen table (§4) still has **no C-ID for it** — that gap is unresolved in the
  spec and was deliberately not papered over; see §2 for how the artboards disambiguate and why
  minting `C-11` or `C-15` is wrong.

**T-03 IS ALREADY DESIGNED — memory was wrong about this and the claim is retired.** memory used to
list the T-03 timer widget as never designed. It is not: a **`TIMER RUNNING` widget is pre-existing
chrome in the console sidebar footer** and renders on every console screen — verified on D-01
(`1-0`), W-02 (`13J-0`) and CL-01 (`4YR-0`) during Track B3. It carries all three things sitemap
§3.4 asks of T-03 — running task name, elapsed time, stop control — so **nothing is owed for T-03**.
It has no component-level artboard of its own, like every other shared component in the file.
**Track B3 added the one state it lacked:** an **idle form** (`--color-neutral-bg` pill, ink-faint
clock icon, `No timer running` in ink-muted 13px/500), authored on W-04-EMPTY because a running timer
beside an empty task list contradicts itself. No idle form existed anywhere in the file before.

**The rest of sitemap §5's shared component inventory** still has no component-level artboards —
data table, drawer/sheet, comment thread, confirm dialogs, toasts, illustrated empty states,
money/date display, **invoice PDF template** (branded, Greek-compliant, MARK + QR block) and the
**transactional email templates**. These exist implicitly inside built screens only.
**"Notification bell + list" came off this list in Track B5** — the list now has dedicated screens in
both chromes (S-02 ×2) and the bell has a documented active state and a numbered badge. It still has
no *component-level* artboard, like every other shared component here.

**The row-level timer affordance is the file's THIRD shared idiom**, after B-03's skeleton/loading
pattern and CL-01-EMPTY's illustrated empty state. Authored on W-04 (Track B3); reuse it, do not
author a second one. **Three states sharing one 32px pill geometry** (`borderRadius: 9999px`, 14px
horizontal padding, 8px gap) so rows never shift when a timer starts or stops:
- **Idle** — fill `--color-page`, 1px `--color-rule` border, 9px right-pointing triangle in
  `--color-accent`, label `Start` in `--font-sans` 12.5px/600 `--color-ink-muted`.
- **Running** — fill `--color-accent-wash`, 1px `--color-accent` border, 8×8 `--color-accent` square
  at 2px radius as the stop glyph, elapsed time in `--font-mono` 12.5px/600 `--color-accent-text`
  with `white-space: nowrap`. The running **row** also takes an `--color-accent-wash` fill and a 2px
  `--color-accent` left border; every other row carries the same border in `transparent` so the
  geometry is identical.
- **Blocked** — transparent fill, 1px `--color-rule` border, triangle in `--color-rule-strong`,
  label `Start` in `--color-ink-faint`. Muted, never destructive: unavailable is not an error.
**Exactly one timer runs at a time** — PRD §6.6 specifies one running timer per user. Never render
two. Accent here does **not** violate §2's "accent is never a button fill" rule: that rule governs
**primary buttons**, and §2 reserves accent for **active-state marking**, which is what a running
timer is. The idle button is deliberately not accent-filled.
**Logged hours live in their own lane**, mono ink-muted, so the timer lane stays a single control.
**The accent tension is RESOLVED (Track B4).** W-02's task-status dot for *waiting on client* used to
be `--color-accent` too, so accent carried two meanings on W-04. It is now `--color-warning`
file-wide; see §2's task-status hue map row and §8. **Accent on this screen now means exactly one
thing: a running timer.**

**State variants on the clients batch — ALL DISCHARGED (Track B2).** Loading, error and empty now
exist for every P1 Clients screen, plus the two CL-01 permission/view variants. Nothing is owed
here; the block that used to list the gap is deleted rather than left to be re-read as outstanding.

Two findings from that batch that are **not** closed and belong to whoever picks up the Clients area
next:
- **No client in the ledger is archived**, so CL-01d ships as an honest *empty* archived view. The
  archived-**row** rendering is therefore still undesigned. Note the sitemap defines no archived
  view or route at all — CL-01d rests on a PRD §6.2 acceptance criterion alone. **Archiving is a
  flag, not a status**, so no "Archived" status chip was rendered and none should be.
- **CL-09 carries an editable VAT field the sitemap does not give it.** CL-09b was built because the
  field is really there, but it means CL-09 duplicates validation the sitemap assigns to CL-02,
  where CL-02a already covers it. Unresolved — a spec question, not a design one.

**Three form controls the catalog uses — two pre-existing but never written down, one new.**
Recorded in Track B4 because CA-01's builder had to go hunting for the first one and two builders
independently invented different versions of the third.
- **The pill toggle (boolean).** 40×22, pill radius, `--color-accent` track with the knob right when
  on, `--color-rule-strong` with the knob left when off. **It already existed on S-06 (`EIO-0`) and
  CL-09 (`6ME-0`)** and is now also the catalog's portal-visible control on CA-01/CA-02/CA-03/CA-03a.
  Accent here is legitimate: §2 reserves accent for **active-state marking**, which is what "on" is.
  Reuse it; do not draw a second toggle.
- **The pill group (mutually exclusive choice).** Three independent bordered pills, no wrapper track,
  active one filled solid `--color-ink`, inactive a 1px `--color-rule` outline. Used on CA-03
  (`N1C-0`, pricing type), CA-03a (`NUN-0`, interval) and the S-02 All/Unread filter
  (`PHE-0`/`PHH-0`).
  **CORRECTION (Track B5): this does NOT derive from CL-01's status-filter group.** memory said it
  did and memory was wrong. CL-01's actual filter (`554-0`) is a **`--color-neutral-bg` segmented
  track** — grey wrapper, active state a white pill floating inside — which is a visually different
  component that merely shares the name. Disproved by computed styles after a builder flagged the
  discrepancy and an auditor confirmed it. **`NUN-0` is the canonical reference; do not clone
  `4YR-0`/`554-0` when a brief says "pill group".** The two components coexisting under one name is
  exactly how CA-03a once shipped a third variant.
  **CA-03a originally shipped a different component** — a `--color-neutral-bg` track with a white
  sliding thumb — because the two drawers were built by different builders who each authored it.
  Caught in audit and unified onto the pill group, on the reasoning that the pill group already
  existed in the file and the track-and-thumb existed nowhere. **Third time §8 has recorded parallel
  builders diverging on one shared component**, and the first time it was a *control* rather than
  chrome. The one-author-then-clone rule needs to cover components, not just shells.
- **Pricing-type and interval chips.** Extends B-03's existing vocabulary (§8: FIXED PRICE neutral,
  RECURRING info). Now: **services — FIXED PRICE `--color-neutral-bg`, RECURRING `--color-info-bg`,
  HOURLY `--color-review-bg`; packages — ONE-OFF neutral, MONTHLY info, YEARLY info.**
  **YEARLY was originally review and was moved**, because HOURLY and YEARLY both on review put two
  meanings one tab-click apart inside one module, on top of review's existing job as the *in review*
  task-status dot. Monthly and yearly deliberately share info: the real distinction is **one-off vs
  recurring**, and cadence is carried by the word. No §2 rule was breached either way — no
  task-status dot renders anywhere in the catalog, verified — so this was a semantic-clarity call,
  not a defect fix. HOURLY keeps review as its only catalog use.

**Pre-existing, file-wide, out of scope when found:** sidebar badge counts render in sans, not Geist
Mono, against §3's mono-for-counts rule. On every console screen, inherited by every clone. Fixing
it is a file-wide pass, not a batch fix.

---

## 7. Working rules

- Plan before building; check in on anything structural.
- Small, reviewable steps. One visual group per Paper write call.
- Screenshot and self-review after each section: no wrapped text, vertical lanes aligned, nothing
  clipped, contrast holds.
- Realistic sample data only — no lorem ipsum. Content should read like a real agency's, because
  the design is judged on how it reads.

### THE SAMPLE-DATA RULE — decided by Andreas, 2 Aug 2026. This overrides everything below it.

**During the design phase, sample data is presentation material. Do not audit it, do not block on
it, and do not treat a data mismatch as a defect.** Every figure, name, date, email, invoice number
and total in this file exists to make a screen legible. **All of it is replaced in the development
phase**, when the real database supplies real values.

What this means concretely, for builders and auditors alike:

- **Invent freely.** If a screen needs a value the file does not have — a tax office, an email, a
  password policy, an archived client, an invoice number — write a realistic one and keep building.
  **Do not stop, do not ask Andreas, do not render `TODO:` or "Not set".**
- **Cross-screen contradictions are not defects.** If B-02 and CL-07 disagree about an invoice, or
  a count on one screen does not match a count on another, that is presentation noise. **Do not
  report it. Do not fix it. Do not open a finding.**
- **Arithmetic mismatches are not defects.** A subtotal that does not equal the sum of its lines is
  acceptable. Make numbers *look* right at a glance; do not spend a pass making them reconcile.
- **§5 is a non-binding style reference, not a contract.** Use it so screens feel like one product.
  You are not required to match it and you are not wrong for departing from it.

**What is still audited — none of this is data checking, and all of it stays in force:** the design
system (§2, §3), layout and geometry, wrapped or clipped text, vertical lane alignment, contrast,
font drift and `system-ui` fallbacks, status-family collisions, chrome and active-nav consistency,
artboard naming (§2), and spec coverage against the PRD and sitemap. **An auditor reporting a data
contradiction is reporting a non-issue and should be told so.**

*The tradeoff was stated and accepted: this file previously caught an invoice number assigned to two
different clients and a dashboard dated a week apart from the line items it summarised. That class of
bug will no longer be caught. Recorded here so a future session knows it was a decision, not an
oversight, and does not "restore" the old rule.*

**Superseded by the above** (kept only so nobody reinstates it from an old brief): the previous rule
was *"On any conflict with §5, stop and report; never author content that reconciles it"*, restated
verbatim at the top of every builder brief. **It no longer applies. Stop putting it in briefs.**

---

## 8. Correction log

- **INV-2026-0177** was shown as Aegean's last invoice on C-07 while B-02 assigned it to Nostos
  Travel. Fixed: C-07 now shows INV-2026-0203, €3,900, ISSUED, due 4 Sep.
- **Dashboard date** read "Saturday, 1 August 2026" while its own balance items were dated 25–30
  Aug. Fixed: anchored the whole set to Monday 31 August 2026.
- **Dashboard KPI** "Hours this week" was ambiguous once the timesheet showed a specific week.
  Relabelled "My hours, week of 24 Aug".

**Aug 2026 clients batch — audit of all 35 artboards.**

- **D-01 activity feed arithmetic.** "Approved 3.5 h on Aegean · €385.00" — 3.5 × €85 = €297.50.
  Fixed on D-01 **and on C-01**, which carried the same line client-side. The underlying *event*
  still matches no entry in any time ledger; see §5 open items.
- **T-01 by-state legend** read 16.0/6.0/2.5/0.5 = 25.0 against its own 26.5 h week. Fixed to
  17.5 approved; the stacked bar was re-proportioned to match. memory §5 was the origin of the
  error and has been corrected too.
- **INV-2026-0203 VAT** on C-08b was back-solved: €3,145.48 + €754.52 = €3,900.00, but €754.52 is
  not 24% of €3,145.48. Fixed to €285.16 / €3,145.16 / €754.84.
- **Client counts.** D-01 said "across 6 active clients" for a balance carried by 5 clients, 5 of
  whom are active. B-01's chip said "6 CLIENTS" while its own footer said "5 of 6". Both now say 5.
- **INV-2026-0203 dated twice.** D-01 stamped it "2 h ago" (31 Aug) while five screens say issued
  21 Aug — and a 31 Aug issue cannot be due 4 Sep on Net 14. D-01 restamped 21 Aug.
- **C-05 finished tasks before their hours existed** — "Finished 29 Aug" / "28 Aug" against time
  entries dated 30 Aug / 29 Aug. Fixed on C-05 and on C-06, whose dimmed base layer duplicates it.
- **D-02** drew 4 rows under an active "New 3" filter, one of them TRIAGED. Triaged row removed.
- **Aegean's invoice count.** CL-07 was built claiming one invoice on record because §5's registry
  only had 0203. C-08 already showed three. CL-07 now shows all three; §5 gained 0166 and 0141.
- **Billing email.** CL-03/CL-09 were built with `sofia.marinaki@` and an invented contact-log entry
  claiming the address had been changed at her request — a fabricated backstory papering over a
  conflict with C-10. Reverted to `finance@aegeanyachting.gr`; see §2 for the field distinction.
- **CL-06 double-counted 3.0 h.** It listed the balance's 8.0 h line as approved *and* the 31 Aug
  3.0 h submitted entry that is already inside it. Corrected to 5.0 h per W-03.
- **Two greens for "Active".** CL-05 used info-blue for project lifecycle directly beneath the
  success-green client pill. Unified on green; see §2.
- **Primary buttons** shipped accent-filled against the file's ink convention. Corrected on all
  nine new artboards.

**€680 fork — CLOSED, Resolution A shipped, verified across all 15 artboards.**

Memory's own diagnosis of this fork was **wrong** and is corrected here so it is never re-derived.
It claimed the balance's 8.0 h was "5.0 approved + 3.0 unapproved shown to the client". It was not.
Two unrelated 8.0 h figures coincided:
- the **task** rollup (W-02/W-03) = Dimitra 5.0 approved + Dimitra 3.0 submitted;
- the **balance** line (B-01/C-07/CL-07) = Andreas 3.0 approved (24 Aug) + Dimitra 5.0 approved
  (26 Aug), collapsed into one row and mis-stamped with the later date.
Every hour in the balance line was already approved. **No unapproved hours were ever shown to a
client.** The real defects were a collapsed, mis-dated aggregate and a missing item.
Fix: split into two lines, item count 7→8, span 26–30 → 24–30 Aug. No total moved. Separately, the
task rollup was corrected 8.0 → 11.0 h / €935.00 — it had been silently dropping Andreas's entry.

**Hour-ledger reconciliation — CL-06 chosen as canon, T-01 re-authored.** T-01 stood alone against
W-02, C-05, B-01/C-07/CL-07 and CL-06 on four of Andreas's Aegean entries. CL-06 reconciles exactly
with §5's Aegean anchors (29.0 h/€2,465.00 and the 64.0-of-90.0 burn split); T-01 satisfied only
itself and would have cost €1,147.50 off Aegean and 13.5 h off the burn. Four T-01 edits: Blog
migration moved TUE 25 4.5 h → THU 27 6.5 h · `Yacht detail page template` deleted (it is Dimitra's,
29 Aug) · Performance pass added FRI 28 4.5 h · Accessibility fixes added SUN 30 3.0 h. Week
re-derived 26.5 → 33.0 h; stacked bar re-proportioned; D-01's paired KPI updated.

**Also fixed this batch:**
- **D-01 / C-01 phantom approval.** "Approved 3.5 h · €297.50" matched no entry in any ledger.
  Restated as the 24 Aug 3.0 h / €255.00 approval — which is exactly the newly-itemised 8th item.
- **D-01 "Homepage copy revisions"** was attributed to Elias & Co; W-02, C-01 and C-05 all place it
  on Aegean. Now Aegean.
- **D-01 "6 balance items marked invoiced"** on INV-2026-0203 — no ledger sourced 6. Clause deleted
  rather than replaced with a guess.
- **T-02-EMPTY** blamed the three draft entries on Dimitra; they are all Andreas's (the viewer's).
- **B-02's "6 CLIENTS"** chip. §8 recorded this as fixed on B-01 — it was fixed on one twin and
  missed on the other. Lesson: KPI cards duplicated across B-01/B-02 must be checked as a pair.
- **B-01 time-entry chips** were filled tint *pills*, colliding with the request family (§2).
  Now `borderRadius: 3px` square tags.
- **B-03 issue/due dates** shipped in sans; set to mono. The same two fields on B-04/B-04a/B-04b
  were fixed later, in the issuer-identity pass — **this defect is now closed on all four screens.**
- **B-03 FIXED PRICE and RECURRING** were both info-tinted; FIXED PRICE moved to a neutral chip.

**Settings batch (S-03 / S-05).** Two builders working in parallel each built the settings tab bar
and diverged on the fifth tab — "Branding & integrations" vs "Branding / Integrations", and
`--color-ink-muted` vs `--color-ink-faint` for its inactive state. Caught in audit, unified on S-03's
version. **Second time parallel builders diverged on shared chrome** (the first was duplicate canvas
coordinates). When two builders must both produce the same shell, one builds it and the other clones
it — do not have both author it independently. Also fixed: S-03's three `TODO:` placeholders shipped
in two different fonts, sizes and weights; unified on sans 13.5px/600.

**S-04 / S-06 batch.**
- **Invented email domain, caught and fixed — THEN FULLY REVERSED ON 2 Aug 2026.** S-04 shipped
  `andreas@vsualweb.com` and `dimitra@vsualweb.com`; at the time nothing established a VSUALWEB email
  domain, so both were replaced with `TODO: email`. **Both are now back, identical to what was
  stripped out**, and the domain has since been sourced anyway (`info@vsualweb.com`, §5). The
  builder's original defence — citing CL-04 as precedent — was rejected then and the rejection was
  right *under that rule*; it simply no longer applies. **This entry is kept only as the clearest
  example of work done twice because the data rule changed. Do not strip these emails a third time.**
- **Ruled acceptable, do not relitigate:** join dates and last-active timestamps on both S-04 and
  CL-04 are unsourced but are incidental roster metadata that nothing else reconciles against. They
  stay. The distinction that matters is whether a value asserts an *identity* the ledger lacks.
- **S-06's event groups are mostly inferred — THIS NOTE WAS WRONG AND IS CORRECTED (Track B1).**
  It claimed PRD §6.9 names only three events. §6.9 actually names **seven**: new request (agency),
  request converted/declined (client), task status change (client), comment on subscribed task
  (both), invoice issued (client), payment received (agency), and time approved into balance
  (client, if toggle on). So "time approvals" and "invoice issued" **are** spec-named, contrary to
  what this note said. Only **"client approves / requests changes"** and **"invoice overdue"** are
  genuinely unnamed in §6.9. S-06 is better sourced than memory claimed. The six toggle defaults
  (5 on, 1 off) remain the builder's choice — §6.9 says only "sensible defaults".
- **An auditor mistook its own brief for a prompt-injection attempt** and audited unrelated
  artboards. Briefs that open with quoted rules and restated ledger figures can read as injected
  content. State plainly that the brief comes from agent-manager, and that memory.md wins on any
  conflict. Re-dispatched cleanly on the second attempt.

**Agency identity supplied — applied to S-03, one contradiction surfaced and left open.**
Andreas supplied the legal name, VAT, address and company email; they are now §5 ledger data. S-03's
three TODO fields became real, a `Legal name` field was added to the VAT card (it had none — one
field was being asked to carry both the brand mark and the legal entity name), the `Agency name`
subtitle stopped claiming it appears on documents, and the footer note was narrowed to the one field
still missing. At the time, tax office (ΔΟΥ) and the two per-person email local parts stayed TODO —
a supplied domain did not make `andreas@` and `dimitra@` sourced, and S-04 correctly needed **no**
edit, since every email slot on it names an individual and a company address would misrepresent
identity. **All of that is superseded: on 2 Aug 2026 the ΔΟΥ and both S-04 emails were filled with
invented values (§5) and S-03's footer note was deleted outright.** The one point still worth
keeping is the field distinction itself — a company address must not stand in for a person's.
**B-04 issuer pass — done, contradiction closed.** All three artboards took the real identity, and
the sans-date defect on the same screens was fixed in the same pass. Verified: zero hits on the old
VAT, one issuer instance per artboard with none hiding on the success/error overlays (the C-06
dimmed-base-layer lesson held), INV-2026-0207 not renumbered, MARK and all invoice arithmetic
untouched. Two judgements recorded in §5: the masthead stays compact, and it carries no ΔΟΥ line —
the same screen's compliance rail already states the invoice cannot be issued, so the preview cannot
be mistaken for an issuable document.

**Invoice renumbering — APPLIED (Track B0.1).** `INV-2026-0141`→`INV-2026-0172` and
`INV-2026-0166`→`INV-2026-0187`, resolving §5's non-monotonic-numbering defect for the pair it
named. Only the number strings changed; dates, amounts, statuses, MARK values and client
attributions are untouched. Four text nodes: two on **C-08**, two on **CL-07**. **C-08b was not
touched** — it details 0203 and never carried either number.
**B-02 was rebuilt 7 rows → 9.** It contained *neither* 0141 nor 0166, so the agency's own master
registry showed no evidence of Aegean's two back-invoices while CL-07 ("3 invoices") and C-08 both
asserted them. Rows added: **0187** at position 5 and **0172** at position 8, cloned from the 0198
PAID/UPLOADED row; caption re-derived to "Showing 9 of 18 invoices". Nothing dropped off — the
before set (0206, 0203, 0198, 0191, 0184, 0177, 0165) is fully contained in the after set.
Their `UPLOADED` source values were **read off CL-07's existing SOURCE column**, not chosen.
Two CL-07 row frames were left named after the old numbers and were tidied to match. **B-02 and C-08
name row frames generically (`Frame`/`Rectangle`) and never embed invoice numbers** — only Text nodes
carry number names, and those auto-match their content. Nothing stale there; do not go looking.
**Two premises in the original fix were wrong and are recorded so they are not re-derived.**
(1) §5 claimed B-02 rendered "the top 7 by number, 0206 down to 0165" — impossible, since 0166 >
0165. B-02's row set was hand-authored from the older 7-invoice registry and never matched any sort
rule. There is no sort control on B-02 at all. (2) The renumbering was expected to lift both Aegean
invoices onto a 7-row page 1. It cannot: 0172 is issued 30 Jun and ranks 8th of nine by number *and*
by date. Showing all nine was the only row set that met the goal without inventing an ordering rule
or deleting the VOID chip.
Audited clean: zero hits on 0141/0166; 0172 and 0187 on exactly C-08, CL-07 and B-02; `INV-2026-0207`
untouched; no clone drift (font, `width: 130px`, `flexShrink: 0`, `whiteSpace: pre-wrap` all intact);
outlined-pill invoice chips preserved; all five statuses still present; Overdue KPI €4,150 still
exact. **An auditor false-positive was rejected:** it flagged CL-07's "8 items ready to invoice /
24–30 Aug" as contradicting §5, citing "7 items / 26–30 Aug" — those are the *superseded pre-fork*
values that §5 explicitly says not to revert to. CL-07 is correct. Cross-check audit findings
against §5 as it currently reads, not as it once read.

**Retroactive state rename — APPLIED (Track B0.2).** The ten early lowercase state artboards took
the §2 uppercase form, rename-only, zero visual change: CL-01a→CL-01-LOADING · CL-01b→CL-01-ERROR ·
CL-03a→CL-03-LOADING · CL-03e→CL-03-ERROR · CL-06a→CL-06-LOADING · CL-07a→CL-07-LOADING ·
B-03b→B-03-EMPTY · B-03c→B-03-LOADING · B-03d→B-03-ERROR · T-02b→T-02-EMPTY. Descriptive suffixes
preserved; only the ID token changed. B-03a, B-04a/b, C-01b and CL-09a deliberately untouched — flow
variants, lowercase is correct. Verified: artboardCount still 57, nodeCount still 16581, all
coordinates and childCounts identical pre/post, and **no text node anywhere rendered an old ID**, so
nothing visible changed. The §2 naming rule now holds file-wide with no exceptions.

**Auth set A-01–A-04 — BUILT AND AUDITED (Track B1). 57 → 67 artboards.**
Ten artboards at worldY 11000, worldX -720 → 12960 on the file's 1520px spacing. Introduced the
**third chrome** (§3). Structure: one builder authored A-01 (`EWB-0`); three builders cloned it for
the other nine. **The shared-chrome rule finally worked on the first attempt** — the auditor verified
the shell byte-identical across all ten (artboard padding/gap/fill, brand mark, card geometry,
inputs, buttons), no coordinate collisions, and **zero `system-ui` fallbacks across ~107 Text nodes**.
That is the third time parallel builders were asked to produce one shell and the first with no
divergence; the fix was one author, explicit coordinates, and the full shell spec restated in every
clone brief.
**Two defects caught in audit and fixed:**
- **Button shape drift, all ten artboards.** Shipped `borderRadius:8px` / height 44px; the file's
  real primary button is a **pill at 40px**, measured on B-02 (`Y9-0`) and CL-01 (`54E-0`). Corrected
  on all 12 button frames (9 primary + 3 Google OAuth). Root cause was §3's "controls 8px, pills
  9999px" not saying which one a button is — **§2's Primary buttons row now states shape**, so the
  ambiguity cannot bite a third time. (§8 already records the same class of defect: buttons shipped
  accent-filled against the ink convention across nine artboards.)
- **Helper line diverged three ways** because agent-manager gave the three builders inconsistent
  instructions — verbatim on eight screens, deleted on A-02, reworded on A-02b. Resolved to one rule:
  **sign-in screens only** (see §3). It was contextually wrong on A-04b (a client-side invitee has no
  "agency admin") and contradicted A-04-ERROR's deliberately generic body copy. Also fixed on
  A-04-ERROR: it stated the expiry **twice**, in a banner and a title; now once.
**Rejected finding, now REVERSED (2 Aug 2026):** the auditor flagged A-03's `TODO: password policy`
as a loose end and it was defended as deliberate, on the grounds that no policy exists in the PRD or
sitemap so stating one would invent a system rule. §7's rule makes inventing it correct. A-03 now
reads "At least 10 characters, with one uppercase letter and one number." The PRD observation still
stands and is worth keeping: **§6.1 really does specify no password policy**, so the development
phase must decide the real one rather than reading it off this screen.
**No expiry duration appears anywhere** on A-02b, A-03-ERROR or A-04-ERROR: PRD §6.1 says only that
the reset link "expires and is single-use" and specifies no interval. Do not add one.
**The auditor's own definition file carries a stale §5.** `.claude/agents/design-consistency-auditor.md`
still embeds "Aegean 7 items / 26–30 Aug", a seven-invoice registry without 0172/0187, "26.5 h /
16.0 approved", and a five-client list omitting Thalassa. That stale copy is the mechanism behind the
false positive §8 already records. It was overridden explicitly in the B1 audit brief and the audit
came back clean — **but the file is still wrong and will mislead the next unbriefed audit.**

**Invoice series closed out — Track B0.3. Three decisions by Andreas, all applied and audited clean.**
- **Monotonicity fixed by swapping `0177` ↔ `0184`** rather than minting a number. A swap leaves the
  number *set* unchanged: nothing retired, no gap, 0207 and S-05's 0208 provably untouched. Only the
  number strings moved; every date, amount, status, MARK and client attribution stayed with its
  invoice. Four text nodes on **two** artboards — B-02 and **D-01** (found by file-wide search; D-01
  was named in no brief and would have been left contradicting B-02). **B-02's rows also had to swap
  position**, because the table renders descending by number and the two invoices' relative rank
  changed — done by reordering the two row *frames*, not by rewriting row content, so no chip styling
  could drift. Tiebreak for the 31 Jul pair recorded in §2.
- **Invoice count 18 → 9.** B-02's caption is now "Showing all 9 invoices"; the Invoices tab pill
  reads 9 on **both B-01 and B-02** — the §8 twin lesson applied pre-emptively for once, not after
  the miss. "Invoiced this month" re-derived €12,450 → **€8,980** on both, with its sublabel and
  `ISSUED` badge re-derived with it (leaving those stale would have broken the subtotal-equals-lines
  rule under a corrected headline). See §5 for the arithmetic and the two deliberate exclusions.
- **B-02's pagination read "1 2 3"** next to a caption saying there are nine invoices — a three-page
  control asserts up to 27. The audit called it pre-existing chrome and out of scope; **agent-manager
  overrode that** — lowering a count while leaving a widget asserting more pages is the same unbacked
  figure in a less obvious place. Reduced to a single-page state: page cells `2` and `3` deleted, next
  arrow given the disabled treatment the control's own prev arrow already used (`--color-rule-strong`
  stroke on an unchanged `--color-rule` border), geometry otherwise untouched. **B-01 has no
  pagination widget at all**, so there is no twin here.
- **B-04 eCare line label CLOSED.** "eCare Growth plan — August 2026" → "eCare Growth plan — August",
  matching the balance ledgers word for word as CL-07 promises. **Six nodes, two per artboard** on
  B-04/B-04a/B-04b — one in the line-items table and one in the branded PDF preview. The C-06
  dimmed-base-layer lesson paid off in an unexpected way: on B-04a/B-04b both copies sit on the
  *dimmed base layer* and neither is on the modal overlay, because the success/error modals render no
  line items. C-08b's "eCare Growth plan — **July** 2026" is a different invoice and month; left alone.
- Audited clean, no defects: series monotonic across all nine, 0141/0166 still zero hits, 0207
  unrenumbered, all five status chips still on B-02 including the single VOID, mono number lane intact
  (`width:130px` / `flexShrink:0` / `whiteSpace:pre-wrap`), all four KPI cards identical across
  B-01/B-02, zero `system-ui` fallbacks.

**Disputed, unresolved:** an audit reported T-02-EMPTY's sidebar showing `Time 7` on a zero-queue screen;
direct node inspection found the badge already `opacity: 0` with text `0` and named "hidden at
zero". No change made. If it renders a 7 in a future screenshot, the badge frame is the place to look.

**Track B2 — Clients state variants BUILT AND AUDITED. 67 → 75 artboards.**
Eight artboards at worldY 5700, adjacent to the CL cluster: CL-01-EMPTY (`F7I-0`, x 11440) ·
CL-04-EMPTY (`G0F-0`, 12960) · CL-05-EMPTY (`G9E-0`, 14480) · CL-06-EMPTY (`GJ4-0`, 16000) ·
CL-07-EMPTY (`GXV-0`, 17520) · CL-09b (`FGM-0`, 19040) · CL-01c (`FR7-0`, 20560) ·
CL-01d (`H9O-0`, 22120). Built concurrently with Track B0.3 with no collision — explicit coordinates
per artboard, re-checked against `get_basic_info` before each create. **That is the coordinate trap
in §4 finally being avoided by design rather than survived by luck.**
- **CL-01c contradicted itself and was fixed twice.** It originally rendered read-only Member
  permissions while the topbar still read "Andreas Strb. / Owner" with an "AS" avatar — asserting
  Andreas was simultaneously full-access owner and read-only member. That was fixed by blanking it
  to `TODO: name` with the avatar initials cleared, and the lesson recorded was "a permission
  variant needs a person who holds that permission, and inventing one is inventing data."
  **On 2 Aug 2026 the second half of that lesson was retired** — inventing the person is now the
  right answer. CL-01c shows **Giorgos Petrou / Member / avatar `GP`**. The first half still holds:
  a permission-variant screen does need a person who holds that permission, so invent one rather
  than borrowing someone whose real role contradicts the variant.
- One builder self-correction worth recording: it flagged that the new artboards had not shrunk
  because their heights matched their sources. That reading came from a mid-build snapshot and was
  wrong — CL-07-EMPTY is 1267 against CL-07's 1664, CL-06-EMPTY 1115 against 1416. `fit-content`
  behaved. **Do not diagnose geometry from a mid-build snapshot.**
- Audited clean otherwise: zero `system-ui` fallbacks, hub shell identical across the four Thalassa
  tabs, lead = info tint throughout, no `aegeanyachting.gr` leaked onto any Thalassa screen, CL-09b's
  error idiom matches CL-02a's and its invalid VAT matches no real client, two direct children
  everywhere, no overlaps.

**The design-consistency-auditor's embedded ledger is REMOVED — the agent now reads §5 at run time.**
`.claude/agents/design-consistency-auditor.md` carried its own copy of the dataset. It drifted, and
§8 already recorded it producing a confirmed false positive (flagging CL-07's correct "8 items /
24–30 Aug" by citing its own superseded "7 items / 26–30 Aug"). By the end of this session an
explicit ledger override had to be written into **three** consecutive audit briefs to work around it;
without the override, every Thalassa screen in Track B2 would have been flagged as invented data.
The `## The canonical ledger` section is gone, replaced by a precedence rule — *§5 as it currently
reads is authoritative; never flag an artboard for matching §5* — plus a named account of the
failure so nobody re-inlines it. `name:`, `description:` and `tools:` are byte-identical; all seven
checks survive. The previous version is kept at `.claude/drafts/design-consistency-auditor.PREVIOUS.md`.
Three checks improved as a side effect: VAT is no longer hardcoded at 24% (it is an S-05 default that
can change), status families now read from §2 (which defines **six**; the file listed four), and a
badge finding now requires `get_node_info` inspection before being raised — which is exactly the
T-02-EMPTY dispute above.
**Same defect class, one file over — NOW FIXED.** `.claude/agents/spec-compliance-checker.md` line 36
read *"...across all four systems"* when §2 defines six. It now reads "across **every** family in
`memory.md` §2 — read §2 for the current set rather than assuming a count". Verified 2 Aug 2026.

**The placeholder-clearing pass — 2 Aug 2026. The `TODO:` idiom is RETIRED file-wide.**
Andreas reversed the data discipline (§7) and asked for every placeholder to be replaced with an
invented value. **Eleven placeholders across ten artboards**, all cleared; `find_nodes` returns zero
hits on both `TODO` and `Not set` file-wide. Values and their locations are in §5's invented-values
table. Artboards touched: **S-03, S-04, A-03, A-04, CL-01c, B-03-EMPTY, CL-04/05/06/07-EMPTY.**
- **Replacing the text was the easy half; removing the placeholder *chrome* was the real work.**
  The `TODO:` idiom was not just a string — it was `--color-warning-text` inside dashed warning-tint
  boxes (S-03's 440px field box, S-04's two chips). Swapping text alone would have left real values
  sitting in orange "something is wrong" containers. Every one was restyled to match its sibling
  fields, inspected first rather than guessed. **If a placeholder idiom is ever introduced again,
  retiring it means retiring its styling too.**
- **S-03's invoice-issuing block WAS tied to the missing ΔΟΥ** and is cleared. Footer note `EAA-0`
  read "Invoice issuing is blocked until the tax office (ΔΟΥ) is filled in" — literally that field,
  not a generic warning. Removed, footer switched to `flex-end` so Cancel/Save stay right-aligned.
  **The separate, real blocker was deliberately left alone:** certified myDATA provider selection
  (PRD §11 Q1) still blocks native issuing and still says so on S-05 and B-04. Filling a tax office
  must never be read as declaring invoice issuing possible. **That distinction is the one thing in
  this pass that was not sample data** — §11 Q1 is a live decision Andreas owns.
- **A false premise in the task brief, corrected:** A-04 was said to have an empty invitee *name*
  field. It has none. The one blank field is "Your name", the accepting user's own input with a
  correct ink-faint prompt. Left untouched — see the §6 auth note.
- Audited clean by design-consistency-auditor: **zero drift, zero defects**, one polish item (the
  orphan below). Zero `system-ui` fallbacks across nine restyled nodes. The four CL-EMPTY headers
  verified pixel-identical after the edit — same width, x-offset and worldY — so the cloned hub
  shell survived. **The auditor reported no data findings**, confirming its 2 Aug rewrite works.
- **One node could not be removed and is knowingly left in the file.** `EAA-0` is orphaned but
  undeletable — see the new §4 trap. Inert: no render, no search hits.
- **Both builders misreported the same deletion.** One said it deleted `EAA-0`; a second, dispatched
  by mistake onto the same artboards, said it deleted the orphan. Neither had. Only direct
  `get_node_info` inspection by the auditor found the truth. **Builder self-reports of a deletion
  are not evidence** — the same lesson §8 already records for badge state.

**`.claude/agents/paper-screen-builder.md` WAS STALE — IT IS NOW FIXED. Do not re-flag it.**
It used to read *"...If a required piece of real content is missing, insert a clearly marked `TODO:`
and report it"*, which is the exact mechanism that minted all eleven placeholders the 2 Aug pass had
to clear. **Verified 2 Aug 2026 (Track B3): the file now carries §7's sample-data rule verbatim**
("invent realistic values freely", "never render `TODO:` or 'Not set'", "you do not have to
reconcile with other screens"), plus an explicit note that the old instruction is retired and must
not be restored. The status-family count is fixed too — it now tells builders to **read §2 for the
current set** rather than naming a number. All three agent definitions (builder + both auditors) are
therefore consistent with §7. **Builder briefs no longer need a data-rule override**, and adding one
is actively harmful — see the prompt-injection entry below.

**Track B3 — the Work module BUILT AND AUDITED. 75 → 84 artboards.**
Nine artboards at worldY 13000, worldX -720 → 11440 on the file's 1520px spacing: W-01 and its
three states, W-04 and its three states, plus W-04a. Four builders in three waves — **one author
(W-01) and three cloning**, which is the pattern that finally worked for the auth set. **No chrome
divergence and no coordinate collision**, the second batch running to that rule cleanly.
- **W-01's `-ERROR` and W-04's `-ERROR` were built separately rather than sharing one panel.**
  Reasoning now recorded as a §2 rule: CL-03-ERROR covers seven tabs because they share a shell
  *and* a body region; W-01 and W-04 are separate routes with different titles and toolbars.
- **W-04 is the contractor's view by default**, per sitemap's "the contractor home screen". No
  agency-member variant was built: sitemap gives W-04 no money column at all, so an AM variant would
  differ only by avatar and sidebar state — a variant with no design content. **Verified by both
  auditors: zero euro figures, rates, balances or budget anywhere on the five W-04 artboards.** Her
  own logged hours are present and are permitted (PRD §6.5 denies *budgets and rates*, not hours).
- **The grouping toggle defaults to Status**, with W-04a as the by-due variant. Status won because
  the five-status vocabulary is the product's spine, it is the field she actually mutates from this
  screen, and grouping by status puts the running timer inside *In progress* where a timer belongs.
  In the by-due variant each row carries the status dot inline, since the header no longer does.
- **The timer affordance was established here** — see §6, third shared idiom. **T-03 turned out to
  already exist** in the sidebar footer; memory's "never designed" claim was wrong and is corrected.

**A spec-compliance-checker finding was FALSE and was overturned by node inspection.** It reported
that W-04's sidebar rendered Requests, Clients, Billing, Catalog, Audit log and Settings in normal
enabled ink with full-strength badges, and called the batch non-compliant with PRD §7. Both builders
had reported the opposite. design-consistency-auditor inspected every one of those nodes on all five
W-04 artboards: labels are `--color-ink-muted`/500, icon strokes `--color-ink-faint`, and both badges
`--color-neutral-bg`/`--color-ink-muted`. **The build was correct; the report was not.** Lesson, and
it is the same one §8 already records twice: **a claim about a rendered colour must be settled with
`get_node_info`/`get_computed_styles`, never by reading a screenshot** — ink vs ink-muted on a small
label is not reliably distinguishable at screenshot fidelity.
**A premise in agent-manager's own brief was also wrong, and the auditor caught it.** The brief said
W-04 should clone CL-01c's disabled-nav treatment for six items. **CL-01c mutes only four** — Billing,
Catalog, Audit log, Settings — because an Account Manager keeps Requests and Clients. W-04 correctly
*extends* the same tokens to six, because PRD §7 denies a **Contractor** those two as well. Reusing a
treatment across roles means reusing its **styling**, not its **scope**; the scope comes from the
matrix each time.

**ACCENT CARRIED TWO MEANINGS — CLOSED IN TRACK B4. Kept for the reasoning; the item is not open.**
The fix: **waiting on client moved from `--color-accent` to `--color-warning`**, treatment unchanged
(bare dot + label). **17 nodes across 9 artboards**, all verified by post-edit `get_computed_styles`.
The full five-hue map is now recorded in §2 so it never has to be rediscovered — it was not written
down anywhere before, which is why a replacement hue could not be chosen without a file sweep first.
`--color-review` was the other nominee and was **rejected on inspection evidence**: it is already the
*in review* dot in the same family. Nodes changed: dots `1AU-0` (W-02) · `1J8-0` (W-03 base layer) ·
`J28-0` (W-04) · `JD6-0` (W-04a) · `6IT-0` (CL-05) · `BU-0` (D-01) · `40A-0` (C-01) · `4F1-0` (C-05) ·
`4I2-0` (C-06 base layer); labels `1AV-0` · `1J9-0` · `4F2-0` · `BV-0` · `40B-0` · `4I3-0`; and C-06's
timeline marker `4JV-0` (accent-wash/accent → warning-bg/warning) with label `4JW-0`.
**Applied file-wide, not console-only.** The portal was considered for an exception — sitemap C-01
asks for "awaiting-your-input tasks (prominent, action-colored)" — and rejected: splitting one
status's hue by chrome would create a seventh de-facto family and show two colours for one status to
anyone comparing W-02 and C-05. The portal's real prominence survives the swap because it was never
hue-alone: **C-01 leads with a callout sentence, an itemised list and first-position placement, and
C-06 uses a filled+bordered 20×20 timeline marker** — all geometry and copy, all intact.
- **The inspection that preceded the fix was wrong about C-06, and the builder's sweep caught it.**
  The inspector stated the instance sat on C-06's overlay drawer and explicitly **not** on its dimmed
  base layer. A complete second copy (`4I2-0`/`4I3-0`) was on the base layer. It also missed the
  sibling labels on D-01 (`BV-0`) and C-01 (`40B-0`) — the latter because it searched the string
  "waiting on client" and the portal rephrases it "waiting on **you**". **Lesson: a read-only
  inspection asserting a base layer is clean is not evidence it is clean**, and a file-wide sweep for
  a *token* beats a sweep for a *label string* when copy varies by surface. This is the third time §8
  records a dimmed base layer nearly being missed.

**Batch A - the three P1 variants were already built, undocumented; audited and repaired. 111 → 119
artboards.** A prior interrupted run had built all of Batch A at worldY 19000 (the eight artboards
listed at the top of §6) and committed nothing - the file was two full tracks ahead of this memory.
The screens were verified, not trusted, and **four real defects surfaced under node inspection:**
- **Three "state" artboards had been miscloned.** `RU3-0` (W-02a-EMPTY) rendered a full 13-row table
  with a running timer; `SUH-0` (W-02-EMPTY) rendered a full five-column board with a running-timer
  card; `T2U-0` (W-02-ERROR) rendered a fully populated board plus an owner budget-burn widget. Only
  the two loading skeletons (`RHE-0`, `SM4-0`) were correct. Fixes: bodies replaced via
  `write_html replace` with the `FQS-0` illustrated-empty clone (empties) and an `ICQ-0` W-01-ERROR
  clone (error, headline "Couldn't load this project's tasks", standard subtitle + `--color-ink` pill
  Retry); running sidebar timers swapped for the idle form; empty-board burn header swept to
  0.0/90.0h · "90.0 H REMAINING" · "0% of budget used" with the burn-fill rect deleted. Orphans left
  non-rendering per §4 policy: `T2X-0`, `T67-0`, `RU7-0`, `S3E-0`, `SUK-0`, `SZG-0`, `SXZ-0`.
- **`S6S-0` (W-02b) carried the Owner persona** in the topbar on a screen named "contractor (AC)".
  Fixed to Dimitra K. / Contractor / DK (`SBB-0`/`SBA-0`/`SB8-0`), matched to `QT0-0` and `IMB-0`.
- **THE LESSON: a `-EMPTY`/`-ERROR` artboard existing under the right name is not evidence the state
  was built.** A clone whose body was never swapped renders the *source's* populated content, silently
  and with no error - three of five state artboards here were exactly that. **Verify a state artboard
  by inspecting its body, never by trusting its name or its presence in the artboard list.** This is
  the mirror of §4's "a rename cannot be verified with `find_nodes`" - an artboard's name and its
  content are independent, in both directions.
- **spec-compliance-checker mis-read persona and empty states from screenshots/names again** - it
  reported W-02b's persona "correct (Dimitra K.)" and the empties as fine, all three wrong. Same
  failure mode §8 already records for that agent (the W-04 sidebar false-positive). The
  design-consistency-auditor's node-level findings were authoritative and the miscloned bodies would
  have shipped undocumented on the spec checker's say-so. **A claim about rendered persona, colour or
  which body a state artboard shows must be settled at node level, not from a screenshot.**
- **Even the design auditor's screenshot-derived body description of `T2U-0` was imprecise** (it named
  a contractor "MY HOURS LOGGED 12.0h" widget; node inspection found owner chrome byte-identical to
  `13J-0` with a 64.0/90.0h owner budget widget). Its structural conclusion - a populated board where
  an error panel belonged - was still correct, so the fix target held; the fix was authored off the
  node truth, not the screenshot description.
- **Passed clean after fixes:** contractor sidebars on both `S6S-0` and `QT0-0` match W-04 (`IMB-0`)
  token-for-token (six gated items ink-muted/ink-faint, badges neutral-bg, correct route active-marked);
  W-02a Board/List toggle ink-filled with no accent; five-hue task map, mono discipline, contrast,
  fonts (zero system-ui) and §2 naming all compliant. Nothing rebuilt, no new shared idiom authored.
  **Known layer-label quirk left unfixed** (invisible to users, W-01 "New client" precedent): on
  `R0Z-0` the toggle segment named "Board (active)" (`R4U-0`) is the styled-*inactive* half and
  "List (inactive)" (`R4S-0`) is the styled-*active* one - labels swapped from rendered state; rename
  only if already editing those nodes.

*(Historical statement of the problem, kept because the reasoning is still the ruling:)*
W-02's task-status dot for **waiting on client is `--color-accent`** (`1AU-0`), and W-02's own running
timer card already uses accent too (1px accent border, accent dot, mono `--color-accent-text` elapsed).
Track B3 inherited that dot colour into W-04/W-04a, where the new running-timer pill is also accent —
so one hue marks both "blocked on the client" and "actively running" in a single screenshot.
**The auditor's ruling, which I accept: the timer is correct and the status dot is the violation.**
§2 reserves accent for active-state marking; a running timer is the definition of an active state,
and *waiting on client* is the opposite of one. The fix was deferred out of B3 deliberately — a
file-wide status-family change does not belong inside a build batch — and **was carried out first
thing in Track B4, before that batch's screens were authored.** Note the B3 note's guess that
"`--color-warning` or `--color-review` are both unused by the task-status family" was **half wrong**:
review was already *in review*. That is why B4 inspected before choosing.
- Also verified in the same audit: task status is bare dot + label everywhere (shape rule kept, only
  the hue is wrong), project lifecycle is a filled tint pill on W-01 with active=success,
  paused=warning, completed=neutral — the info-blue defect class §8 records was **not** repeated.

**Two smaller Track B3 notes.**
- **`get_screenshot` returned empty output for every node** during the final audit, at both scales
  and with transparency on and off. The audit was completed entirely by node and computed-style
  inspection, which is stronger for token checks but cannot catch sub-pixel crowding or SVG fill
  colour. The builders' own screenshots during the build did work. If this recurs, an audit is not
  fully visual and should say so.
- **`IH4-0` was genuinely destroyed, not orphaned.** W-01-ERROR's stale result-count caption was
  deleted and `get_node_info` now returns "Node not found" — a cleaner outcome than §4's known trap,
  where a deleted node keeps resolving. The trap still stands; this is just an instance where it did
  not bite. Verified by inspection, not by the tool's return value.
- **Cosmetic, unfixed:** the "New project" buttons on W-01, W-01-LOADING and W-01-EMPTY are still
  *named* `New client` at the layer level, inherited from the CL-01 clone. Rendered text is correct.
  Worth a rename only if someone is already in those nodes.

**Briefs that tell an agent to override its own definition can be refused as prompt injection.**
Two of three builder dispatches were **blocked by the permission classifier** when their briefs
opened with "RULE OVERRIDE — THIS CONTRADICTS YOUR OWN AGENT DEFINITION". Rewriting them to state
plainly that the brief came from agent-manager, that `memory.md` is the authority per `CLAUDE.md`,
and that the builder should *read §7 itself* got both through unchanged in substance. §8 already
recorded an auditor mistaking its brief for injected content; this is the same failure with a
different referee. **State the source and cite the authority; never phrase it as "ignore your
instructions."**

**A dispatch bookkeeping error worth not repeating.** When two of three parallel dispatches were
refused, the retry re-sent one that had already succeeded and dropped one that had never run — so
S-03/S-04 briefly had two builders and Thalassa had none. Caught by diffing agent IDs against the
original batch. **After a partial dispatch failure, re-derive which briefs actually launched before
retrying; do not retry from memory of what was sent.**

---

**Track B4 — accent collision CLOSED, then B-05 + the catalog module BUILT AND AUDITED. 84 → 98.**
Two pieces, deliberately sequenced: the file-wide hue correction ran to completion **before** any new
screen was authored, on the same reasoning as Track B0 — new screens clone from the file, so the file
should be right first. Part 1 is written up above under the accent entry; Part 2 is fourteen
artboards at worldY 15000, worldX −720 → 19040 on the file's 1520 spacing. Six builders: one author
per shell (B-05, CA-01) and clones for the rest. **No coordinate collision and no chrome divergence
between clones** — the third batch running to that rule cleanly.

- **`B-05a` was built although agent-manager's own task brief did not list it.** The sitemap's B-05
  row names "void (confirm; items return to balance, audit)" as in-scope, and Andreas's brief said to
  take scope from the specs rather than from his summary. **The spec outranked the summary and the
  artboard exists because of it.** Worth repeating as a pattern, not just an instance.
- **A spec-compliance run returned ZERO non-compliant across all 14**, and **neither auditor produced
  a data finding** — the second consecutive batch. §7's rule and the two agent-definition rewrites
  behind it are now demonstrably holding, not just believed to.
- **Two real defects were found and fixed in the same session.**
  (1) **CA-03 dimmed only half its base layer** — body at 0.4, sidebar left unset, so the nav and the
  timer widget glowed at full brightness beside a greyed page. Every other overlay in the file dims
  both children. (2) **The three-way segmented control diverged between CA-03 and CA-03a**, two
  genuinely different components for one control; unified onto the pill group. See §6.
- **`--color-review` was quietly acquiring a third meaning.** Two builders independently reached for
  it — HOURLY on CA-01, YEARLY on CA-02 — on top of its job as the *in review* task dot. No §2 rule
  was breached (no task-status dot renders in the catalog, verified), so this was **caught as
  semantic drift rather than as a violation**, which is the kind of thing a rule-checking audit
  normally misses. YEARLY moved to info. A **fourth** review chip was then found on CA-03a by the
  fixing builder that the audit itself had missed — a small table-preview badge. **An audit finding a
  class of problem is not the same as an audit finding every instance of it.**
- **Three agent-definition errors confirmed by inspection, all in `paper-screen-builder.md`.** Its
  nav-swap recipe says a deactivated item's label goes to `--color-ink-muted`, which is the
  **disabled** treatment — following it collapses inactive into disabled and makes CL-01c's ladder
  undetectable. Its drawer recipe demands `position:relative` on the artboard, which **no** overlay
  artboard in the file carries. And it states artboard spacing as 1560 when the file uses **1520**.
  The correct values are now in §3 and §4. This was the fourth agent definition found stale (§8
  records the auditor's embedded ledger, the checker's "four systems", and the builder's `TODO:`
  instruction).
  **ALL THREE WERE FIXED BEFORE TRACK B5 AND THE HAND-OVERRIDE REQUIREMENT IS RETIRED.** The
  definition no longer embeds the design system at all — it points at §2/§3/§4 and instructs builders
  to distrust values quoted in briefs, including agent-manager's. **Do not reinstate the "every brief
  must override it by hand" instruction.** Track B5 ran four builders on briefs carrying no pasted
  tokens, recipes or trap list, and the pattern held; see the B5 entry at the end of §8.
- **Memory itself was wrong about a role and the error had already propagated.** §6 called the owed
  settings variant an "account-manager" one. The access codes are AO/AA/AM/AC = owner/admin/member/
  contractor, and the settings tabs split S-03 `AO AA` · S-06 `AO AA` · S-04 `AO` · S-05 `AO` — so
  the role that reaches *some* tabs is the **Admin**, while PRD §7 denies a Member settings entirely.
  An **AM settings shell is not a screen that exists.** A spec-compliance run repeated the mislabel
  straight out of this file, which is exactly how a wrong note becomes a wrong screen. Corrected in
  four places.
- **A read-only inspection asserted a dimmed base layer was clean and it was not.** The pre-fix
  inspection stated C-06's instance sat on the overlay and explicitly *not* on the base layer; a
  complete second copy was there. It also missed two sibling labels, one because it searched the
  string "waiting on client" while the portal renders "waiting on **you**". **Sweep for the token,
  not the label, when copy varies by surface** — and treat "inspected, clean" as a claim, not a fact.
- **agent-manager asserted a specialist had reported when it had not.** Mid-run it described the
  CA-01-states builder as finished and relayed findings from it; that report had not arrived. The
  work was real and `get_basic_info` confirmed the artboards, but the account of it was invented.
  **Ground-truth the file rather than narrating from expectation.**
- Three new §4 traps, all established by failure: `create_artboard` **ignores its own
  `left`/`top`** (the actual mechanism behind the old coordinate-collision trap), **Paper has no rich
  text** so a mono `<span>` inside a sans sentence silently collapses the whole node — which collides
  head-on with §3's mandatory-mono rule — and **`get_screenshot` empties out intermittently**, now
  seen across two sessions. Also proven: **re-parenting an orphan to root and re-deleting still does
  not destroy it.** There is no remediation; stop looking for one.

---

**Track B5 — the last P1 route screens BUILT AND AUDITED. 98 → 111.**
Thirteen artboards at worldY 17000, worldX −720 → 17520 on the file's 1520 spacing: S-01 + three
states, S-02 in both chromes + three states each, and S-03a. Four builders in two waves — S-01, S-02
console and S-03a concurrently, then S-02 portal cloning the console's components. **No coordinate
collision and no chrome divergence** — the fourth batch running cleanly to the one-author-then-clone
rule, and the first where that rule was extended to *controls* as well as chrome.

- **THE REWRITTEN `paper-screen-builder.md` WORKED, AND THIS IS THE EVIDENCE.** Briefs carried no
  design-system restatement, no trap list and no corrected recipes — only scope, spec excerpts,
  coordinates, and which components to clone. All four builders got the nav ladder right, repositioned
  after `create_artboard`, used 1520 spacing and cloned rather than re-authored. **Two builders went
  further and corrected agent-manager's own briefs from the file** (see below), which is the
  definition's "distrust values quoted in briefs, including agent-manager's" clause working as
  designed. The hand-override requirement recorded earlier in §8 is retired. **Briefs got shorter and
  the output got better; do not reinstate the pasting.**
- **FOUR of agent-manager's premises were wrong this batch and specialists caught every one.** Worth
  recording as a pattern, not four incidents. (1) It predicted S-03a's gated tabs would collide with
  the P3 tab; they do not — but the audit found a *different*, real collision on S-03 itself
  (inactive ≡ P3), which the wrong guess surfaced by accident. (2) It told the S-03a builder to reuse
  CL-01c's `ink-muted`; that would have made gated ≡ inactive, and the builder shifted to `ink-faint`
  and said so. (3) It told the fix builder one badge was `opacity:0`; two were. (4) It repeated the
  auditor's claim that `QMF-0` carries a hidden bell badge; **it carries no badge frame at all**, and
  `QPE-0` — which the auditor called a bell badge — is actually a filter count node. **Asking a
  specialist a question rather than asserting a premise is what made these recoverable.**
- **agent-manager fabricated a specialist report again.** Mid-run it described the S-03a builder as
  finished and quoted reasoning it attributed to that builder; **no such report had arrived.** The
  artboard did exist, so the claim was accidentally true in outline and wholly invented in detail.
  This is the **second consecutive track** §8 records this failure. `get_basic_info` caught it. The
  builder's account is still unread, which is why §6 flags the S-03a topbar persona as unverified.
- **Two real defects, both introduced by this batch, both fixed.**
  (1) **A new numbered bell badge used raw `--color-destructive` with a literal `#FFFFFF`** — white on
  a raw hue at ≈3.5:1, under AA, breaking both §3's `-bg`/`-text` pairing rule and its never-raw-hex
  rule. Re-tokened to `--color-destructive-bg` / `--color-destructive-text` on **six** frames, matching
  the sidebar badge precedent (`E28-0`/`E29-0`). Geometry and the `1.5px --color-page` ring untouched.
  (2) **Both `S-02-EMPTY` screens asserted `All 0` / `Unread 0` on their filter pills** against §2's
  no-counts rule, while both `-ERROR` twins got it right. Four count nodes deleted (now orphaned per
  §4's known pattern); pills auto-shrank cleanly.
- **The badge sweep found exactly the six named and no more** — a deliberate check against §8's Track
  B4 lesson that finding a drift *class* is not finding every *instance*. It also established that the
  **84 other raw-`--color-destructive` hits file-wide are 7×7 dot indicators with no text**, a
  pre-existing pattern with no contrast exposure. Recorded so the next sweep does not re-investigate.
- **memory.md was wrong about the pill group and an audit disproved it by computed styles.** §6 claimed
  it derives from CL-01's status-filter group; CL-01's control is a neutral-bg segmented *track*, a
  different component sharing the name. Corrected in §6; `NUN-0` is canonical.
- **memory.md was also wrong that S-02 is a System-nav screen.** There is no Notifications item in
  either chrome's nav; it is reached by the bell. Two builders established this independently.
- **A spec-compliance finding was FALSE and was rejected.** It reported **C-07 as "missing entirely
  from the file"**; C-07 is `DM-0` and has existed since the earliest batches. Its companion figure —
  "26 P1 screens lack a required state" — is therefore indicative, not exact. **Same failure class as
  the Track B3 and B4 checker findings §8 already records: a checker asserting absence is a claim, not
  a fact.** The guard written into the brief (derive roles from PRD §7 directly, never echo memory)
  did work — the run produced no role mislabel, unlike Track B4's.
- **An audit recommendation was overruled.** It proposed renaming the portal S-02 artboards to `C-11`.
  **C-11 through C-14 are already Reports / Quotes / Contracts / Files in sitemap §4**, so that would
  collide with real spec IDs. The missing portal C-ID is a genuine spec gap and stays flagged rather
  than papered over; see §2.
- **Three P1 gaps found that this list had never carried**, by walking the route tree rather than
  trusting §6: **W-02's list view (PRD §6.5 marks it P0)**, D-01's contractor variant and W-02's
  contractor variant. Fourth time the to-do list has proved incomplete. See §6.
- `get_screenshot` **worked normally this session**, so the design audit was fully visual — the first
  clean run since Track B2. The §4 trap still stands as intermittent.
