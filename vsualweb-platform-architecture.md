# Agency Operations Platform: Architecture & Business Plan Foundation

**Version:** 1.0 (Discovery Phase)
**Date:** August 2026
**Owner:** Andreas Stirmpou, VSUALWEB E.E.

---

## 1. Executive Summary

A two-sided platform for digital agencies. The agency side controls services, packages, clients, task requests, quotes, contracts, time tracking, billing, and analytics. The client side is a branded portal where clients browse offerings, submit requests, track task status, view reports, sign and store contracts, and see their account balance and invoices.

Strategy: build it as internal tooling for VSUALWEB first, run it in production with real clients, then productize it as a white-label SaaS for other agencies. Dogfooding de-risks the product before any go-to-market spend.

Billing model at launch: postpaid. Work is logged as time entries or fixed-price service items, accumulated into a balance, invoiced, and paid. The data model is designed so prepaid credits and retainers can be added later without restructuring, because white-label customers will demand them.

Primary differentiator vs existing portal tools: automated GEO/AEO and SEO reporting baked into the client portal, pulling live data from Ahrefs and analytics APIs. No off-the-shelf portal does this well, and it is exactly VSUALWEB's positioning.

---

## 2. Product Definition

### Two products in one codebase

1. **Agency Console** (admin): the operational brain. CRM, catalog, quotes, projects, tasks, time, billing, reports, settings.
2. **Client Portal** (per-client login): scoped view of everything relevant to that client company. Requests in, transparency out.

### The white-label requirement shapes three early decisions

- **Multi-tenancy from day one.** Even while only VSUALWEB uses it, the schema treats the agency as a tenant. Retrofitting tenancy is the most expensive migration in SaaS. Build it now, feel no pain later.
- **Native task engine.** No hard dependency on Linear or any third-party PM tool. External PM tools become optional connectors, which is a feature to sell, not infrastructure to depend on.
- **Theming and domain mapping.** Logo, colors, and custom domain per tenant. Cheap to scaffold now (CSS variables plus a tenant settings table), painful to bolt on later.

---

## 3. Competitive Landscape

| Product | Model | Strength | Gap you exploit |
|---|---|---|---|
| SPP.co | Client portal for productized services | Ordering flow | Weak hourly billing, no real analytics reporting |
| Copilot | Modern client portal | Polish, apps ecosystem | Generic, no agency-specific reporting, US-centric billing |
| SuiteDash | All-in-one | Feature breadth | Dated UX, overwhelming |
| ManyRequests | Agency portal | Requests workflow | Thin reporting, no EU/Greek invoicing story |
| Moxie | Freelancer ops | Solo-friendly | Not built for agency + client company structure |

Openings: (a) automated SEO/GEO/AEO reporting inside the portal, (b) EU-first billing with local e-invoicing compliance (myDATA in Greece, similar mandates arriving across the EU), (c) hourly postpaid billing done properly with client-visible approved hours.

---

## 4. Tenancy & Roles Model

```
Tenant (Agency)
 ├── Agency Users: owner, admin, member, contractor (scoped)
 ├── Client Companies
 │    └── Client Users: owner (sees billing), member (tasks/reports only)
 ├── Catalog, Projects, Invoices, Reports ... (all rows carry tenant_id)
```

- Every table carries `tenant_id`. Enforced with Postgres Row Level Security in Supabase, so isolation is a database guarantee, not an application convention.
- A client user belongs to exactly one client company within a tenant. An agency user belongs to the tenant.
- Contractor role: sees assigned tasks and logs time, never sees rates, balances, or other clients.
- Client roles: **billing owner** (everything) and **collaborator** (tasks, requests, files, reports; no financials).

---

## 5. Module Breakdown

Thirteen modules. Phase column refers to the roadmap in section 9.

| # | Module | Purpose | Phase |
|---|---|---|---|
| 1 | Clients (CRM-lite) | Companies, contacts, notes, status (lead/active/churned) | 1 |
| 2 | Service Catalog | Services, packages, hourly rates, fixed prices, recurring plans (eCare) | 1 |
| 3 | Requests | Client-submitted requests with forms per service type; triage into tasks | 1 |
| 4 | Projects & Tasks | Native task engine: status, assignee, checklist, comments, attachments | 1 |
| 5 | Time Tracking | Timer + manual entries, linked to tasks, billable flag, rate snapshot | 1 |
| 6 | Billing & Balance | Uninvoiced balance, invoice generation, myDATA transmission via provider, payments | 1 |
| 7 | Quotes & Offers | Quote builder from catalog, client accepts in portal, converts to project | 2 |
| 8 | Contracts | Templates, click-to-accept with audit trail, stored PDFs; e-signature provider later | 2 |
| 9 | Reports & Analytics | Automated SEO/GEO/AEO client reports (Ahrefs API, GA4/Plausible), agency dashboards | 2 |
| 10 | Files & Deliverables | Per-project file space, versioned, access rules on churn | 2 |
| 11 | Notifications & Comms | In-app + email notifications, task comments as the communication spine | 1 (basic) / 2 (full) |
| 12 | Audit Log | Immutable log of financially or legally relevant events | 1 |
| 13 | White-label & Tenant Admin | Tenant onboarding, theming, custom domains, plan limits, integrations (Linear connector) | 3 |

### Module notes worth reading

**Requests vs Tasks (3, 4).** A request is client-authored and unscoped. A task is agency-owned work. The triage step between them is where you scope, estimate, and either attach to an existing budget or trigger a quote. Keeping them as separate objects prevents clients from injecting work directly into your board.

**Time Tracking (5).** Every time entry snapshots the applicable hourly rate at creation. Rate changes never rewrite history. Entries have states: `draft → submitted → approved → invoiced`. Decide per client whether approval is by you only or visible-to-client before invoicing; the schema supports both via a client setting.

**Billing (6).** See section 7 for the full flow. Invoicing is native to the platform with two creation modes. **Mode A (native create):** full in-platform invoice builder with own numbering series, line items assembled from approved time entries and delivered services, VAT handling, branded PDF generation. Legal issuance for Greek B2B invoices runs through a headless certified-provider API (the "compliance rail"): the platform sends structured invoice data, receives MARK and UID, stores them, done. No external UI is ever used; the provider is invisible plumbing, swappable per country for white-label tenants. **Mode B (upload):** an invoice issued anywhere else (including AADE's free timologio) is uploaded as PDF plus metadata (number, date, amounts, MARK) and linked to the client balance, flipping the underlying items to invoiced. Mode B is also the migration path for historical invoices.

Regulatory context driving this design: Greece's B2B e-invoicing mandate applies to large businesses from 2 March 2026 and to all remaining businesses (VSUALWEB included) from 1 October 2026, with a transitional period to 31 December 2026. Compliant issuance channels are certified providers or AADE's free tools only; direct self-built myDATA transmission is not a valid issuance channel for in-scope B2B invoices, and non-compliant issuance is penalized as non-issuance (50% of the VAT due). Verify provider certification status and any rule changes at contract time.

**Reports (9).** This is the differentiator, so scope it deliberately: v1 is a monthly auto-generated report per client with rankings, AI-visibility mentions, traffic, and work summary (hours by category, tasks completed). Work summary comes free from modules 4 and 5, which is a report no pure SEO tool can produce.

---

## 6. Data Model (Core Entities)

All tables include `id`, `tenant_id`, `created_at`, `updated_at`. Names indicative.

```
tenants            name, slug, branding jsonb, custom_domain, plan, settings jsonb
users              auth_id, email, name, kind (agency|client)
agency_members     user_id, role (owner|admin|member|contractor)
client_companies   name, vat_number, billing_email, address, status, settings jsonb
client_members     user_id, client_company_id, role (owner|collaborator)

services           name, description, pricing_type (hourly|fixed|recurring), price, unit
packages           name, description, price, interval (one_off|monthly|yearly)
package_items      package_id, service_id, quantity

requests           client_company_id, service_id?, title, body, form_data jsonb,
                   status (new|triaged|quoted|converted|declined), created_by
projects           client_company_id, name, status, budget_type (hourly|fixed),
                   budget_amount?, quote_id?
tasks              project_id, title, description, status (todo|in_progress|review|
                   waiting_client|done), assignee_id, position, request_id?
task_comments      task_id, author_id, body, visibility (all|agency_only)
attachments        parent_type, parent_id, storage_path, filename, size, version

time_entries       task_id, member_id, started_at, duration_min, billable,
                   rate_snapshot, note, state (draft|submitted|approved|invoiced)

quotes             client_company_id, status (draft|sent|accepted|declined|expired),
                   valid_until, accepted_at, accepted_by, totals jsonb
quote_lines        quote_id, service_id?, description, qty, unit_price

contracts          client_company_id, template_id, status, accepted_at, accepted_by,
                   ip_address, pdf_path
invoices           client_company_id, number, series, status (draft|issued|paid|
                   overdue|void), source (native|uploaded), transmission_ref,
                   mydata_mark, mydata_uid, issued_at, due_at, subtotal, vat,
                   total, pdf_path
invoice_lines      invoice_id, source_type (time|service|package|expense),
                   source_id?, description, qty, unit_price
payments           invoice_id, method (card|transfer), provider_ref, amount, paid_at

reports            client_company_id, period, kind (seo|geo_aeo|work_summary|combined),
                   data jsonb, pdf_path, published_at
audit_events       actor_id, action, entity_type, entity_id, diff jsonb, ip
notifications      user_id, kind, payload jsonb, read_at
```

Relationships worth stating: `client balance` is not a stored number. It is computed: approved uninvoiced time entries + delivered uninvoiced service items, minus nothing (postpaid). Computed balances cannot drift; stored balances always do.

---

## 7. Billing Flow (Postpaid, Greece-compliant)

1. Work happens. Time entries logged against tasks (hourly) or service items marked delivered (fixed).
2. You review and approve entries. Client sees approved, uninvoiced work as **current balance** in the portal, itemized. No surprises at invoice time.
3. On your cadence (monthly, or per-project milestone), the platform assembles a **draft invoice** from all approved uninvoiced items.
4. Issuance, one of two modes:
   - **Native:** you confirm the draft. The platform sends structured invoice data through the certified-provider compliance rail, receives MARK and UID, generates the branded PDF, stores everything, notifies the client. You never leave the platform.
   - **Upload:** you issued the invoice externally (e.g. timologio). You upload the PDF and enter number, date, amounts, and MARK; the platform links it to the balance and marks the source items invoiced.
5. Client pays: card (Stripe or Viva Wallet payment link on the invoice) or bank transfer (you mark paid manually, or reconcile via webhook).
6. Items flip to `invoiced`, balance resets, audit log records everything.

Later additions the schema already tolerates: prepaid hour packs (a credits ledger table), retainers (recurring invoice generator + rollover rules), and multi-currency for white-label tenants outside Greece.

---

## 8. Technical Architecture

Mapped to your existing stack. Nothing exotic.

| Layer | Choice | Notes |
|---|---|---|
| App | Next.js (App Router) on Vercel | One app, route groups for `/admin` and `/portal`; middleware resolves tenant from domain |
| Database | Supabase Postgres | RLS for tenant + role isolation; RLS policies are the security model |
| Auth | Supabase Auth | Email + OAuth; `kind` claim routes users to console or portal |
| Storage | Supabase Storage | Files, contract PDFs, report PDFs; signed URLs |
| Jobs | Vercel Cron + QStash (or Supabase cron + edge functions) | Report generation, invoice reminders, Ahrefs pulls |
| Email | Resend | Transactional + notification digests |
| Payments | Stripe (global) + Viva Wallet (Greek cards, lower fees) | Payment links per invoice; webhooks reconcile |
| Compliance rail | Certified provider, headless API only (evaluate Epsilon Digital, Impact, SoftOne, EDICOM) | Invisible transmission layer behind the native invoice builder; adapter pattern per country for white-label |
| Reports data | Ahrefs API, GA4 API (or Plausible), your AI-visibility tooling | Cached in `reports.data` jsonb |
| Monitoring | Sentry + Vercel analytics | Already in your toolbelt |

Architecture principles:

- **RLS is the product's security.** Every policy written and tested before UI. A white-label multi-tenant product with app-layer-only isolation is a breach waiting to happen.
- **Single deployment, many tenants.** No per-tenant infrastructure. Custom domains via Vercel domain API.
- **Financial records are append-only.** Invoices and audit events never update in place; corrections are new records (credit notes).

---

## 9. Roadmap

### Phase 1: Internal MVP (target 6-8 weeks of focused build)

Goal: VSUALWEB runs real clients on it. Scope: modules 1-6 + basic notifications + audit log. Invoicing ships **upload-mode first** (Mode B): compliant from day one via timologio, trivial to build, and it exercises the entire balance and payment loop. The native builder with the compliance rail (Mode A) is its own milestone at the end of Phase 1 or start of Phase 2, timed against the 1 October 2026 mandate date for VSUALWEB itself. Success criteria: at least three real clients logging in, one full billing cycle (work → approved balance → invoice → payment) completed end-to-end, every invoice for those clients tracked in the platform.

Deliberately excluded from Phase 1: quotes, contracts, automated reports, theming. Manual workarounds exist for all of them and none block the billing loop, which is the loop that proves the product.

### Phase 2: Depth (weeks 9-16)

Quotes and offers with in-portal acceptance. Contracts with click-to-accept + audit trail. The automated GEO/AEO report engine (the differentiator). Files module. Full notification system. Client-visible hour approval option.

Success criteria: a new client can go from quote → acceptance → contract → project → first report without leaving the platform.

### Phase 3: White-label launch

Tenant self-onboarding, theming, custom domains, plan limits and Stripe billing for tenants themselves, Linear connector as the first integration, retainer and prepaid billing modes, English + Greek localization. Pricing hypothesis to validate: 3 tiers, roughly 49 / 99 / 199 EUR per month per agency, seat-unlimited, gated by client count and features. Validate against SPP/Copilot pricing before committing.

Gate: do not start Phase 3 until Phase 2 has run for at least one full quarter with VSUALWEB clients. The product argument to future customers is "we run our agency on this."

---

## 10. Risks & Mitigations

| Risk | Mitigation |
|---|---|
| Build consumes unbillable months | Phase 1 is ruthlessly scoped to the billing loop; everything else stays manual |
| E-invoicing mandate deadline (1 Oct 2026 for VSUALWEB) | Upload mode + timologio keeps you compliant regardless of build progress; native rail is an enhancement, never a compliance blocker |
| Certified provider API quality varies | Run a 2-day API spike on the top two candidates before schema freeze; the adapter interface isolates the choice |
| You are the only builder and also the only operator | Timebox weekly build hours; the platform must save you admin time by Phase 1 end or scope is wrong |
| White-label ambition bloats MVP | Tenancy in the schema, but zero tenant-facing features until Phase 3 |
| Report engine scope creep | v1 report is one fixed template, monthly, no customization |
| Competitors move into GEO/AEO reporting | Speed + credibility: you sell it as a practitioner, they sell it as a feature |

---

## 11. Open Decisions (small, none block Phase 1 start)

1. Certified transmission provider selection: shortlist by headless API quality, per-invoice pricing, and sandbox availability (2-day spike, before invoice schema freeze).
2. Viva Wallet vs Stripe-only at launch (fee comparison on your actual volume).
3. GA4 vs recommending Plausible to clients for cleaner report data.
4. Platform name and domain: decide before Phase 3, irrelevant before.
5. Client-visible hour approval: on or off by default for VSUALWEB clients.
