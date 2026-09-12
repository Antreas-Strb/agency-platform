# Stack & Boilerplates — Project Templates
**Last updated:** 2026-09-12 (v1.2 — GitHub audit)

## 1. Boilerplates (verified from repos)

| Slug | Repo | Stack | When |
|---|---|---|---|
| `nextjs-enterprise` | `Antreas-Strb/nextjs-enterprise-boilerplate` | Next.js 15 · Tailwind v4 · Radix UI · CVA · Vitest · Playwright · Storybook · pnpm · Vercel | Track B apps |
| `clinic-group` | `ClinicGroup-WebApp/clinic-group` + `clinic-group-app` + `clinic-group-translation-hub` | Vite 5 · React Router · Tailwind/shadcn · Supabase · Stripe · Resend · Sentry | Track B — Clinic Group (isolated) |
| `wp-sme` | `_TEMPLATE · SME Website` (Linear) · Hostinger | Etch · Automatic CSS · Super Page Cache · Site Kit · WS Form · Code Snippets · Secure Custom Fields · Rank Math · Cookie Compliance · Novamira · Migrate Guru · TranslatePress · WooCommerce | Track A — SME |
| `panda-mode-creative-studio` | `Antreas-Strb/panda-mode-creative-studio` | HTML · brand assets · fonts (Pogonia, Manrope) · UI kit | Brand / design system |
| `agency-platform` | `Antreas-Strb/agency-platform` | Internal studio OS | Studio itself |
| `vsualweb` | `Antreas-Strb/vsualweb` | CSS / landing | Studio site |

## 2. Routing
- «Θέλω site για ιατρείο» → `wp-sme` (εκτός Clinic Group → `clinic-group`)
- «Θέλω app με login + πληρωμές» → `nextjs-enterprise` ή `clinic-group`
- «Θέλω γρήγορο landing» → `nextjs-enterprise` (prototype)
- «Νέο project studio» → `agency-platform`
- Brand / design system → `panda-mode-creative-studio`

## 3. Rules
- Clinic Group = πάντα `clinic-group`. Ποτέ `wp-sme`, ποτέ Automatic CSS, ποτέ Hostinger.
- SME = πάντα `wp-sme`. Ποτέ `nextjs-enterprise` εκτός αν ζητηθεί ρητά.
- Tailwind = μόνο Track B. SME = Automatic CSS.
- Κανένα project ξεκινά χωρίς επιλογή από αυτόν τον κατάλογο.
