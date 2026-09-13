---
name: personal-intake
description: Weekly personal loop. Scans INBOX, categorizes, merges duplicates, routes travel intent. Runs Monday 09:00.
---

# personal-intake

> Companion: `personal-AGENTS.md`, `personal/TRAVEL.md`, `personal/CLIPNO.md`.
> Schedule: every Monday 09:00, fresh session.

## Eval ("τέλειωσε")
- [ ] `INBOX/` σκαναρισμένο
- [ ] Items ταξινομημένα σε κατηγορίες
- [ ] Travel intent routed σε `travel/` (όχι στο root)
- [ ] Διπλότυπα συγχωνευμένα
- [ ] `traces/YYYY-MM-DD-intake.md` γραμμένο
- [ ] Τίποτα δεν διαγράφηκε — μόνο μετακίνηση σε `archive/`

## 9-part schema

1. **Target:** το inbox είναι καθαρό, τα items έχουν κατηγορία
2. **Current:** σαρώνει `INBOX/`
3. **Gap:** items χωρίς κατηγορία, διπλότυπα, travel intent όχι routed
4. **Act:**
   - Travel intent (προορισμός, tip, hack, place) → `INBOX/travel/` ανά `TRAVEL.md`
   - Video/Reel/TikTok/Short save → Clipno app → Notion archive. Όχι εδώ.
   - Links, ideas, hacks, screenshots → αντίστοιχοι υποφάκελοι `INBOX/`
   - Merge duplicates, μετακίνηση stale σε `archive/`
5. **Trace:** `traces/YYYY-MM-DD-intake.md`
6. **Learn:** ποια κατηγορία γεμίζει πιο πολύ
7. **Stop:** αν το inbox είναι άδειο μετά το routing
8. **Source:** `INBOX/`, `CAPTURE.md`
9. **Policy:** δεν διαγράφει τίποτα — μετακινεί σε `archive/`. Δεν αγγίζει studio files.

## Travel routing

| Signal | Destination |
|---|---|
| "Θέλω να πάω" / wishlist | `travel/_wishlist/` |
| Tip / hack / place από social | `travel/_research/` |
| Ξεκίνησε οργάνωση ταξιδιού | `travel/active/YYYY-MM-DD_destination/` |
| Ταξίδι τέλειωσε | `travel/done/` |

Τίποτα δεν μένει στο root του `travel/`. Κάθε item έχει κατηγορία.

## Caps
- 1 run/εβδομάδα
- Δεν αγγίζει studio files
- Δεν στέλνει report — μόνο trace
