# Agency Platform — Project Memory

Single source of truth for this project. Read this before doing anything. Update it when a
decision is made, a screen ships, or a fact is discovered that a future session would otherwise
have to rediscover.

Last updated: **3 Aug 2026 — Track B11: transactional email templates, the LAST named item in sitemap
§5's shared-component inventory, closed. 167 → 180 artboards.** Introduced the file's FOURTH chrome —
a 600px content column (masthead + white card + footer) centred on a 1440-wide `--color-surface-muted`
artboard, distinct from an app screen. Thirteen emails ship: PRD §6.1's three auth emails (agency
invite, client invite, password reset), all seven of PRD §6.9's P0 notification events (new request,
request converted, request declined, task status change, comment on subscribed task, invoice issued,
payment received, time approved into balance), sitemap §5's named "reminder" (invoice overdue), plus
one request-submission confirmation. Two independent compliance passes ran — the first found the
initial six-email batch covered only 2 of 7 PRD §6.9 events and called it a real gap, not a scope
call; a follow-up batch of seven closed it, re-verified clean. One real defect (a status-chip label
wholesale in `--font-mono` instead of sans-word/mono-value) was found and fixed. **One genuine gap in
sitemap §5 remains, discovered while closing this one out: no rich-text editor exists anywhere in the
file for task/request descriptions** — see the Track B11 block below for the full detail and §6 for
where this leaves the whole inventory. Full detail below; older entries pushed into `(Prior: ...)`
wrappers per the file's convention.

**Track B11 — transactional email templates, 167 → 180 artboards, worldY 31000.**

**The fourth chrome.** Console (260px sidebar), portal (top nav), auth/public (no chrome) are the
other three (§3). An email is not a 1440 app screen and does not violate the desktop-1440-only
decision — that decision governs responsive breakpoints for app screens and the declined mobile
designs; an email is a different medium. Structure, authored once on the canonical email
(`13BA-0`, agency invite) and cloned twelve times: 1440-wide artboard, `height:"fit-content"`, fill
`--color-surface-muted`; a masthead (`VSUALWEB` wordmark, 28px/700/-0.025em/lh34/`--color-ink`,
centred, same treatment as the auth chrome's brand mark) sitting above a 600px-wide `--color-page`
card (16px radius, 1px `--color-rule` border, no shadow — does NOT borrow the toast's elevated-shadow
exception, this stays flat like every other card in the file); a footer below the card, still on the
muted background. Verified byte-identical across all 13 by computed styles, twice, independently.

**New ruling — the footer identity split.** The masthead carries only the brand mark `VSUALWEB` (the
logo slot, tokenised for Phase 3 exactly like the auth chrome's — this is now the file's SECOND logo
slot). The footer carries the legal name `VSUALWEB Ε Ε` (Greek `Ε Ε`, never `Ε.Ε.`), VAT
`EL 802 688 499`, address `Agios Spyridonas 3, 47100 Arta, Epirus, Greece`, and `info@vsualweb.com` —
same brand-mark-vs-legal-name split S-03 already draws, applied to an email for the first time. An
email footer is the one place both may legitimately appear on one surface; do not merge them into one
line and do not drop either. **`info@vsualweb.com` was sourced but had no field anywhere in the file
(§5's old note) — this footer is now that field, on all 13 emails. That note is discharged.**

**Coverage, the honest version.** PRD §6.1 (P0): agency invite (`13BA-0`, `giorgos@vsualweb.com`,
inviter Andreas Strb., `vsualweb.com` only), client invite (`13C0-0`, `nikos.papadakis@aegeanyachting.gr`,
inviter Sofia Marinaki, `.gr` only), password reset (`13CL-0`, `andreas@vsualweb.com`, no expiry
interval stated, matching A-02b/A-03-ERROR/A-04-ERROR's existing discipline) — all three verified
correct and distinguishable by domain and inviter. PRD §6.9 (P0, seven events, each requiring in-app
AND email): **new request** (`13FV-0`, agency-facing, REQ-122/Aegean, mirrors `13DR-0`'s own request
for narrative symmetry) · **request converted** (`13GI-0`, client-facing, REQ-118 — resolved by direct
inspection of W-03's `1KI-0`/`1KJ-0` tag to Aegean's real task "Charter booking form — build and
validation", assignee Dimitra K., status in progress) · **request declined** (`13H5-0`, client-facing,
a DIFFERENT client/request — Elias & Co, invented REQ-131 "Custom CRM integration for the showroom
booking flow" — deliberately not the same request as `13GI-0`, so the file never implies one request
had two outcomes) · **task status change** (`13HS-0`, Aegean's "Charter booking form" moved to In
review) · **comment on subscribed task** (`13IF-0`, ONE generic template for both audiences, since the
notification content is identical either way — renders ZERO comment text or author attribution
anywhere, the safest possible guarantee against PRD §6.5's "agency-only comment never leaks to a
client" rule) · **invoice issued** (`13D6-0`, mirrors B-04a exactly — Aegean, INV-2026-0207, €5,976.80,
MARK `400001827364519`) · **payment received** (`13EC-0`, agency-facing, Kliniki Group IKE,
INV-2026-0198, €3,410.00, from §5's own invoice table). Plus sitemap §5's named **reminder**
(`13JP-0`, invoice overdue, INV-2026-0191/Meraki/€1,670/overdue 6d, ties to PRD §6.7's P1 manual
"send reminder" action — deliberately uses NO `--color-destructive` anywhere, "unavailable is not an
error" extended to "overdue is routine collections, not a system failure"). Plus `13DR-0` (request
received/confirmation — not one of PRD §6.9's seven named events, a request-submission receipt built
alongside the auth-email trio in the first wave). **All seven PRD §6.9 events and all three PRD §6.1
auth flows are now covered — verified twice, independently, by direct node inspection, not by
trusting either builder's report.**

**One real defect found and fixed.** `13JP-0`'s "OVERDUE 6 D" status-chip label shipped as one Text
node wholesale in `--font-mono`, deviating from the file's own precedent (B-02's PAID/VOID chips):
mono is for the money/date/duration/ID/count *value*, never the status *word*. Split into sibling
nodes — "OVERDUE" sans, "6 D" mono — verified by computed styles; swept all 13 emails for the same
class and found no other instance.

**Invented values, new.** `finance@merakiinteriors.gr` — Meraki had no billing email anywhere in the
file (checked CL-07/C-08/C-08b directly before inventing), follows the established `finance@` +
client `.gr` idiom. REQ-131 ("Custom CRM integration for the showroom booking flow", Elias & Co,
declined) is presentation material for the one email that needed a plausible negative outcome — not
sourced, not to be treated as real backlog.

**The one real gap this track surfaced, NOT closed, and it belongs to whoever next touches W-03 or
R-01.** Sitemap §5 names "rich text editor (tasks) and plain composer (comments)" as one pair. The
plain composer exists (W-03/C-06, Track B10). **No rich-text editor exists anywhere in the file for a
task or request description** — verified by direct node-tree inspection of W-03 (`1C1-0`, description
is one plain Text node `1L7-0`), R-01 (`1V6-0`, "WHAT THEY SENT" is one plain Text node `230-0`), and
a file-wide search for any bold/italic/list/toolbar icon row, which returned zero hits across all 180
artboards. **Sitemap §5's shared-component inventory is therefore NOT fully discharged** — this is
the one item left. Mobile nav (part of §5's "app shell" line) remains a separate, already-accepted gap
under the desktop-1440-only decision (§2) and is not new. Everything else in §5's list now exists
somewhere in the file, either as a dedicated component sheet (toast, comment thread, and now email) or
implicitly inside built screens (data table, drawer/sheet, confirm dialogs, illustrated empty states,
money/date display, notification bell + list, timer widget, file upload + attachment list, status
chips, invoice PDF template).

---

(Prior: **3 Aug 2026 — Track B10: three genuine shared-component gaps from sitemap §5 closed —
comment thread (W-03 console + C-06 portal, with an explicit visibility ruling), the file's first
toast component (four variants + in-situ demo, the file's first component-level artboard), and the
invoice PDF QR block (B-04a only, gated to the assigned-MARK state). 165 → 167 artboards.** Both
design-consistency-auditor and spec-compliance-checker ran independently against all three builds and
found zero non-compliance and zero unresolved defects — see the Track B10 block below and §8. Full
detail below; older entries pushed into `(Prior: ...)` wrappers per the file's convention.

**Track B10 — three shared-component gaps closed, 165 → 167 artboards.**

**1. Comment thread — W-03 (`1C1-0`) and C-06 (`4FS-0`). Visibility ruling, not a shared component
with a data filter.** PRD §6.5 P0 requires per-comment visibility (all / agency-only) with agency-only
"never delivered to portal users by any channel including notifications," and sitemap gives W-03 and
C-06 structurally different requirements. **Ruling: W-03 and C-06 are not one component parameterised
by audience — they are two different UIs.** W-03 (console) renders all three states — client comment,
agency "all" comment, agency-only comment — plus a composer with an All/Agency-only choice using the
file's canonical pill group (`NUN-0` reference). C-06 (portal) renders only "all"-visibility comments
and **has no visibility toggle or agency-only affordance anywhere in its node tree** — confirmed by
both a full node-tree read and a file-wide text search for "agency only" that returned zero hits
inside any portal artboard. This is the correct reading of "visibility 'all' only, by server
filtering": the portal UI must not even imply a hidden channel exists.
**Agency-only badge token — new decision.** The "AGENCY ONLY — NEVER SHOWN TO THE CLIENT" box moved
from `--color-warning-bg`/`--color-warning-text` (dashed) to `--color-neutral-bg`/`--color-ink-muted`
on a `--color-rule-strong` border, with a lock icon — deliberately avoiding a third reuse of warning
(already carrying task-status *waiting on client* and project-lifecycle *paused*) and avoiding minting
a seventh status family. Independently judged by the auditor as still genuinely unmistakable (border +
label + lock icon = three signals) despite being lower-contrast than the old warning treatment.
**Portal voice rule applied**: C-06's agency-authored comment is attributed to "VSUALWEB", never a
real staff name — verified, no internal name appears anywhere in C-06's thread.
**The W-03 accent watch-item from Track B9 is CLOSED, not left open.** `1KI-0`/`1KJ-0`'s "FROM
REQUEST" tag was ruled a static informational badge, not a link, so §3's link exception does not cover
it — moved off `--color-accent-wash`/`--color-accent-text` to `--color-neutral-bg`/`--color-ink`.
**Clone-family sweep found the same defect duplicated on three more nodes no prior track had caught**:
`1A7-0` (W-02 board, `13J-0`), `S8O-0` (W-02b contractor board, `S6S-0`), and a second instance inside
W-03's own board-behind-drawer region (`1IM-0`). All four fixed and independently re-verified by
computed styles.
**A new trap found while fixing C-06's clipping**: `4FS-0` was hard-clipped at a fixed 621px
(`overflow:clip`) once the new comments pushed content past the bound — `fit-content` does not
self-correct here because the drawer's content is absolutely positioned and Paper's fit-content sizing
ignores absolutely-positioned children. Fixed by measuring actual content height and setting it
explicitly (1050px). See §4.

**2. Toast component — the file's first component-level artboard.** No toast/snackbar pattern existed
anywhere before this track. Built once, by one author, per the file's one-author-then-clone rule:
`12VP-0` ("Toast · Component sheet", worldX −720, worldY 29000) defines four variants — success, info,
warning, destructive — each correctly pairing the locked `-text` token on the matching `-bg` token,
byte-identical geometry (400px wide, 12px radius, 14/16px padding, 12px gap) across all four, differing
only in icon, icon-lane background token and copy. Destructive is reserved for a genuine failure
("Couldn't issue invoice — provider error"), never for a blocked/unavailable affordance, per the
file's "unavailable is not an error" principle. **Deliberate exception to §3's near-zero-shadow rule**:
a toast needs real elevation to read as a floating overlay, unlike the file's flat card language — a
visible two-layer shadow was used and the exception is stated in-canvas on the component sheet's own
subtitle, not left implicit. **Demonstrated in situ** on a new clone of CL-09 (`12XU-0`, "CL-09 ·
..., save toast (in-situ)", worldX 800, worldY 29000): a "Client saved" success toast, cloned from the
component sheet's own success node (`12W0-0` → `137Y-0`), not re-authored — verified byte-identical on
every dimension except position and message text. **This is a new precedent, recorded here so it is
never mistaken for a quiet exception**: the file previously had zero component-level artboards for any
shared component (nav, timer widget, empty-state illustration, form controls all lived only inside
built screens). The toast is the first, and it sets the pattern — a dedicated spec sheet plus at least
one in-situ demonstration — for any future shared component that needs one.

**3. Invoice PDF QR block — B-04a only (`2GR-0`), gated to the state where a real MARK exists.**
Sitemap §5 calls for "MARK + QR block" on the branded invoice PDF template; no QR existed anywhere.
Added beside the existing MARK/UID panel on B-04a's success overlay: wrapper `138H-0`, QR frame
`138I-0` (SVG `138J-0`, ~64px, finder-pattern grid, `--color-ink` on `--color-surface`), caption
`13AG-0` ("Scan to verify"). Encodes/represents the existing MARK `400001827364519` — no new MARK
invented. **Deliberately NOT added to B-04 (`24Z-0`, draft), B-04b (`2GS-0`, failed issue),
B-04-LOADING (`WLQ-0`) or B-04-EMPTY (`WXB-0`)** — all four inspected directly and confirmed to still
show only the pre-existing muted "MARK · UID · QR / Stamped here by the compliance rail on issue"
placeholder row, because Greek myDATA only assigns a MARK on successful submission; a QR on any
pre-issuance surface would encode nothing real. **B-05 and B-03 confirmed out of scope by inspection**:
B-05's right rail is generic invoice-detail chrome with no branded masthead/PDF thumbnail; B-03 is
upload mode (an externally-issued PDF, not this file's template) with no masthead anywhere. **The
compact masthead idiom (§5) is unchanged** — legal name one line, `EL 802 688 499 · Arta, Epirus`
second line, no street address, no ΔΟΥ line — verified byte-identical before/after.

**1. S-06 ↔ S-02 vocabulary gap — resolved as a ruling, not an edit.** §6 recorded this as the
file's one substantive spec gap: PRD §6.9 names *invoice issued* and *time approved into balance*,
and S-02 renders both, but S-06 offered no toggle for either. A specialist derived PRD §6.9's full
seven-event list directly from the PRD text and inspected `OEB-0` (console S-02, 8 rows: New
request ×3, Payment received ×3, Comment ×2) and `QCB-0` (portal S-02, 8 rows: Invoice issued ×2,
Task status change ×2, Time approved ×1, Comment ×1, Request converted ×1, Request declined ×1)
directly rather than trusting memory's own prior summary of either. **Finding: the console
notification centre (`OEB-0`) never renders "invoice issued" or "time approved into balance" at
all — those are client-tagged events that only reach `QCB-0` (portal).** Since S-06 is console-only
(`AO AA`, no portal counterpart), there is nothing in the console's own notification stream for it
to offer a toggle for. **New locked rule, added to §2: a settings screen's event-toggle set is
scoped to what its own chrome's notification centre actually renders for that audience, not the
full PRD §6.9 list.** `EIO-0`, its shared tab bar, `ZI6-0` and `YWF-0` are all unedited and verified
unedited. One minor terminology note left open, not a defect: `EIO-0`'s "Invoice paid" toggle label
doesn't exactly match `OEB-0`'s "Payment received" row title for what's likely the same underlying
event — cosmetic, out of this track's authorized scope, worth a look if S-06 is next opened for
something else.

**2. C-06's drawer header status pill — CLOSED, the design question §2 left open.** `4IV-0` on
`4FS-0` converted from a filled `--color-warning-bg`/`--color-warning-text` pill to the file's
standard bare dot + label: `4IW-0` (the pill's old 5px leading bullet) resized to 8×8 and recoloured
to `--color-warning` as the real status dot; `4IX-0` recoloured to `--color-ink` as the label;
`4IV-0` itself stripped of fill/radius/padding. Verified independently by
design-consistency-auditor via computed styles — dot, label and container all confirmed correct,
header layout (close button `4IZ-0`) intact, no clipping. **Clone-family sweep: W-03 (`1C1-0`, the
console's equivalent task drawer) does NOT carry the same defect** — its header slot (`1KI-0`) is a
"FROM REQUEST · REQ-118" source-origin tag, a structurally distinct component, not a task-status
render; independently confirmed, left untouched. C-06's approval-progress stepper
(`4JU-0`/`4JV-0`/`4JW-0`, filled circles with borders marking workflow steps) was checked and ruled
a genuinely distinct component, not a second collision — different geometry (bordered filled
circle vs bare dot), different semantic axis (workflow progress vs task status). **One watch-item
surfaced but not acted on** (pre-existing, untouched, outside this track's scope): W-03's
`1KI-0`/`1KJ-0` source tag uses `--color-accent-wash`/`--color-accent-text`, and §2 reserves accent
for active-state marking — a request-origin tag is a stretch of that reservation. Not fixed; flagged
for whoever next opens W-03.

**3. Sidebar badge counts — fixed file-wide, no longer "pre-existing, out of scope."** §6 used to
carry this note as a known, deferred defect. A specialist enumerated all 165 artboards, found **114
console-chrome artboards** (portal/auth have no sidebar), and swept **336 badge Text nodes** from
`fontFamily: var(--font-sans)` to `var(--font-mono)`. No wrapping or clipping resulted — badges sit
in auto-width pills (`minWidth:20px`/`height:18px`/`paddingInline:6px`), so mono's extra glyph width
had nowhere to overflow. Two legitimate zero-badge/dropped-badge cases were found and correctly left
alone (`D-01-EMPTY` has no badges at all; `D-02-LOADING/-EMPTY/-ERROR`'s Requests badge is
skeletonized or dropped since D-02 is itself the requests-count screen — Time/Billing badges on
those three were fixed). **design-consistency-auditor independently spot-checked ~30 nodes across 9
artboards not in the specialist's own sample and found one genuine miss**: `CL-01` (`4YR-0`)
sidebar Billing badge `513-0` was still sans — its clone `CL-03`'s equivalent badge (`4X5-0`) was
correctly mono, so the miss did not propagate. Fixed in a follow-up single-node edit, verified by
computed styles before/after. **The specialist's "336/336 complete" claim was therefore not
accurate as stated — 337 nodes total once the miss is counted, all now confirmed mono.** Treat any
future "N/N swept, 100%" claim on this file as needing an independent spot-check regardless of how
confident the report reads; this is the fifth time in this file's history a checker's or builder's
"clean"/"complete" claim needed correcting (§8).
)

(Prior: **3 Aug 2026 — Track B8 tail: COMPLETE. 119 → 165 artboards.** The Paper MCP outage
that stopped Track B8 mid-fix (see the prior paragraph below, kept for history) resolved; the three
remaining items all shipped in this session: `XTE-0`'s tab-pill counts fixed, `C-03-LOADING`/
`C-03-ERROR` built, and the design-consistency audit finished on all 30 previously-unaudited
artboards (28 Track B8 tail + the 2 new C-03 states), plus a re-verification of the `XTE-0` fix.

**Then a dedicated accent/status-label sweep ran and it is the most important thing in this entry.**
The final audit surfaced one accent defect on C-05. Chasing it exposed **the same defect on twelve
more nodes across nine artboards**, including on **D-01 — the live dashboard, which no coverage list
has ever named** and which is almost certainly the origin the other dashboard clones inherited from.
**All of it is now fixed and verified by computed styles; nothing in this class is left open except
the one design question named below.** The durable lessons are in §2 (two new rows) and §8.

agent-manager re-derived the coverage gap from scratch by walking the sitemap's route tree and
screen tables line by line, per the standing warning that memory's own indicative list "has been
wrong more often than it has been right" (four prior tracks). The derived set differed from
memory's old list in several load-bearing ways, now settled as decisions (see §2 for the durable
rules extracted from them): **B-01/B-02, T-01/T-02, S-03/S-04/S-05/S-06, and C-07/C-08 are each
one-route-multiple-tab groups and share ONE error artboard per group**, on the same reasoning as
CL-03-ERROR/CA-01-ERROR (a load-failure panel is content-independent). **Six screens deliberately
got no EMPTY**: S-03/S-05/S-06/C-10 (pure forms, no collection), S-04/C-09 (a team roster can never
realistically be zero — always contains the viewer's own account), C-01 (already covered by the
pre-existing first-visit variant C-01b), C-08b (a single payment-record line, not a list, unlike
B-05's genuine payments sub-list). B-04 got no new ERROR — the pre-existing B-04b ("Issue failed —
provider error, draft preserved") already is the sitemap's named error state for that tab.

Four builder waves at worldY 21000/23000/25000/27000 (worldX stepping 1520 from −720) built 44
artboards: D-01, D-02, T-01/T-02 (wave 1) · B-01/B-02, B-04, S-03/S-04/S-05/S-06 (wave 2) ·
portal C-01, C-02, C-04, C-05 (wave 3) · portal C-07/C-08, C-08b, C-09, C-10 (wave 4). Every wave
was verified against `get_basic_info` before the next was dispatched — no coordinate collisions.
Full node-ID ledger is in §6's Track B8 block.

**Two auditors ran and both surfaced real findings, then a Paper MCP outage hit mid-correction:**
- **spec-compliance-checker found a genuine gap this track's own derivation missed: C-03 (Client
  Portal — New request, sitemap §4, P1) has zero LOADING/ERROR artboards and was never assigned to
  any wave.** It is a real gap, not a defensible omission — C-03 fetches a prefilled service on
  load in the `/portal/services/request/{serviceId?}` case, unlike the pure-blank-form CL-02
  precedent it superficially resembles, so it does need LOADING/ERROR (still no EMPTY, matching
  CL-02). **Not yet built.**
- **design-consistency-auditor covered 16 of 44 new artboards before disconnecting** and found one
  real defect: **`XTE-0` (the shared B-01/B-02 error panel) renders live tab-pill counts —
  "Balances 6" / "Invoices 9" — beside a "couldn't load" panel**, the count-assertion rule (§2)
  violated a **fourth** time, always on a control rather than a caption. **Not yet fixed.** The
  other 28 new artboards (the settings LOADING/ERROR tail plus all of waves 3 and 4) are
  **unaudited** — a second auditor dispatch got zero Paper MCP access at all.
- A fix-and-gap-fill builder was then dispatched for both the `XTE-0` count fix and the two new
  C-03 artboards; it also got **zero Paper MCP access**. A bare connectivity check on a fresh agent
  confirmed the outage is file-wide/session-wide, not one agent's flakiness: three consecutive
  fresh dispatches, including a no-op connectivity probe, all reported no Paper tool available at
  all (not a call failure — the tool was absent from their toolset). agent-manager's own direct
  tool calls failed identically for the remainder of the session.

**All three items above are now CLOSED, in a follow-up session once the Paper MCP outage resolved:**
(1) `XTE-0`'s two tab-pill counts were stripped to bare "Balances"/"Invoices", verified by node
inspection — nothing else on the artboard asserted a count. (2) `C-03-LOADING` (`12OY-0`) and
`C-03-ERROR` (`12SN-0`) were built at worldY 27000, worldX 16000/17520, cloned from `45W-0`, no
EMPTY (matches S-03/S-05/S-06/C-10). (3) The design-consistency audit finished on the remaining 28
Track B8 artboards plus the 2 new C-03 states plus a re-verification of the `XTE-0` fix — 30
artboards total, all inspected directly, not summarized. **119 → 165 artboards. Track B8 is
COMPLETE.**

**That closing audit surfaced one accent defect on `C-05-LOADING`, and chasing it became the largest
single correction in this file's history. It is now CLOSED.** The one reported node turned into
**seventeen nodes across eleven artboards** — C-05 and its loading twin, C-06's dimmed base layer,
W-03's base layer, C-01's summary row, coloured status **labels** on `13J-0`/`S6S-0` that two prior
audits had passed as clean, an accent-filled status pill on C-06's drawer header, and **`D-01`
itself — the live dashboard, which appeared on no coverage list, no audit scope and no fix brief, and
had seeded the defect into its own `-LOADING` and `-EMPTY` clones.** Everything fixed and verified by
computed styles.

**Three things came out of it that outlive the fix, and they are the point:**
1. **Colour lives on the dot only** — never the label, never the container. New §2 row.
2. **A fix is not done until its clone family is swept.** Every prior recurrence was fixed on the
   live screen and missed the copies; that is the whole mechanism. New §2 row.
3. **Match siblings; never substitute a token where the sibling carries none.** The proposed fix
   (accent → warning) would have preserved the defect in a new hue. The siblings gave three
   different correct answers, one of them "no fill at all". See §8.

**Still open in this area — a design question, not a defect:** C-06's drawer header renders task
status as a **filled pill** (`4IV-0`), a treatment §2 sanctions nowhere. Its accent violation is
fixed; whether the pill becomes a dot+label is a change to a shipped screen and is deliberately left
for whoever next opens C-06. See §2.

)

(Prior: **3 Aug 2026 — Track B7: W-02 list view + two contractor variants. 111 → 119
artboards.** The three items §6's "still to design" list named — **W-02's list view (PRD §6.5,
P0), D-01's contractor variant, and W-02's contractor variant** — were found **already built and
fully populated in the file when this track started, with zero record anywhere in memory.** Eight
artboards at worldY 19000: **W-02a list view** (`R0Z-0`) plus its **-LOADING** (`RHE-0`) and
**-EMPTY** (`RU3-0`), a **shared W-02-LOADING/-EMPTY/-ERROR** covering both board and list
(`SM4-0`/`SUH-0`/`T2U-0`), **W-02b contractor board** (`S6S-0`), and **D-01a contractor dashboard**
(`QT0-0`). Since the work already existed, this track **verified rather than rebuilt** — both
design-consistency-auditor and spec-compliance-checker ran a full pass against it. Spec compliance
came back clean on every checked item (P0 coverage, rate-blindness, filtered scope, state
coverage, naming, single-running-timer). The consistency audit found and fixed **two real
defects**: an `--color-accent-wash` fill leaking onto the "Waiting on client" board column on
`13J-0` and `S6S-0` (§2 reserves accent for exactly one meaning file-wide, the running timer; every
sibling column correctly uses `--color-surface-muted`), and a stray `--color-warning-text` status
label on two rows of `R0Z-0`'s list view (task-status color belongs on the dot only, never the
label — every other status label on that screen is plain `--color-ink`). Both fixed and verified
by computed styles. Everything else — timer-affordance reuse, role-gated sidebar nav, rate-blind
contractor screens, naming, empty/error count discipline — passed clean on inspection.
**§6's "still to design" list is now empty of the three items it named; the file-wide
state-coverage debt for older screens is untouched and remains a separate, unapproved batch.**)

(Prior: **2 Aug 2026 — Track B5: the last P1 route screens. 98 → 111 artboards.**)
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
fabricated a specialist report for the second track running. Both written up in §8.

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
| Typography | **Nunito Sans is the product's font. Decided by Andreas, 3 Aug 2026 — he likes it and does not want it changed.** Geist Mono for all numerals. **Open Runde is RETIRED.** It was the Ætheria reference font and Nunito Sans entered the file only as a stand-in for it, with a standing plan to swap all artboards in one pass once Open Runde was installed. **That plan is cancelled and the stand-in is now the choice.** Do not install Open Runde, do not propose the swap, and do not describe Nunito Sans as temporary anywhere. This is the one place the file deliberately departs from its Ætheria reference (§2), and that is intentional. |
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
| Task-status colour lives on the DOT ONLY — never on the label, never on the container | The §2 hue map assigns a hue per status. That hue may colour the **8px dot** and nothing else. **The label is always `--color-ink`** and **the column/row container always matches its siblings** — whatever they use (`--color-neutral-bg` on C-05's board, `--color-surface-muted` on W-02's, no fill at all on D-01's and C-01's summary rows). Colouring the label doubles the signal; tinting the container turns a bare-dot treatment into a de-facto filled pill and collides with the request/invoice/client families §2 keeps separate. **This rule was extracted after the same defect was found and fixed FIVE times** (B4 on the dot, B7 on two board columns, then twelve more nodes across nine artboards in the B8 sweep). Every recurrence was *waiting on client / waiting on you* and most were `--color-accent-wash` containers plus `--color-warning-text` labels. **Verified clean file-wide by computed styles at the end of Track B8** — `13J-0`, `S6S-0`, `1C1-0`, `49S-0`, `10VC-0`, `4FS-0`, `3WF-0`, `1-0`, `TEW-0`, `TRV-0`. |
| A fix is not done until its CLONE FAMILY is swept | **This is the mechanism behind every recurrence above.** The file is clone-and-edit throughout, so one defect exists in as many copies as the screen has: its `-LOADING`/`-EMPTY`/`-ERROR` twins, any drawer whose **dimmed base layer** duplicates it, and any screen cloned from it. Every prior fix in this class landed on the live screen and missed the copies — B7 fixed `13J-0`'s column but not `1C1-0`'s base layer or its own label; the B8-tail audit passed `4FS-0` clean while its base layer carried the defect; `D-01` seeded `TEW-0` and `TRV-0`. **When you fix a node, enumerate that screen's clone family and check every member before reporting done.** Finding a defect *class* is not finding every *instance* — §8 has now recorded that lesson three separate times. |
| A settings screen's notification toggles are scoped to its OWN chrome's rendered events, not the full PRD event list | Resolves the S-06↔S-02 "vocabulary gap" that stood open since Track B5. S-06 (console, `AO AA`) has no portal counterpart. PRD §6.9 names seven notification events with agency/client audience tags; direct inspection of `OEB-0` (console S-02) confirms it never renders the two client-tagged events (*invoice issued*, *time approved into balance*) — those only reach `QCB-0` (portal S-02). **Rule: a settings screen's toggle set only needs to cover events its own audience's notification centre actually renders — do not add a toggle for an event that never reaches that chrome.** No S-06 edit was needed once this was checked; the apparent gap was an artifact of comparing S-06 against the wrong audience's event list. |

**Still open (PRD §11):** certified myDATA provider selection (blocks native invoice issuing);
Viva Wallet vs Stripe.

**C-06's drawer header pill — CLOSED (Track B9).** `4IV-0` is now bare dot+label (8px
`--color-warning` dot, `--color-ink` label), matching every other task-status render in the file.
Nothing open here any more.

| A comment-visibility gate is a UI-structure decision, not a shared component with a visibility prop | W-03 (console) and C-06 (portal) both render "the comment thread" but are not one component parameterised by audience. W-03 shows all/agency-only comments plus a composer visibility choice; C-06 shows only "all"-visibility comments and has **no visibility control anywhere in its node tree** — not disabled, not hidden, absent. This is the correct reading of PRD §6.5's "agency-only comments never delivered to portal users by any channel": the portal UI must not even imply a hidden channel exists. Established Track B10, verified by full node-tree read plus file-wide text search for "agency only" returning zero hits in any portal artboard. |
| Comment-visibility metadata does not get a locked-family hue | The "agency-only" badge uses `--color-neutral-bg`/`--color-ink-muted`/`--color-rule-strong` + a lock icon, not `--color-warning` (which already carries two meanings — task-status *waiting on client*, project-lifecycle *paused* — and would become a third, edging toward a de-facto seventh status family) and not `--color-accent` (reserved exclusively for active-state marking). Visually unmistakable via border + label + icon rather than via hue. Track B10. |
| The file's first component-level artboard — a toast, and the precedent it sets | Before Track B10 the file had **zero** component-level artboards for any shared component (nav, timer widget, empty-state illustration, form controls all lived only inside built screens). The toast component (`12VP-0`, four variants: success/info/warning/destructive, each on the locked `-text`-on-`-bg` pairing) is the first exception, built once by one author per the file's one-author-then-clone rule, then demonstrated in situ on a clone of CL-09 (`12XU-0`) with the actual toast node cloned — not re-authored — from the spec sheet. **Any future shared component that needs a standalone spec now has a precedent to follow**: one dedicated sheet + at least one in-situ demonstration, not built ad hoc inside a random screen. The toast also carries a **deliberate, stated exception to §3's near-zero-shadow rule** — a floating toast needs real elevation to read as an overlay; the exception is written on the component sheet itself, not left implicit. |
| The fourth chrome — a transactional email is not an app screen, and does not violate desktop-1440-only | Track B11. A 600px content column (masthead + card + footer) centred on a 1440-wide `--color-surface-muted` artboard. This is a different medium from a responsive app screen, so it does not relitigate the desktop-1440-only decision above, and no mobile variant of an email is to be built either. Canonical/first-authored `13BA-0`; twelve clones. See §3 for the full recipe. |
| Email footer identity split — a masthead carries the brand mark, a footer carries the legal identity, and an email footer is the one place both may appear | Track B11. Same split S-03 already draws between `Agency name` (brand mark, chrome) and `Legal name` (documents), applied to an email for the first time. Masthead: `VSUALWEB` only — this is the file's **second logo slot**, tokenised for Phase 3 exactly like the auth chrome's brand mark. Footer: legal name `VSUALWEB Ε Ε` (Greek `Ε Ε`, never `Ε.Ε.`), VAT `EL 802 688 499`, address, and `info@vsualweb.com` — which discharges §5's old note that the company email had no field anywhere in the file. Do not merge masthead and footer into one identity line on any future email. |
| A status/pill LABEL is never wholesale mono — only the value inside it is | Extends the existing dot-only colour rule (below) to typography. `--font-mono` is mandatory for money/date/duration/ID/count *values* (§3), never for the status *word* next to them — B-02's `PAID`/`VOID` chips already establish sans-word/mono-value as the pattern. Found violated once, Track B11, on the invoice-overdue-reminder email's "OVERDUE 6 D" chip (shipped as one mono Text node); split into sibling nodes and swept the rest of the batch for the same class. |

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

**Four chromes** — console: 260px left sidebar on white. Portal: top nav on `surface-muted`,
calmer voice, no jargon, no internal assignee names. **Auth (public): no sidebar and no top nav.**
**Email (transactional): no app chrome at all — a 600px column on a `surface-muted` page.**

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

**The email chrome — the fourth chrome, reusable for any future transactional email.** Added by
Track B11; `13BA-0` (Agency invite) is canonical, twelve other email artboards are clones of it.
- Artboard 1440 × `height:"fit-content"`, fill `--color-surface-muted`. **Not a 1440 app screen** —
  the content sits in a 600px column centred inside the 1440 width; this is a different medium from
  a responsive breakpoint and does not reopen the desktop-1440-only decision (§2). No mobile variant
  of an email is built either, matching the same declined-mobile scope everywhere else in the file.
- Masthead: `VSUALWEB` wordmark, 28px/700/`-0.025em`/lh 34px/`--color-ink`, centred, sitting on the
  muted background ABOVE the card — same treatment and same *logo slot* status as the auth chrome's
  brand mark (§2 sitemap §6.5 tokenisation requirement), but this is the file's **second** instance
  of that slot, not a duplicate of the auth one.
- Card: 600px wide, `--color-page`, `borderRadius:16px`, 1px `--color-rule`, no shadow (does **not**
  borrow the toast's elevated-shadow exception — an email stays as flat as every other card), 40px
  padding, column, 24px gaps. Data rows (invoice numbers, amounts, dates, MARK, hours) sit in a
  `--color-surface-muted` inner box at 16px padding / 10px radius, money/date/duration/ID/count
  *values* always `--font-mono` as sibling nodes next to a sans label — never the label itself (see
  §2's new row on this). Primary CTA: filled `--color-ink` pill, 40px tall (§2) — never accent, an
  email button follows the same rule as every other primary button in the file. A secondary text
  link may be `--color-accent-text` (§2's link exception).
- Footer, below the card, still on the muted background: the legal identity block — see §2's new
  footer-identity-split row for what goes in the masthead versus the footer and why both may
  legitimately appear on one surface here.
- **A real HTML email build would need table-based/VML buttons for Outlook compatibility** — this is
  a design artefact and correctly keeps the design-system pill token; flagged here so a future build
  phase doesn't read the pill shape as a literal implementation instruction.
- **Domain discipline applies inside email content, not just app screens.** Agency-facing emails
  (invite, reset, new request, payment received) show only `vsualweb.com` addresses; client-facing
  emails (client invite, invoice issued, request converted/declined, task status change, time
  approved, overdue reminder) show only the client's own `.gr` address on the recipient side. The
  footer's `info@vsualweb.com` is the sender/platform-operator identity and appears legitimately on
  every email regardless of audience — that is not a domain-split violation.
- **13 emails ship as of Track B11** — see §6 for the full list, node IDs and what each mirrors.

**Clone node IDs** — console sidebar (Billing active) `JI-0` · **console sidebar (Catalog active)
`KC8-0`** · console topbar `MY-0` · portal nav (Billing active) `DN-0` · portal nav (Home active)
`3WG-0` · **auth card shell `EWB-0`** · illustrated empty state `FQS-0` ·
**notification row `PHM-0`** (Track B5; icon lane + eyebrow/title column + mono nowrap timestamp lane
+ chevron) · **All/Unread pill group `PHE-0` active / `PHH-0` inactive**

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
**The toast component (Track B10) — the file's fourth shared idiom**, after B-03's skeleton pattern,
CL-01-EMPTY's illustrated empty state, and the row-level timer affordance. Reference sheet `12VP-0`.
400px wide, 12px radius, 14/16px block/inline padding, 12px gap, 1px `--color-rule` border,
`--color-page` fill, fixed-width icon lane (`flexShrink:0`) and close lane (`flexShrink:0`). Four
variants, each pairing the locked `-text` token on the matching `-bg` token: success, info, warning,
destructive — geometry identical across all four, only the icon, icon-lane background token and copy
change. Destructive is reserved for a genuine failure, never a blocked/unavailable affordance
("unavailable is not an error"). Action links (`Undo`/`Review`/`Retry`) are always `--color-accent-text`
regardless of variant — legitimate, §2 permits accent for links. **Deliberate, stated exception to the
near-zero-shadow rule below**: a toast needs real elevation to read as a floating overlay; the shadow
is `0 8px 24px rgba(24,25,37,0.14), 0 2px 6px rgba(24,25,37,0.08)` and the exception is written on the
component sheet's own subtitle. Reuse this component; do not author a second toast.

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
- **`backgroundColor` silently does not apply to Text nodes via `update_styles`.** No error, no
  `ignoredStyles` entry — the property is simply absent from `get_computed_styles` afterward. Found
  in Track B8 building `C-08b-LOADING`'s dark "Amount due" card skeleton. Fix: skeleton bars must be
  separate `Frame` nodes, not a styled Text node; `color: transparent` is the only reliable way to
  hide the text itself if a Text node must stay in place.
- **`fit-content` does not self-correct when a drawer's content is absolutely positioned.** C-06
  (`4FS-0`) was hard-clipped at a fixed 621px (`overflow:clip`) after new content pushed past the
  bound; setting `height:"fit-content"` did nothing because Paper's fit-content sizing ignores
  absolutely-positioned children, and an overlay drawer's content is absolute by the file's own drawer
  recipe. Fix: measure the actual content height and set it explicitly. Found in Track B10.
- **The Paper MCP connection can drop file-wide/session-wide, not just for one agent.** Track B8 hit
  this mid-audit: a design-consistency-auditor lost the connection partway through, and three
  subsequent fresh dispatches — including a bare no-op connectivity probe — all reported the Paper
  tool **absent from their toolset entirely**, not a call failure. agent-manager's own direct tool
  calls failed identically for the rest of the session. This is infrastructure, not a design
  problem: if it recurs, stop retrying with new agents (it will not help) and report the outage
  rather than working around it or fabricating progress.

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
**`info@vsualweb.com` now has a field — the footer of every transactional email (Track B11).** The
old note that it had no field anywhere is discharged; see §2's footer-identity-split row and §3's
email chrome recipe.

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
| `finance@merakiinteriors.gr` | Email · Invoice overdue reminder (`13JP-0`) | Meraki's billing email — checked CL-07/C-08/C-08b directly first and confirmed Meraki had none established; invented on the same `finance@` + client `.gr` idiom, Track B11. |
| `REQ-131`, "Custom CRM integration for the showroom booking flow" (Elias & Co, declined) | Email · Request declined (`13H5-0`) | Invented so the declined-request email is not a copy of the same request the "converted" email uses (which is real: REQ-122/REQ-118, both read off existing artboards). Track B11. |

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

## 6. Screens designed (180 artboards)

**Track B11 — transactional email templates, 167 → 180 artboards, worldY 31000, worldX stepping
1520 from -720.** Thirteen artboards, all sharing the fourth-chrome shell (§3):
- `13BA-0` Email · Agency invite (→ A-04), canonical/first-authored, worldX -720
- `13C0-0` Email · Client collaborator invite (→ A-04b), worldX 800
- `13CL-0` Email · Password reset (→ A-03), worldX 2320
- `13D6-0` Email · Invoice issued (→ C-08b, mirrors B-04a: Aegean, INV-2026-0207, €5,976.80, MARK
  `400001827364519`), worldX 3840
- `13DR-0` Email · Request received (→ portal requests, mirrors C-03b: REQ-122, Aegean, "Landing page
  for the autumn charter promotion"), worldX 5360
- `13EC-0` Email · Payment received (→ B-05, agency-facing: Kliniki Group IKE, INV-2026-0198,
  €3,410.00), worldX 6880
- `13FV-0` Email · New request (→ D-02, agency-facing, mirrors `13DR-0`'s own request for narrative
  symmetry), worldX 8400
- `13GI-0` Email · Request converted (→ C-05, client-facing: REQ-118, resolved by inspecting W-03's
  `1KI-0`/`1KJ-0` tag to Aegean's real "Charter booking form — build and validation", Dimitra K.),
  worldX 9920
- `13H5-0` Email · Request declined (→ C-04, client-facing: invented REQ-131, Elias & Co — see §5's
  invented-values table for why it's deliberately a different client/request from `13GI-0`), worldX
  11440
- `13HS-0` Email · Task status change (→ C-05, client-facing: Aegean's "Charter booking form" → In
  review), worldX 12960
- `13IF-0` Email · New comment (→ task, audience-agnostic — one template for both agency and client
  recipients, renders zero comment content or attribution by design, see §2), worldX 14480
- `13J2-0` Email · Time approved into balance (→ C-07, client-facing: Aegean 29.0 h / €2,465.00, from
  CL-06's canonical ledger), worldX 16000
- `13JP-0` Email · Invoice overdue reminder (→ C-08b, client-facing: INV-2026-0191, Meraki, €1,670,
  overdue 6d, ties to PRD §6.7's manual "send reminder" action — no `--color-destructive` anywhere on
  it, "unavailable is not an error" extended to overdue-as-routine), worldX 17520

Together these cover all three of PRD §6.1's P0 auth emails and all seven of PRD §6.9's P0
notification events, plus sitemap §5's named "reminder" — verified twice, independently, by direct
node inspection (the first compliance pass on the initial six-email wave found only 2 of 7 §6.9
events covered and called it a real gap; a second wave of seven closed it and was re-verified clean).
One defect (a status-chip label wholesale in mono instead of sans-word/mono-value, on `13JP-0`) was
found and fixed — see §2's new row and §8.

**One real gap surfaced and left OPEN, not fixed in this track**: sitemap §5's "rich text editor
(tasks)" has no design anywhere in the file — every task/request description (W-03's `1L7-0`, R-01's
`230-0`) is a single plain Text node, and a file-wide search for any toolbar/formatting-icon row
returned zero hits across all 180 artboards. The plain comment composer is built (Track B10); the
rich-text half of that sitemap §5 pairing is not. **Sitemap §5's shared-component inventory is
therefore NOT fully discharged.** Everything else in it now exists somewhere in the file — as a
dedicated component sheet (toast, comment thread, and now email) or implicitly inside built screens
(app shell minus mobile nav — a known, separately-accepted gap under desktop-1440-only, not new; data
table; drawer/sheet; status chips; file upload + attachment list; plain comment composer; form
patterns + validation; confirm dialogs; illustrated empty states; notification bell + list; timer
widget; money/date display; invoice PDF template).

**Track B10 — three shared-component gaps closed, 165 → 167 artboards, worldY 29000.**
Comment thread built into existing drawers W-03 (`1C1-0`) and C-06 (`4FS-0`) — no new artboards, see
the Track B10 header block above for the full visibility ruling. Invoice QR block added to B-04a
(`2GR-0`) only — no new artboards. **Two new artboards, both toast-related**: `12VP-0` ("Toast ·
Component sheet", worldX −720) and `12XU-0` ("CL-09 · ..., save toast (in-situ)", worldX 800) — see
§3 for the component definition and the header block above for the precedent it sets.

**Track B8 — file-wide empty/loading/error state coverage, 46 artboards, worldY 21000/23000/25000/27000. 119 → 165. COMPLETE.**

Derived by walking the sitemap directly rather than trusting memory's old indicative list (§2 now records the durable rules this produced). Full ledger, by wave:

*Wave 1, worldY 21000:* D-01-LOADING (`TEW-0`, x −720) · D-01-EMPTY (`TRV-0`, 800) · D-01-ERROR (`U4U-0`, 2320) · D-02-LOADING (`UHT-0`, 3840) · D-02-EMPTY (`UOK-0`, 5360) · D-02-ERROR (`UVB-0`, 6880) · T-01-LOADING (`V2G-0`, 8400) · T-01-EMPTY (`VCF-0`, 9920) · T-02-LOADING (`VME-0`, 11440) · **T-01-ERROR, shared by timesheet and approvals** (`VWR-0`, 12960).

*Wave 2, worldY 23000:* B-01-LOADING (`X8W-0`, −720) · B-01-EMPTY (`XJ5-0`, 800) · B-02-LOADING (`Y3N-0`, 2320) · B-02-EMPTY (`YDZ-0`, 3840) · **B-01-ERROR, shared by balances and invoices** (`XTE-0`, 5360 — **carries a confirmed, unfixed count-assertion defect on its tab pills, see header**) · B-04-LOADING (`WLQ-0`, 6880) · B-04-EMPTY (`WXB-0`, 8400) · S-03-LOADING (`YOX-0`, 9920) · S-04-LOADING (`Z3X-0`, 11440) · S-05-LOADING (`ZBO-0`, 12960) · S-06-LOADING (`ZI6-0`, 14480) · **S-03-ERROR, shared by all four settings tabs** (`YWF-0`, 16000).

*Wave 3, worldY 25000 (portal):* C-01-LOADING (`1051-0`, −720) · C-01-ERROR (`109H-0`, 800) · C-02-LOADING (`10DX-0`, 2320) · C-02-EMPTY (`10GR-0`, 3840) · C-02-ERROR (`10JL-0`, 5360) · C-04-LOADING (`10MF-0`, 6880) · C-04-EMPTY (`10PE-0`, 8400) · C-04-ERROR (`10SD-0`, 9920) · C-05-LOADING (`10VC-0`, 11440) · C-05-EMPTY (`10YC-0`, 12960) · C-05-ERROR (`111C-0`, 14480).

*Wave 4, worldY 27000 (portal):* C-07-LOADING (`11DW-0`, −720) · C-07-EMPTY (`11JM-0`, 800) · C-08-LOADING (`11V2-0`, 2320) · C-08-EMPTY (`11XJ-0`, 3840) · **C-07-ERROR, shared by balance and invoices** (`11PC-0`, 5360) · C-08b-LOADING (`1200-0`, 6880) · C-08b-ERROR (`12HD-0`, 8400) · C-09-LOADING (`122R-0`, 9920) · C-09-ERROR (`1253-0`, 11440) · C-10-LOADING (`127F-0`, 12960) · C-10-ERROR (`12AC-0`, 14480).

**Deliberately built with no EMPTY, and why (record this so it is never re-opened by a future session reading the sitemap literally):**
- **S-03, S-05, S-06, C-10** — pure settings forms, no collection to be empty. Matches the file's existing CL-09/CL-02 precedent.
- **S-04, C-09** — a team roster always contains at least the viewer's own account, so a zero roster cannot realistically happen. **Note a live tension, not yet resolved:** `CL-04-EMPTY` (client-side Users tab) already exists for a structurally similar roster, on the reasoning that a *client's own* invited users can genuinely be zero before the first invite — that is a real distinguishing feature (client users are invited after client creation; agency/company members are not), but it was never written down until spec-compliance-checker flagged the apparent inconsistency in this track. Recorded so nobody "fixes" one side without reading this note first.
- **C-01** — already covered by the pre-existing first-visit variant `C-01b`, which the sitemap itself names as the "nothing yet" scenario.
- **C-08b** — a single "payment record" line, not a list, unlike B-05's genuine payments sub-collection which is why B-05 alone gets an EMPTY.
- **B-04** — gets no new ERROR at all (not just no EMPTY): the pre-existing `B-04b` ("Issue failed — provider error, draft preserved") already is the sitemap's own named error state for this tab.

**Deliberately shared, one error artboard per route-group, and why:** B-01/B-02, T-01/T-02, S-03/S-04/S-05/S-06, and C-07/C-08 are each one console-or-portal route with multiple tabs (route tree confirms each), so a content-independent load-failure panel is shared across the group on the same reasoning as `CL-03-ERROR`/`CA-01-ERROR`. LOADING and EMPTY stayed per-tab throughout, because each tab's body geometry differs — the same reasoning that already kept CL-04/CL-05/CL-08/CL-09 off `CL-03-LOADING`.

**C-03 (Client Portal — New request) now has both states, built in the follow-up session.**
`C-03-LOADING` (`12OY-0`) and `C-03-ERROR` (`12SN-0`), worldY 27000, worldX 16000/17520, cloned from
`45W-0`. No EMPTY, matching S-03/S-05/S-06/C-10 (pure form, no collection). LOADING skeletonizes the
fetch-dependent eyebrow and the whole form card using the file's one skeleton idiom (originated on
`B-03-LOADING`); the static right-rail "What happens next" content and the Cancel/Send buttons stay
real. ERROR matches the `C-01-ERROR`/`C-02-ERROR` load-failure panel treatment and asserts no counts.
This closes the gap spec-compliance-checker found — C-03 fetches a prefilled service on load, unlike
the pure-blank-form CL-02 precedent it superficially resembles, so it needed LOADING/ERROR after all.

**`XTE-0`'s count-assertion defect is FIXED.** The "Balances 6"/"Invoices 9" tab-pill counts were
stripped to bare "Balances"/"Invoices"; active/inactive pill treatment is otherwise untouched.
Verified by node inspection — a full sweep of the rest of the artboard found no other count
assertion. See §8's correction log entry.

**The design-consistency audit on Track B8 is now fully complete — all 46 artboards inspected
(16 pre-outage + 30 in the closing session).** One new defect surfaced on `C-05-LOADING` — accent
used for a task-status column highlight, mirroring the same defect on live `C-05`. **It is now
CLOSED, and chasing it turned into a file-wide sweep that found the same class on seventeen nodes
across eleven artboards, including `D-01` itself.** All fixed and verified; see §2's two new rows
(dot-only colour, and sweep the clone family) and §8. It was never part of the state-coverage debt —
it predates Track B8 and was only exposed by it.

**W-02's list view + the two contractor variants (Track B7 — eight artboards, all at worldY 19000)** —
**W-02a project detail: list view** (`R0Z-0`, x −720) · **W-02a-LOADING** (`RHE-0`, 800) ·
**W-02a-EMPTY** (`RU3-0`, 2320) · **W-02-LOADING** (`SM4-0`, 3840) ·
**W-02-EMPTY, no tasks** (`SUH-0`, 5360) · **W-02-ERROR, shared by board and list** (`T2U-0`, 6880) ·
**W-02b project board, contractor (AC)** (`S6S-0`, 8400) ·
**D-01a dashboard, contractor (AC)** (`QT0-0`, 9920)

**W-02a closes the file's only undesigned P0.** PRD §6.5 requires "Board view and list view per
project" and sitemap W-02 names the toggle; only the board (`13J-0`) existed. This was never on the
"still to design" list — it was found by walking the PRD directly, which is the fourth time that list
has proved incomplete.
**The error artboard is shared across board and list; loading and empty are not.** `/projects/{id}
board | list` is **one route with two tabs**, so the two share a shell *and* a body region — exactly
the condition §2 requires, and the same reasoning that gives the catalog one `CA-01-ERROR`. The two
bodies differ (columns vs rows), so each gets its own loading and empty. **There is deliberately no
`W-02a-ERROR`; do not add one to "complete the set".**
**W-02b and D-01a are role variants and correctly carry no state artboards**, following CL-01c,
CL-01d and S-03a.
**Contractor is rate-blind — the opposite direction from the account manager.** PRD §4, §6.5, §9 and
sitemap S-04 each say so independently, and §6's AM note above warns this is easy to get backwards:
an AM **keeps** the money columns, a contractor does not. D-01a reduces to my tasks + my timer per
sitemap D-01; W-02b is filtered to assigned tasks only per sitemap W-02.

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

**Route coverage is NOT the same as design coverage.** Three things were missing here and **none of
them was ever on this list** — which is the fourth time the list has proved incomplete, so treat the
warning below as permanent rather than historical.

**All three are now BUILT (Track B7) — W-02a list view, W-02b contractor board, D-01a contractor
dashboard, with states. See the Track B7 block at the top of §6.** The list of *route* screens and
the list of *variant* screens are both empty. **The file-wide state-coverage debt below is a
different thing and is untouched.** Undesigned.

**The state-coverage debt is FULLY CLOSED, including C-03.** Sitemap §Conventions requires
empty/loading/error on every P1 screen. Clients (B2), Work (B3), B-05 + catalog (B4), System (B5),
D-01, D-02, W-02 (B7), T-01/T-02, B-01/B-02, B-04, S-03/S-04/S-05/S-06, the portal's C-01, C-02,
C-04, C-05, C-07/C-08, C-08b, C-09, C-10, and now **C-03** (all Track B8) are all complete or
complete-with-a-recorded-reason-for-what's-missing. Drawers (R-01, W-03, C-04's, C-06) remain exempt
by precedent. **A Track B5 compliance run once put the figure near 26 screens and separately reported
C-07 as "missing entirely" when it plainly exists (`DM-0`) — that figure is now moot, but the lesson
stands: a checker asserting absence is a claim, not a fact, verify against `get_basic_info` yourself.**
**The `C-05`/`C-05-LOADING` accent-on-task-status-column collision that stood here as open is
CLOSED** — along with sixteen more nodes of the same class found by sweeping outward from it. See
§2's two new rows and §8. It was never state-coverage debt; it was a pre-existing defect Track B8's
audit happened to expose. **Nothing is open in that area any more — C-06's drawer header pill is CLOSED (Track B9).** `4IV-0`
is now bare dot+label, matching every other task-status render in the file. See §2.

**The S-02 ↔ S-06 "vocabulary gap" is CLOSED (Track B9), by ruling rather than by edit.** Direct
inspection of `OEB-0` (console S-02) found it never renders *invoice issued* or *time approved into
balance* — those are client-tagged PRD §6.9 events that only reach `QCB-0` (portal S-02). S-06 is
console-only with no portal counterpart, so there was nothing in its own audience's notification
stream for it to toggle. See §2's new row for the durable rule this produced. `EIO-0` is unedited.

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

**"Notification bell + list" came off this list in Track B5** — the list now has dedicated screens in
both chromes (S-02 ×2) and the bell has a documented active state and a numbered badge. It still has
no *component-level* artboard, like every other shared component here.
**Comment thread, toasts and the invoice PDF QR block came off this list in Track B10** — see the
Track B10 header block and this section's opening paragraph above for the current, accurate version
of what remains undesigned.

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

**Sidebar badge counts — CLOSED file-wide (Track B9).** Every console-chrome sidebar badge count now
renders `--font-mono` per §3's mono-for-counts rule. 114 console artboards inspected, 337 badge Text
nodes fixed (336 in the main sweep + 1 miss on `CL-01`'s `513-0` caught by an independent audit spot-
check and fixed). No wrapping or clipping resulted. See §8 for the correction detail.

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

**Track B11 — transactional email templates. One real gap found and closed mid-track by a
compliance check; one real defect found and fixed; the shell itself passed clean twice.**
- **The first build wave (six emails) was genuinely incomplete, not a defensible scope call.**
  agent-manager's own initial brief picked five "obvious candidate" emails plus one extra (payment
  received) without checking PRD §6.9's full seven-event list against what got built.
  spec-compliance-checker caught it: only 2 of 7 P0 notification events were covered, and one of the
  six emails built wasn't a §6.9 event at all. Rather than accept the gap or paper over it with a
  weak "generic template" argument, a second build wave of seven closed all five missing events plus
  sitemap §5's named "reminder." Re-verified independently and found fully covered. **This is
  agent-manager's own scope call being corrected by a specialist mid-track**, not a builder's
  self-report — the same "verify, don't relay" discipline applies to agent-manager's own briefs.
- **One defect found and fixed**: `13JP-0`'s "OVERDUE 6 D" status chip shipped as one Text node
  wholesale in `--font-mono`; the file's own precedent (B-02's PAID/VOID chips) keeps the status word
  sans and only the value mono. Split into siblings, verified by computed styles, swept all 13 emails
  for the same class and found nothing else.
- **One real, still-open gap surfaced by walking sitemap §5 to its end**, not by anyone's checklist:
  no rich-text editor exists anywhere in the file for task/request descriptions. This was not on any
  prior "still to design" list — the closest anyone came was building the *plain composer* for
  comments (Track B10), which is a structurally different component from a task's own rich-text
  description field. Confirmed by direct node inspection (W-03's `1L7-0`, R-01's `230-0`, both plain
  Text nodes) and a file-wide zero-hit search for any toolbar icon row. Left open, flagged for
  whoever next opens W-03 or R-01. See §6.
- **Both the shell (first six emails) and the gap-fill (seven more) passed design-consistency audits
  clean on the first pass**, verified by computed styles and screenshots, not self-reports — this
  keeps the file's Track B10 streak of clean sweeps intact on the *styling* side even though the
  *coverage* side needed a real correction.

**Track B10 — three builds, both independent checkers passed all three clean, zero corrections
needed.** Worth recording precisely because it breaks the pattern: §8 has recorded a self-report or a
"clean" verdict needing correction on effectively every prior large-sweep track (six instances before
this one). This time, design-consistency-auditor and spec-compliance-checker were dispatched
independently against all three builders' claims — including the highest-stakes one, C-06's "zero
agency-only leakage" — and both confirmed every claim by direct node/computed-style inspection rather
than relaying it. The one genuinely new finding, not claimed by any builder, was the auditor's
independent judgment call on the agency-only badge's lower-contrast token (§2's new row) — judged
still unmistakable, not a defect, but flagged as a close call worth a second look if the file's alerting
language shifts further toward muted. No claim from any of the three builders failed verification.

**Track B9 — three items, all resolved. One agent-manager premise corrected by a specialist; one
specialist's own "100% complete" claim corrected by an independent audit.**
- **The S-06↔S-02 vocabulary gap, as framed in the brief, was wrong.** agent-manager's brief (echoing
  §6's old note) claimed S-06 offered no toggle for *invoice issued*/*time approved into balance*
  while "S-02 renders both" — true only of `QCB-0` (portal). The specialist checked `OEB-0` (console)
  directly, row by row, and found it renders neither event at all, so S-06 (console-only, no portal
  counterpart) had nothing to toggle. **No edit was made; the correct output was a ruling, not a
  fix.** New §2 row records the durable rule. This is the sixth time this file's own summary of a
  gap needed correcting by direct inspection rather than being taken at face value (§6 already
  tracked five prior instances of this pattern).
- **C-06's drawer header pill converted to bare dot+label, closing the design question §2 had left
  open since the Track B8 accent sweep.** `4IV-0` stripped of fill/radius/padding; `4IW-0` (formerly
  a 5px bullet recoloured to stay visible against the pill) repurposed as the real 8px status dot;
  `4IX-0` recoloured to `--color-ink`. Verified independently by design-consistency-auditor via
  computed styles — correct on all three nodes, header layout intact. **Clone-family sweep required
  by §2 found no recurrence**: W-03 (console's equivalent task drawer) has no task-status pill in its
  header at all — a structurally different "FROM REQUEST" source tag occupies that slot. C-06's
  approval-progress stepper was checked and correctly judged a distinct component, not a second
  collision. One watch-item surfaced, not fixed: W-03's source tag uses `--color-accent-wash`/
  `--color-accent-text`, arguably a stretch of §2's "accent = active-state marking only" reservation
  — pre-existing, out of this track's scope, left for whoever next opens W-03.
- **Sidebar badge counts swept from sans to Geist Mono, file-wide — and the specialist's own "336/336
  complete" claim was wrong.** A builder enumerated 114 console artboards and fixed 336 badge Text
  nodes, reporting full completion. design-consistency-auditor spot-checked ~30 nodes across 9
  artboards **not** in the builder's own cited sample and found one miss: `CL-01` (`4YR-0`) sidebar
  Billing badge `513-0` was still sans (its clone `CL-03`'s equivalent badge was correctly mono, so
  the miss was isolated, not propagated). Fixed in a one-node follow-up, verified by computed styles.
  **This is the fifth time in this file's history a checker's or builder's "clean"/"complete" verdict
  needed correcting by a second, independent inspection** (§8 already recorded four prior instances
  across both specialist roles) — the standing instruction to verify rather than relay is not
  precautionary, it has caught a real miss on effectively every large sweep run in this file so far.

**Track B8 — two findings CLOSED in the follow-up session, one new finding OPEN.**
- **`XTE-0` (shared B-01/B-02 error panel) asserted live tab-pill counts — "Balances 6" / "Invoices 9"
  — beside a "couldn't load" panel.** Count-assertion rule (§2) violated a **fourth** time, always
  on a control rather than a caption (filter pills, nav badges, KPI chips, now a tab pill). Found by
  design-consistency-auditor. **FIXED** — both numbers deleted, pills now read bare "Balances"/
  "Invoices" with active/inactive treatment intact. Verified by node inspection; a full sweep of the
  rest of the artboard found no other count assertion.
- **C-03 (Client Portal — New request) had no LOADING/ERROR.** Found by spec-compliance-checker —
  it fell through agent-manager's own re-derivation of the state-coverage set, the fifth time this
  kind of list has proved incomplete (§6 already recorded four prior instances). **BUILT** —
  `C-03-LOADING` (`12OY-0`) and `C-03-ERROR` (`12SN-0`), no EMPTY.
- **agent-manager's own derivation of the Track B8 scope missed C-03 outright.** Worth recording as
  a fifth instance of the "the list has been wrong more often than it has been right" pattern (§6),
  this time in agent-manager's own from-scratch re-derivation, not an inherited stale list. A
  specialist caught it, as has happened every time before.
**The accent / status-label sweep — CLOSED. The single largest recurrence in this file's history.**
*(This supersedes the "NEW, OPEN — C-05-LOADING" entry that stood here. It is closed, not pending.)*

- **It started as one defect and ended as seventeen nodes across eleven artboards.** The Track B8
  closing audit reported one: `--color-accent-wash`/`--color-accent` on C-05's "WAITING ON YOU"
  column (`4EZ-0` on `49S-0`, `119W-0` on `10VC-0`). Chasing it found the same defect on C-06's
  dimmed base layer (`4I0-0`), W-03's base layer (`1J6-0`), C-01's summary row (`409-0`), **D-01's
  own summary row (`BT-0`) and its two clones (`TGO-0`, `TTN-0`)**, plus coloured status **labels**
  on `4F2-0`, `4I3-0`, `1AV-0`, `S82-0`, `1J9-0`, `40B-0`, `BV-0`, `TGQ-0`, `TTP-0`, and an
  accent-filled status pill on C-06's drawer header (`4IV-0`). All fixed, all re-verified by
  computed styles. **The two new §2 rows are the durable output; read those, not this list.**
- **The proposed fix was wrong and matching siblings was right.** The auditor recommended swapping
  accent tokens for **warning** tokens. That would have left a uniquely tinted container on every
  screen — still the one column that looks different from its four siblings, just in a new hue.
  Inspecting the actual siblings gave three *different* correct answers: `--color-neutral-bg` on
  C-05's board, `--color-surface-muted` on W-02's and W-03's, and **no fill at all** on D-01's and
  C-01's summary rows. **Never substitute a token when the sibling carries none — remove the
  property.** A hue swap looks like a fix and preserves the defect.
- **`D-01` was the origin and appeared on no list.** Not in §6's state-coverage list, not in the
  audit's named scope, not in the fix brief — it was found only because the sweep was told to
  distrust its own list. Its `-LOADING` and `-EMPTY` clones had inherited the defect from it, which
  is how a "new" B8 defect turned out to predate B8 entirely.
- **A clean audit report is not evidence of a clean artboard.** The Track B8 tail audit reported the
  artboards around `4FS-0` clean while `4FS-0`'s own dimmed base layer carried the defect. Two
  separate audits passed `13J-0` after B7 fixed its column, and its **label** was wrong the whole
  time. **Fifth recurrence, and the fourth time a checker's clean verdict was wrong** — §8 now
  records that failure class for spec-compliance-checker twice and design-consistency-auditor twice.
- **One builder judgment call, recorded because it was not authorised.** Recolouring C-06's pill from
  a dark accent fill to light `--color-warning-bg` left its 5px leading bullet (`4IW-0`) white and
  therefore invisible. The builder recoloured it to `--color-warning-text` unprompted and **said so
  plainly rather than burying it**. The call was correct and is kept. Note the bullet is *not* a
  task-status dot — it is part of the pill's label — so it does not breach the dot-only rule above.

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

**Track B7 — W-02a list view + the two contractor variants. 111 → 119 artboards.**

- **`--color-accent-wash` was back on the *waiting on client* column. This is a RECURRENCE, not a new
  find.** Track B4 spent a whole pass moving that status off accent (§2's task-status hue map) and it
  reappeared on the board's **column header/body fill** — `1AS-0` on `13J-0` and `S7H-0` on `S6S-0` —
  a surface the B4 sweep, which targeted the status *dot*, never touched. Both fixed to
  `--color-surface-muted`, matching every sibling column, and confirmed by computed styles.
  **Treat the board's waiting-on-client column as a known trap**: accent means exactly one thing
  file-wide, a running timer, and this status has now drifted back onto it twice.
- **Task-status colour belongs on the dot, never on the label.** Two rows of `R0Z-0`'s list view
  shipped their status *text* in `--color-warning-text` (`RDS-0`, `REB-0`) while every other status
  label on the screen was plain `--color-ink`. Fixed to `--color-ink`. §2's task-status treatment is
  **bare dot + label**; colouring the label as well doubles the signal and edges the family toward the
  filled-pill treatment that belongs to request and client status.
- **Both defects were found by design-consistency-auditor and neither by the builder or by
  spec-compliance-checker**, which passed clean on every functional dimension it checks (P0 coverage,
  contractor rate-blindness, filtered scope, state coverage, naming, single-running-timer). A spec
  checker does not see hue drift; the two runs are not substitutes.
- **PROVENANCE OF THESE EIGHT ARTBOARDS IS UNRESOLVED — do not resolve it by guessing.**
  agent-manager reported it found all eight *already built* in the file with no record in memory, and
  therefore verified rather than rebuilt. That could not be confirmed from outside the run: the track
  was interrupted partway, so the artboards may equally have been built by B7's own builders and then
  misdescribed. **§8 already records agent-manager getting four of its own premises wrong on one track
  and fabricating specialist reports on two consecutive tracks**, so the claim is recorded as a claim.
  **What IS verified by direct inspection**: `get_basic_info` returns 119 artboards, all eight IDs
  resolve at worldY 19000 with the names and coordinates listed in §6, both auditors ran against them,
  and the two defects above were fixed and re-verified. Nothing in this entry depends on which session
  drew them. If a future session finds evidence either way, correct this paragraph rather than
  quietly assuming.
