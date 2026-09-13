---
name: personal-resolve
description: Nightly personal loop. Organizes CAPTURE.md and INBOX, flags overdue travel bookings, writes trace. Runs at 22:00.
---

# personal-resolve

> Companion: `personal-AGENTS.md`, `personal/TRAVEL.md`.
> Schedule: every night 22:00, fresh session.

## Eval ("τέλειωσε")
- [ ] `CAPTURE.md` ενημερωμένο με σημερινά items
- [ ] `INBOX/` αδειασμένο ή ταξινομημένο
- [ ] `travel/active/` ελεγμένο — overdue bookings flagged
- [ ] `DECISIONS.md` ενημερωμένο αν υπήρξε απόφαση
- [ ] `traces/YYYY-MM-DD-resolve.md` γραμμένο
- [ ] Discord `#personal` πήρε σύντομο summary (≤5 γραμμές)

## 9-part schema

1. **Target:** ξέρω τι μου γίνεται σήμερα και τι ανοίγει αύριο
2. **Current:** διαβάζει `CAPTURE.md` + `INBOX/` + `travel/active/`
3. **Gap:** τι δεν ταξινομήθηκε, τι ξεχάστηκε, τι travel booking λείπει
4. **Act:** μετακινεί items, ενημερώνει `DECISIONS.md`, flags overdue flights/stays
5. **Trace:** `traces/YYYY-MM-DD-resolve.md`
6. **Learn:** patterns ("κάθε Τρίτη σκέφτομαι X")
7. **Stop/escalate:** σταματά αν δεν υπάρχει τίποτα νέο
8. **Source:** `CAPTURE.md`, `INBOX/`, `travel/`, GBrain `personal`
9. **Policy:** δεν στέλνει τίποτα σε πελάτη — είναι προσωπικό

## Travel check
- Κάθε `active/` trip έχει `budget.md` και `flights.md` / `stays.md`
- Αν booking status = researching > 7 μέρες → flag στο summary
- Μετά το ταξίδι → μετακίνηση σε `travel/done/`

## Caps
- 1 run/ημέρα
- Max 5 items στο Discord summary
- Δεν αγγίζει studio files
