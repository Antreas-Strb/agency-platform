# Personal Workspace — AGENTS.md

> Ξεχωριστό από το studio. Δεν μοιράζεται GBrain, skills, ή traces με το `_studio/`.
> Runtime: Hermes profile `personal` (ή Claude Code / Cursor με αυτό το AGENTS.md).
> Σκοπός: να ξέρεις τι σου γίνεται — έξοδα, υγεία, ιδέες, projects εκτός agency, αποφάσεις.

---

## 1. Διαχωρισμός

| Layer | Studio | Personal |
|---|---|---|
| Φάκελος | `~/Projects/_studio/` | `~/Projects/_personal/` |
| GBrain namespace | `studio` | `personal` |
| Skills | `studio-*` | `personal-*` |
| Traces | `_studio/traces/` | `_personal/traces/` |
| Discord | `#studio`, `#alerts` | `#personal` (ή private channel) |
| Clients | 20 projects | κανένας — μόνο εσύ |

**Κανόνας:** τίποτα προσωπικό δεν μπαίνει στο studio brain. Τίποτα studio δεν μπαίνει στο personal.

---

## 2. Δομή φακέλου

```
~/Projects/_personal/
├── AGENTS.md              ← αυτό το αρχείο
├── INBOX/                 ← raw capture, χωρίς δομή
│   ├── links/
│   ├── screenshots/
│   ├── voice-notes/       ← WhisperFlow transcripts
│   └── ideas/
├── CAPTURE.md             ← ημερήσιο log, newest first
├── DECISIONS.md           ← προσωπικές αποφάσεις, newest first
├── traces/                ← learning store για personal loops
├── skills/
│   ├── personal-resolve/
│   │   └── SKILL.md
│   └── personal-intake/
│       └── SKILL.md
└── reviews/               ← εβδομαδιαία σύνοψη
```

---

## 3. Daily capture (πάντα ενεργό)

Ό,τι σκέφτεσαι, το ρίχνεις στο `INBOX/` ή στο `CAPTURE.md` — χωρίς δομή, χωρίς φίλτρο.

- Link → `INBOX/links/`
- Screenshot / ιδέα → `INBOX/screenshots/` ή `INBOX/ideas/`
- Φωνή → `INBOX/voice-notes/` (WhisperFlow transcript)
- Γρήγορη σκέψη → απευθείας στο `CAPTURE.md` με ημερομηνία

**Κανόνας:** το inbox δεν οργανώνεται χειροκίνητα. Το οργανώνει ο `personal-intake`.

---

## 4. Loops

### personal-resolve (κάθε βράδυ, 22:00)

9-part loop:

1. **Target:** ξέρω τι μου γίνεται σήμερα και τι ανοίγει αύριο
2. **Current:** διαβάζει `CAPTURE.md` + `INBOX/`
3. **Gap:** τι δεν ταξινομήθηκε, τι ξεχάστηκε
4. **Act:** μετακινεί items από inbox σε κατηγορίες, ενημερώνει `DECISIONS.md`
5. **Trace:** γράφει `traces/YYYY-MM-DD-resolve.md`
6. **Learn:** σημειώνει patterns ("κάθε Τρίτη σκέφτομαι X")
7. **Stop/escalate:** σταματά αν δεν υπάρχει τίποτα νέο
8. **Source:** `CAPTURE.md`, `INBOX/`, GBrain `personal`
9. **Policy:** δεν στέλνει τίποτα σε πελάτη — είναι προσωπικό

Output: σύντομο summary στο Discord `#personal` (ή private). Όχι report, όχι λίστα 20 πραγμάτων.

### personal-intake (κάθε Δευτέρα 09:00)

1. **Target:** το inbox είναι καθαρό, τα items έχουν κατηγορία
2. **Current:** σαρώνει `INBOX/`
3. **Gap:** items χωρίς κατηγορία, διπλότυπα
4. **Act:** ταξινομεί, συγχωνεύει, αρχειοθετεί
5. **Trace:** `traces/YYYY-MM-DD-intake.md`
6. **Learn:** ποια κατηγορία γεμίζει πιο πολύ
7. **Stop:** αν το inbox είναι άδειο
8. **Source:** `INBOX/`
9. **Policy:** δεν διαγράφει τίποτα — μετακινεί σε `archive/`

---

## 5. GBrain — namespace `personal`

Μόνο patterns και γεγονότα, όχι operational state:

- Άνθρωποι (φίλοι, συνεργάτες, οικογένεια)
- Εταιρείες / projects εκτός agency
- Αποφάσεις με reasoning
- Υγεία / ρουτίνες (αν θες)
- Ιδέες που αξίζει να θυμάσαι

**Όχι:** ημερήσιο log, inbox items, traces — αυτά είναι αρχεία.

---

## 6. Κανόνες

- **Ένα workspace, ένα brain.** Δεν μπλέκεις personal με studio.
- **Capture > organize.** Ρίχνεις πρώτα, οργανώνει ο agent μετά.
- **Κανένα skill για προσωπικά.** Μόνο `personal-resolve` και `personal-intake`. Όχι studio skills.
- **Privacy.** Το personal workspace δεν μπαίνει σε public repo. Μόνο private.
- **Απλότητα.** Αν κάτι δεν το χρησιμοποιείς 2 εβδομάδες, το Curator το αρχειοθετεί.

---

## 7. Εγκατάσταση

```bash
mkdir -p ~/Projects/_personal/{INBOX/{links,screenshots,voice-notes,ideas},traces,skills,reviews,archive}
cp personal/personal-AGENTS.md ~/Projects/_personal/AGENTS.md
# Symlink στο Hermes personal profile
ln -s ~/Projects/_personal/AGENTS.md ~/.hermes/profiles/personal/AGENTS.md
```

Crons:
- `0 22 * * *` → `personal-resolve`
- `0 9 * * 1` → `personal-intake`
