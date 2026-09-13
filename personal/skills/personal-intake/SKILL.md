---
name: personal-intake
description: Weekly personal loop. Scans INBOX, categorizes, merges duplicates, archives. Runs Monday 09:00.
---

# personal-intake

## Eval ("τέλειωσε")
- [ ] `INBOX/` σκαναρισμένο
- [ ] Items ταξινομημένα σε κατηγορίες
- [ ] Διπλότυπα συγχωνευμένα
- [ ] `traces/YYYY-MM-DD-intake.md` γραμμένο
- [ ] Τίποτα δεν διαγράφηκε — μόνο μετακίνηση σε `archive/`

## 9-part schema

1. **Target:** το inbox είναι καθαρό, τα items έχουν κατηγορία
2. **Current:** σαρώνει `INBOX/`
3. **Gap:** items χωρίς κατηγορία, διπλότυπα
4. **Act:** ταξινομεί, συγχωνεύει, αρχειοθετεί
5. **Trace:** `traces/YYYY-MM-DD-intake.md`
6. **Learn:** ποια κατηγορία γεμίζει πιο πολύ
7. **Stop:** αν το inbox είναι άδειο
8. **Source:** `INBOX/`
9. **Policy:** δεν διαγράφει τίποτα — μετακινεί σε `archive/`

## Caps
- 1 run/εβδομάδα
- Δεν αγγίζει studio files
- Δεν στέλνει report — μόνο trace
