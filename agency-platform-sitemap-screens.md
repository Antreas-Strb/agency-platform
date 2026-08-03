# Agency Platform: Sitemap & Screen Inventory

**Purpose:** the design-phase source of truth. Every screen, its scope, states, and access, tagged by phase. Phase 1 screens get full design; Phase 2/3 screens are listed so navigation, layout, and information architecture accommodate them without redesign.

**Conventions:**
- **[P1] [P2] [P3]** = build phase. Design Phase 1 fully; reserve nav space and layout logic for P2; P3 needs no design now beyond CSS-variable theming discipline.
- **Access codes:** AO/AA/AM/AC = agency owner / admin / member / contractor; CO/CC = client billing owner / client collaborator.
- Every screen requires designed **empty, loading, and error states**; the tables call out only non-obvious ones.
- Detail "screens" marked *(drawer)* open as side panels over their parent list, not full pages. Mobile: drawers become full-screen sheets.

---

## 1. Route Tree

```
app.{domain}
├── /login                      [P1]
├── /forgot-password            [P1]
├── /reset-password             [P1]
├── /invite/{token}             [P1]
│
├── /admin  (Agency Console, left sidebar nav)
│   ├── /dashboard              [P1]
│   ├── /requests               [P1]
│   │   └── /{id}               [P1] (drawer)
│   ├── /clients                [P1]
│   │   ├── /new                [P1]
│   │   └── /{id}               [P1]  tabs: overview | users | projects |
│   │                                 time | billing | files[P2] | settings
│   ├── /projects               [P1]
│   │   └── /{id}               [P1]  board | list
│   │       └── task/{id}       [P1] (drawer)
│   ├── /my-tasks               [P1]
│   ├── /time                   [P1]  tabs: timesheet | approvals
│   ├── /billing                [P1]  tabs: balances | invoices
│   │   ├── /invoices/new       [P1→P2] (upload P1, native builder P2*)
│   │   └── /invoices/{id}      [P1]
│   ├── /catalog                [P1]  tabs: services | packages
│   │   └── /{id}/edit          [P1] (drawer)
│   ├── /quotes                 [P2]
│   │   ├── /new                [P2]
│   │   └── /{id}               [P2]
│   ├── /contracts              [P2]  tabs: contracts | templates
│   ├── /reports                [P2]
│   │   └── /{id}               [P2]
│   ├── /analytics              [P2]
│   ├── /audit                  [P1]
│   ├── /notifications          [P1]
│   └── /settings               [P1]  tabs: agency | team | billing-setup |
│                                     notifications | branding[P3] | integrations[P3]
│
└── /portal  (Client Portal, top nav or slim sidebar)
    ├── /home                   [P1]
    ├── /services               [P1]
    │   └── /request/{serviceId?} [P1]
    ├── /requests               [P1]
    │   └── /{id}               [P1] (drawer)
    ├── /work                   [P1]  project switcher, board/list
    │   └── task/{id}           [P1] (drawer)
    ├── /billing                [P1]  tabs: balance | invoices
    │   └── /invoices/{id}      [P1]
    ├── /reports                [P2]
    ├── /quotes                 [P2]
    ├── /contracts              [P2]
    ├── /files                  [P2]
    ├── /team                   [P1]
    ├── /settings               [P1]
    └── /notifications          [P1]
```
\* `/billing/invoices/new` ships in Phase 1 with upload mode; the same route gains a "Create" tab when the native builder lands. Design both tabs now.

---

## 2. Auth Screens

| ID | Screen | Scope | Access |
|---|---|---|---|
| A-01 [P1] | Login | Email + password, forgot link, Google OAuth button (P1 optional). Error state: invalid credentials, revoked account. Post-login routing by user kind: console vs portal. | Public |
| A-02 [P1] | Forgot password | Email input, confirmation state (always "sent" regardless of account existence). | Public |
| A-03 [P1] | Reset password | New password + confirm, strength hint, expired/used-link error state. | Public |
| A-04 [P1] | Accept invite | Shows who invited them and to what (agency team vs client company + role). Set name + password. Expired-invite state with "request new invite" action. Lands agency users on D-01, client users on portal welcome (C-01 first-visit variant). | Public (token) |

---

## 3. Agency Console

### 3.1 Dashboard & Inbox

| ID | Screen | Scope | Access |
|---|---|---|---|
| D-01 [P1] | Dashboard | The morning screen. Cards: total uninvoiced balance (sum + per-client top 5), overdue invoices (count + amount, click through), new requests (count, click through), tasks by status, running timer if active. Recent activity feed (last 15 events). Mobile: cards stack, timer and requests first. | AO AA AM (AC sees a reduced variant: my tasks + my timer only) |
| D-02 [P1] | Requests inbox | Triage queue. List with status filter (new / triaged / converted / declined), client, service, urgency, age. Row click opens R-01. Bulk nothing (triage is deliberate). Empty state: "No open requests" with celebration tone. | AO AA AM |
| R-01 [P1] | Request detail *(drawer)* | Full request: form data, attachments, client, comments thread. Actions: **Convert** (opens convert flow: pick/create project, define one or more tasks, back-link recorded), **Decline** (reason required, sent to client), comment. Post-conversion: shows linked tasks with statuses. | AO AA AM |

### 3.2 Clients

| ID | Screen | Scope | Access |
|---|---|---|---|
| CL-01 [P1] | Clients list | Table: name, status, uninvoiced balance, open tasks, last activity. Filter by status. Primary action: New client. | AO AA (AM read-only) |
| CL-02 [P1] | Client create/edit | Company fields: name, VAT (format validation, foreign bypass), billing email, address, status. | AO AA |
| CL-03 [P1] | Client detail: Overview tab | Header (name, status, key numbers: balance, open tasks, overdue invoices). Notes section. Quick actions: new project, new invoice, invite user. | AO AA AM |
| CL-04 [P1] | Client detail: Users tab | Client users list with role badges. Invite (email + role CO/CC), resend, revoke. Pending invites shown. | AO AA |
| CL-05 [P1] | Client detail: Projects tab | Projects of this client with status and budget burn (hours logged vs budget when set). New project inline. | AO AA AM |
| CL-06 [P1] | Client detail: Time tab | All time entries for this client, filter by state and person. Links into approvals. | AO AA |
| CL-07 [P1] | Client detail: Billing tab | Itemized current balance (mirrors exactly what the client sees, labeled as such). Invoice history. Actions: assemble invoice (goes to B-03 prefiltered), upload invoice. | AO AA |
| CL-08 [P2] | Client detail: Files tab | Deliverables and shared files, versioned. | AO AA AM |
| CL-09 [P1] | Client detail: Settings tab | Rate override, hours-visible-to-client toggle, currency (locked EUR, visible), archive client (confirm dialog explaining data retention). | AO AA |

### 3.3 Work

| ID | Screen | Scope | Access |
|---|---|---|---|
| W-01 [P1] | Projects list | All projects across clients: client, status, open tasks, budget burn. Filters: client, status. | AO AA AM |
| W-02 [P1] | Project detail | Board view (columns = five statuses, drag to move) and list view toggle. Header: budget type/amount, hours logged, quick add task. Board is the screen contractors mostly live in (their filtered variant). Mobile: horizontal-scroll columns or grouped list, design decides. | AO AA AM (AC: assigned tasks only) |
| W-03 [P1] | Task detail *(drawer)* | Title, rich description, status control, assignee, checklist, attachments, **time section** (entries on this task + log time + start timer), **comments** with per-comment visibility toggle (all / agency-only, visually unmistakable, agency-only styled distinctly). Linked request badge if converted. Archive (blocked if time exists → archive only). | AO AA AM (AC if assigned) |
| W-04 [P1] | My tasks | Cross-project list grouped by status or due, running timer affordance on each row. The contractor home screen. | All agency |

### 3.4 Time

| ID | Screen | Scope | Access |
|---|---|---|---|
| T-01 [P1] | Timesheet | Week grid per user (day columns), entries as blocks: task, duration, note, billable, state chip. Add manual entry. Week nav. Owner/admin can switch person. | All agency (own; AO AA any) |
| T-02 [P1] | Approvals | Queue of submitted entries: person, client, project, task, duration, rate (hidden from screen if viewer is not AO/AA by route guard, but only AO/AA reach it). Approve, or adjust duration + approve (original preserved, audit event). Bulk approve by selection. Empty state: "All caught up." | AO AA |
| T-03 [P1] | Timer widget *(global component, not a route)* | Persistent element in console chrome: running task, elapsed, stop. Present on mobile viewport at all times when running. | All agency |

### 3.5 Billing

| ID | Screen | Scope | Access |
|---|---|---|---|
| B-01 [P1] | Balances tab | Per-client uninvoiced totals, expandable to itemized lines (time entries with hours and computed amounts, delivered service items). Action per client: assemble invoice, upload invoice. | AO AA |
| B-02 [P1] | Invoices tab | Registry: number, client, issue date, due date, total, status chip (draft / issued / paid / overdue / void), source badge (native / uploaded). Filters: client, status, date range. | AO AA |
| B-03 [P1] | New invoice: Upload mode | Two-tab screen; Upload tab ships Phase 1. Fields: client, series + number, issue date, due date, subtotal, VAT, total, MARK, PDF upload. Item selector: checklist of that client's approved uninvoiced items with running sum vs entered total, mismatch warning (allowed). Submit flips items to invoiced. | AO AA |
| B-04 [P2] | New invoice: Create mode (native builder) | Same route, second tab. Prefilled draft lines from approved items, editable lines (description, qty, unit price, VAT category), live totals, branded PDF preview, issue action → compliance rail → MARK/UID shown on success, provider-error state with retry (draft preserved). **Design in the design phase now** so the builder ships without a design gap. | AO AA |
| B-05 [P1] | Invoice detail | Header: status, source, MARK, dates, totals. PDF viewer/download. Payments section: recorded payments, record manual payment (amount, date, reference, partial allowed), payment-link block (generate/copy card link; paid-via-webhook indicator). Actions: send reminder (P1 manual), void (confirm; items return to balance, audit). | AO AA |

### 3.6 Catalog

| ID | Screen | Scope | Access |
|---|---|---|---|
| CA-01 [P1] | Services tab | List: name, pricing type, price, portal-visible flag. Add/edit in drawer CA-03. | AO AA |
| CA-02 [P1] | Packages tab | List: name, price, interval, included services. eCare plans live here. | AO AA |
| CA-03 [P1] | Service/package editor *(drawer)* | Name, description (client-facing copy), pricing type + price + unit, portal visibility, package: service picker with quantities. | AO AA |

### 3.7 Phase 2 console areas (design nav placement now, screens later)

| ID | Screen | Scope note for design |
|---|---|---|
| Q-01..03 [P2] | Quotes list / builder / detail | Builder resembles invoice builder; acceptance status timeline on detail. Nav slot under Billing. |
| CT-01..02 [P2] | Contracts + templates | List with acceptance states; template editor with merge fields. |
| RP-01..02 [P2] | Reports list / report detail | Per client per period; detail is the flagship branded report layout (design investment lands here in Phase 2). |
| AN-01 [P2] | Agency analytics | Revenue by month, hours by client, utilization, request conversion. |

### 3.8 System

| ID | Screen | Scope | Access |
|---|---|---|---|
| S-01 [P1] | Audit log | Filterable table: time, actor, action, entity, diff expander. Read-only, dense, no pagination surprises (cursor-based). | AO AA |
| S-02 [P1] | Notifications center | List, read/unread, click-through to entity. Bell + badge in chrome (console and portal share the pattern). | All |
| S-03 [P1] | Settings: Agency | Name, logo upload, VAT details block (appears on invoice documents), default hourly rate. | AO AA |
| S-04 [P1] | Settings: Team | Agency members, role management, invite, revoke. Contractor role description visible ("cannot see rates or balances"). | AO |
| S-05 [P1] | Settings: Billing setup | Invoice series config (prefix, next number), VAT rate defaults, payment methods (Stripe/Viva connection state), compliance-rail provider connection [P2 slot designed now: "not connected" state]. | AO |
| S-06 [P1] | Settings: Notifications | Default email toggles per event group. | AO AA |
| S-07 [P3] | Settings: Branding / Integrations | Tenant theming, custom domain, Linear connector. Nav items exist disabled/hidden; no design now beyond the settings-tab pattern accommodating them. | AO |

---

## 4. Client Portal

Portal chrome: agency logo, slim nav, notification bell, user menu. Tone: calm, transparent, zero jargon. Every money number itemizable in one click.

| ID | Screen | Scope | Access |
|---|---|---|---|
| C-01 [P1] | Home | First-visit variant: welcome, "browse services" and "submit your first request" prompts. Steady-state: current balance card (amount + "view breakdown"), open tasks summary by status, awaiting-your-input tasks (prominent, action-colored), latest activity, latest report card [P2 slot, hidden until exists]. | CO CC (CC: no balance card) |
| C-02 [P1] | Services | Catalog grid of portal-visible services and packages: client-facing name, description, pricing display (hourly rate, fixed price, or "from" for packages). CTA per card: Request this. Free-form "something else?" card at end. | CO CC |
| C-03 [P1] | New request | Form: prefilled service (or free-form), title, description, urgency, attachments. [P1.5/P2: dynamic per-service fields render here.] Confirmation state: what happens next, link to the request. | CO CC |
| C-04 [P1] | Requests list + detail *(drawer)* | Their submitted requests with status; detail shows submission, comments, and after conversion the linked tasks with live statuses. Declined shows the reason. | CO CC |
| C-05 [P1] | Work | Project switcher (if multiple), board or list of tasks: status, title, updated. No assignee names beyond "VSUALWEB" (internal load is not client business), design decision to confirm. | CO CC |
| C-06 [P1] | Task detail *(drawer)* | Description, status timeline, comments (visibility "all" only, by server filtering), attach + comment. If status = waiting on client: prominent Approve / Request changes actions (request changes requires a comment). | CO CC |
| C-07 [P1] | Billing: Balance tab | The trust screen. Current unbilled total, itemized: date, task/service, hours × rate or fixed amount, line total. Note: "You will only ever be invoiced amounts listed here first." | CO |
| C-08 [P1] | Billing: Invoices tab + detail | Invoice list (number, date, due, total, status), detail: PDF download, **Pay now** (card link) when unpaid, payment record shown when paid, overdue styling. | CO |
| C-09 [P1] | Team | Company users, invite collaborator (CO only), remove. Role explanation copy. | CO (CC read-only) |
| C-10 [P1] | Settings | Company billing details (address, VAT, billing email) editable by CO; personal: name, password, email notification toggles. | CO CC (scoped) |
| C-11 [P2] | Reports | List of published reports per period; report view is the branded flagship layout with PDF download. | CO CC |
| C-12 [P2] | Quotes | Pending quotes with line items; Accept (confirm dialog: creates project, references contract when contracts exist) / Decline with comment. | CO |
| C-13 [P2] | Contracts | List + document view + click-to-accept flow (checkbox, typed name, timestamp + IP recorded, PDF of accepted version downloadable). | CO |
| C-14 [P2] | Files | Deliverables per project, download, versions. | CO CC |

---

## 5. Shared Component Inventory (design system scope)

Design these once, both surfaces consume them: app shell (sidebar/topbar, mobile nav), data table (sort, filter, cursor pagination, responsive collapse), drawer/sheet, status chips (task, invoice, request, entry: distinct color families so screenshots are unambiguous), comment thread (with visibility variant), file upload + attachment list, rich text editor (tasks) and plain composer (comments), form patterns + validation, confirm dialogs (destructive variant), toasts, empty states (illustrated, per-screen copy), notification bell + list, timer widget, money display (EUR, consistent precision), date/duration display, invoice PDF template (branded, Greek-compliant fields, MARK + QR block), transactional email templates (invite, reset, request updates, task updates, invoice issued, payment received, reminder).

## 6. Design-Phase Checklist

1. Breakpoints: 375 / 768 / 1280. Console is desktop-first but fully operable at 375 (timer, approvals, triage, task drawer are the mobile-critical paths). Portal is designed mobile-first.
2. Every P1 screen: empty, loading, error states designed, not improvised in build.
3. Status color system defined once across all four status families before any screen design.
4. Agency-only comments: visually unmistakable (background + label), verified in design review.
5. Theming discipline for Phase 3: all colors and the logo slot as design tokens; no hardcoded brand values in components.
6. B-04 (native invoice builder) is designed now despite building later: it is the highest-stakes screen in the product.
7. C-07 (client balance) is the trust centerpiece: design it to be screenshot-able into an email and still make sense.
8. Localization: strings will be externalized; avoid text-in-images, leave 30% width headroom for Greek copy length.
