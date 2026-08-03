# VSUALWEB Agency Platform: Product Requirements Document

**Version:** 1.0
**Scope:** Phase 1 (Internal MVP) in full depth; Phase 2 features referenced where they constrain design
**Companion document:** Sitemap & Screen Inventory (drives the design phase)
**Architecture reference:** vsualweb-platform-architecture.md

---

## 1. Problem Statement

VSUALWEB runs client work across scattered tools: PM in Linear, invoicing outside any system of record, requests arriving by email, reporting assembled by hand. Clients have no self-serve visibility into what work was done, what it cost, or what they owe, which creates status-update overhead and invoice-time friction. The agency loses unbillable hours to administration, and there is no single source of truth connecting logged work to money owed.

The platform closes that loop: every request, task, hour, and euro lives in one system, and clients see it live. Long term, the same system becomes a white-label SaaS sold to other agencies, so Phase 1 decisions are made with multi-tenancy already in the schema.

## 2. Goals

1. **One billing loop, zero leaks.** 100% of work for onboarded clients flows work → approved balance → invoice → payment inside the platform within the first full month of use.
2. **Kill status-update overhead.** Client-initiated "what's the status" messages drop measurably because the portal answers before they ask; target near zero for onboarded clients by week 4.
3. **No invoice-time surprises.** Every invoice is preceded by a client-visible itemized balance; target zero invoice disputes on itemization.
4. **Admin time down.** Weekly admin time (status emails, invoice assembly, request wrangling) drops by at least 50% by end of Phase 1.
5. **Compliance without dependency.** VSUALWEB is fully compliant with the Greek e-invoicing mandate (own deadline: 1 October 2026) from day one via upload mode, independent of native-builder build progress.

## 3. Non-Goals (Phase 1)

- **Quotes and offers module.** Manual quoting continues; in-portal acceptance is Phase 2. Cutting it does not block the billing loop.
- **Automated SEO/GEO/AEO report engine.** The differentiator, but a separate build with API dependencies; Phase 2. Reports can be uploaded as files meanwhile.
- **Contracts with click-to-accept.** Phase 2; contracts continue as PDFs exchanged today, storable in the client file area.
- **Prepaid credits and retainers.** Postpaid only in Phase 1; the schema tolerates both later.
- **White-label tenant features** (theming, custom domains, tenant self-signup, plan billing). Phase 3. Tenancy exists in the schema only.
- **Native mobile apps.** The web app must be fully responsive (Andreas frequently works from mobile), but no native builds.
- **Client-to-client or public features.** No marketplace, no public catalog pages; the catalog is visible to authenticated clients only.

## 4. Personas

| Persona | Description | Primary surface |
|---|---|---|
| **Agency owner** (Andreas) | Runs everything: triage, delivery, time, billing, settings | Agency Console, often mobile |
| **Agency contractor** | Occasional collaborator; executes assigned tasks, logs time; must never see rates, balances, or other clients | Agency Console (restricted) |
| **Client billing owner** | Client-side decision maker; sees everything for their company including money | Client Portal |
| **Client collaborator** | Client-side staff (e.g. marketing person); tasks, requests, files; no financials | Client Portal (restricted) |

## 5. User Stories

### Agency owner
1. As the agency owner, I want new client requests to land in a triage inbox so that work never starts from an untracked email.
2. As the agency owner, I want to convert a request into one or more tasks on a client project so that scoping produces trackable work.
3. As the agency owner, I want to log time against tasks with a timer or manual entry, with the applicable rate snapshotted, so that billing is accurate even after rate changes.
4. As the agency owner, I want to review and approve time entries before they become client-visible balance so that clients only ever see vetted numbers.
5. As the agency owner, I want the platform to assemble a draft invoice from all approved uninvoiced items for a client so that invoice creation takes minutes, not an evening.
6. As the agency owner, I want to upload an externally issued invoice (PDF + number, date, amounts, MARK) and have it consume the matching balance items so that I am compliant today without waiting for the native builder.
7. As the agency owner, I want to record payments (card link or manual bank-transfer confirmation) so that balances and invoice statuses are always current.
8. As the agency owner, I want a dashboard showing uninvoiced balance per client, overdue invoices, open requests, and task load so that I start each day knowing where the money and the fires are.
9. As the agency owner, I want an audit log of financially relevant events so that any dispute is answerable with evidence.
10. As the agency owner, I want to manage the service catalog (services, hourly rates, fixed prices, recurring eCare plans) so that requests and billing pull from one price source.
11. As the agency owner, I want to invite client users with a role (billing owner or collaborator) so that access matches responsibility.

### Agency contractor
12. As a contractor, I want to see only tasks assigned to me and log time against them so that I can work without exposure to client financials.
13. As a contractor, I want my submitted time to await owner approval so that I am never blamed for a billing error.

### Client billing owner
14. As a client billing owner, I want a live, itemized view of approved unbilled work so that the invoice is never a surprise.
15. As a client billing owner, I want to see all invoices with status and download PDFs so that my bookkeeping does not depend on email archaeology.
16. As a client billing owner, I want to pay an invoice by card from the invoice page so that settling takes one click.
17. As a client billing owner, I want to invite or remove collaborators from my company so that my team manages itself.

### Client collaborator (and billing owner)
18. As a client user, I want to browse the agency's services and submit a request with a structured form so that I do not have to compose an email hoping I included what matters.
19. As a client user, I want to see the status of every task on our projects, with comments, so that I never have to ask "where is this?"
20. As a client user, I want to comment on a task and attach files so that clarifications live where the work lives.
21. As a client user, I want notifications (in-app and email) when a task status changes or something needs my input so that I act without polling the portal.

## 6. Functional Requirements

Priorities: **P0** = Phase 1 cannot ship without it. **P1** = build in Phase 1 if velocity allows, else first fast-follow. **P2** = designed-for, built later.

### 6.1 Authentication & Accounts
- **P0** Email + password login via Supabase Auth; forgot/reset password flow.
- **P0** Invite flow: agency invites client users and contractors by email; invite link sets password and lands the user in the correct surface (console vs portal) based on user kind.
- **P0** Session routing: agency users can never load portal-only routes as a client and vice versa; a user's kind and role are resolved server-side on every request.
- **P1** OAuth (Google) sign-in.

Acceptance criteria (selected):
- [ ] An invited client collaborator who follows the invite link ends up inside their company's portal with collaborator permissions and no financial visibility.
- [ ] A revoked user's session stops working within one minute of revocation.
- [ ] Password reset link expires and is single-use.

### 6.2 Clients (CRM-lite)
- **P0** Client company records: name, VAT number, billing email, address, status (lead / active / paused / churned), notes.
- **P0** Client detail hub with tabs: Overview, Users, Projects, Time, Billing, Files, Settings.
- **P0** Per-client settings: default hourly rate override, currency (EUR fixed in Phase 1, field exists), "hours visible to client before invoicing" toggle.
- **P1** Contact log (free-form notes with timestamps).

Acceptance criteria:
- [ ] Archiving a client hides them from active lists but preserves all historical data and invoices.
- [ ] VAT number is validated for format (EL + 9 digits for Greek clients) with a bypass for foreign clients.

### 6.3 Service Catalog
- **P0** Services: name, description, pricing type (hourly / fixed / recurring), price, unit.
- **P0** Packages: bundles of services with a package price and interval (one-off / monthly / yearly); eCare plans are modeled as recurring packages.
- **P0** Visibility flag per service/package: shown in client portal catalog or internal-only.
- **P1** Per-client price overrides.

### 6.4 Requests
- **P0** Client-side: browse catalog, submit a request either attached to a service or free-form; structured form fields (title, description, attachments, urgency).
- **P0** Agency-side triage inbox: statuses new → triaged → converted / declined; convert creates task(s) on a chosen project (creating the project inline if needed) with a back-link to the request.
- **P0** Decline with a reason message delivered to the client.
- **P1** Per-service custom form fields (jsonb-driven), so a "new landing page" request asks different questions than an "SEO audit" request.

Acceptance criteria:
- [ ] A converted request shows the client which task(s) it became; the client follows status from there.
- [ ] Requests can never be edited by the client after triage begins, only commented on.

### 6.5 Projects & Tasks (native engine)
- **P0** Projects per client: name, status, budget type (hourly / fixed), optional budget amount.
- **P0** Tasks: title, description (rich text), status (todo / in progress / review / waiting on client / done), assignee, checklist, position (ordering), attachments.
- **P0** Board view and list view per project; "My tasks" cross-project view for assignees.
- **P0** Comments on tasks with per-comment visibility: all, or agency-only. Agency-only comments are never delivered to portal users by any channel including notifications.
- **P0** Client portal task view: clients see tasks on their projects (status, description, comments marked "all", attachments), can comment and attach, cannot edit status except one action: "approve / request changes" when status is waiting on client.
- **P1** Task templates for recurring service types.
- **P2** Linear connector (one-way mirror in), recurring task generation from eCare plans.

Acceptance criteria:
- [ ] An agency-only comment never appears in the portal, in client emails, or in client notification payloads (negative test required).
- [ ] Moving a task to waiting on client notifies client users of that company; their approval moves it to review with an audit event.
- [ ] Contractors see only their assigned tasks and the minimum project context; client names visible, budgets and rates never.

### 6.6 Time Tracking & Approvals
- **P0** Manual time entry: task, date, duration, note, billable flag.
- **P0** Running timer (start/stop from any task; one running timer per user; persists across sessions and devices).
- **P0** Rate snapshot: each entry stores the rate applicable at creation (client override > service rate > agency default). Rate changes never mutate history.
- **P0** Entry states: draft → submitted → approved → invoiced. Contractors' entries always require owner approval; the owner's own entries can auto-approve (setting).
- **P0** Approvals queue: filter by client/project/person, approve or adjust-and-approve (adjustment logged in audit).
- **P0** Weekly timesheet view per user.

Acceptance criteria:
- [ ] Approved entries appear in the client's balance within seconds; draft and submitted entries never do.
- [ ] An adjusted-then-approved entry keeps the original duration in the audit log.
- [ ] Deleting a task with time entries is blocked; tasks archive instead.

### 6.7 Balance & Invoicing
- **P0** Balance is computed, never stored: approved uninvoiced time entries + delivered uninvoiced fixed/recurring items per client. Itemized in both console and portal.
- **P0** Mark fixed-price and recurring items as delivered (creating billable balance items).
- **P0** **Invoice upload (Mode B):** upload PDF, enter series/number, date, subtotal, VAT, total, MARK; select which balance items it covers; items flip to invoiced.
- **P0** Invoice registry: list with statuses draft / issued / paid / overdue / void, due-date tracking, PDF storage, client-visible.
- **P1** **Native builder (Mode A):** assemble a draft invoice from approved items, edit lines, VAT computed by category, branded PDF, issuance through the certified-provider compliance rail (MARK + UID stored). Design the builder UI in the design phase; ship when the provider spike is resolved.
- **P1** Overdue reminders: manual "send reminder" first, scheduled reminders after.
- **P2** Credit notes, prepaid credits ledger, retainer auto-invoicing, multi-currency.

Acceptance criteria:
- [ ] The sum shown as client balance always equals the sum of its listed items (property test, not just UI).
- [ ] An uploaded invoice that covers items totaling a different amount than the invoice total warns but allows (partial billing and rounding are real).
- [ ] Voiding an invoice returns its items to approved uninvoiced state with an audit event.

### 6.8 Payments
- **P0** Record manual payment (bank transfer): amount, date, reference; supports partial payments.
- **P0** Card payment link per invoice (Stripe or Viva Wallet, pending fee decision); webhook marks paid automatically.
- **P0** Invoice status transitions driven by payment records; paid requires payments ≥ total.

### 6.9 Notifications (basic tier)
- **P0** In-app notification center + email for: new request (agency), request converted/declined (client), task status change (client), comment on subscribed task (both), invoice issued (client), payment received (agency), time approved into balance (client, if toggle on).
- **P0** Per-user email on/off; sensible defaults.
- **P2** Digests, granular per-event preferences, browser push.

### 6.10 Audit Log
- **P0** Immutable append-only events for: time entry approval/adjustment, balance item changes, invoice create/upload/void, payment records, contract-relevant actions (Phase 2 hooks), user invitations and role changes, client approval actions on tasks.
- **P0** Console viewer with entity and actor filters. Not client-visible.

### 6.11 Settings
- **P0** Agency profile (name, logo, VAT details used on documents), team members and roles, default hourly rate, invoice series configuration, payment method configuration, notification defaults.
- **P2** Branding/theming, custom domain, integrations, tenant plan management.

## 7. Permissions Matrix (Phase 1)

| Capability | Owner | Admin | Member | Contractor | Client owner | Client collab |
|---|---|---|---|---|---|---|
| Manage clients & catalog | ✔ | ✔ | ✖ | ✖ | ✖ | ✖ |
| Triage requests | ✔ | ✔ | ✔ | ✖ | ✖ | ✖ |
| See all tasks | ✔ | ✔ | ✔ | assigned only | own company | own company |
| Log time | ✔ | ✔ | ✔ | ✔ | ✖ | ✖ |
| Approve time | ✔ | ✔ | ✖ | ✖ | ✖ | ✖ |
| See rates & balances | ✔ | ✔ | ✔ | ✖ | own company | ✖ |
| Create/upload invoices | ✔ | ✔ | ✖ | ✖ | ✖ | ✖ |
| Pay invoices | ✖ | ✖ | ✖ | ✖ | ✔ | ✖ |
| Submit requests | ✖ | ✖ | ✖ | ✖ | ✔ | ✔ |
| Manage client users | ✔ | ✔ | ✖ | ✖ | own company | ✖ |
| Settings & audit log | ✔ | ✔ | ✖ | ✖ | ✖ | ✖ |

Enforced in Postgres RLS; the UI hides what RLS forbids, but RLS is the actual boundary.

## 8. Key Flows

**Flow A: Request to work.** Client browses catalog → submits request → agency triage inbox → convert to task(s) on project (or quote in Phase 2, or decline with reason) → client tracks task status → task hits waiting on client → client approves → done.

**Flow B: Work to money (the loop that defines Phase 1 success).** Time logged with rate snapshot → submitted → owner approves → appears in client-visible itemized balance → month end: draft invoice assembled from all approved items → issued (upload mode now, native mode later) → client notified → pays by card link or transfer → status paid → items locked as invoiced → audit trail complete.

**Flow C: Client onboarding.** Agency creates company → invites billing owner → owner sets password, lands on portal welcome → sees catalog, empty states everywhere designed to invite the first request → owner invites collaborators.

## 9. Non-Functional Requirements

- **Security:** every table carries tenant_id and RLS policies; agency-only comment visibility and contractor rate-blindness are RLS-enforced, with automated negative tests.
- **Responsive:** all console and portal screens usable at 375 px width; the timer, approvals queue, and triage inbox are explicitly mobile-first since the owner operates from mobile.
- **Performance:** portal dashboard and balance views under 1.5 s p95; balance computation via indexed queries or materialized view refreshed on write.
- **Localization readiness:** all strings externalized from day one; UI ships English, Greek is a Phase 2/3 locale. Invoice documents support Greek requirements regardless of UI language.
- **GDPR:** client data export per company, user deletion honoring accounting retention (invoices retained per Greek statutory retention rules, personal data minimized on erasure requests).
- **Email deliverability:** transactional email via Resend with proper SPF/DKIM on the platform domain.

## 10. Success Metrics

| Metric | Target | When |
|---|---|---|
| Real client companies active in portal | ≥ 3 | Week 4 after launch |
| Full billing cycles completed in-platform | ≥ 1 per active client | First full month |
| Invoices tracked in platform for active clients | 100% | From day one (upload mode) |
| Status-inquiry messages from onboarded clients | Near zero | Week 4 |
| Owner weekly admin time | −50% vs pre-platform baseline (measure one week now) | Week 6 |
| Invoice itemization disputes | 0 | Ongoing |

## 11. Open Questions

1. **Provider selection** (blocks native builder only, not Phase 1 start): which certified provider; resolves via the 2-day sandbox spike. Owner: Andreas.
2. **Viva Wallet vs Stripe** (blocks payment integration, ~week 3): fee math on real volume. Owner: Andreas.
3. **Owner time auto-approval default** (design decision, non-blocking): auto-approve own entries or force the review step for discipline. Owner: Andreas, during design.
4. **Task board columns** (design, non-blocking): confirm the five statuses cover VSUALWEB's real workflow before the board is designed; renames are cheap now.

## 12. Timeline Considerations

- **Hard external date:** 1 October 2026, VSUALWEB's e-invoicing obligation begins (transition to 31 December 2026). Upload mode satisfies it; no platform feature is on the legal critical path.
- **Suggested order of build after design:** schema + RLS → auth + invites → clients + catalog → tasks + requests → time + approvals → balance + upload invoicing + payments → notifications + audit → native invoice builder (post provider spike).
- **Design phase input:** the companion Sitemap & Screen Inventory document enumerates every screen with scope, states, and access, tagged by phase, so Phase 2 screens can be accounted for in navigation and layout without being designed in detail yet.
