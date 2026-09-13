# Personal — Travel

> Ταξίδια, προορισμοί, flights, stays, itineraries.
> Ζει στο `~/Projects/_personal/INBOX/travel/` — ξεχωριστά από links/ideas.
> Companion: `personal-AGENTS.md`, `personal-intake`.

---

## 1. Δομή φακέλου

```
~/Projects/_personal/INBOX/travel/
├── _wishlist/          ← προορισμοί που θέλω να πάω (χωρίς ημερομηνία)
├── _research/          ← links, tips, hacks, places από IG/TikTok/FB/LinkedIn
├── active/             ← ταξίδι σε οργάνωση (έχει ημερομηνία)
│   └── YYYY-MM-DD_destination/
│       ├── flights.md
│       ├── stays.md
│       ├── itinerary.md
│       ├── budget.md
│       └── notes.md
├── done/               ← ολοκληρωμένα ταξίδια (archive)
└── templates/
    ├── trip.md
    ├── flight.md
    └── stay.md
```

---

## 2. Πώς μπαίνει κάτι

| Τι πιάνεις | Πού πάει |
|---|---|
| Link προορισμού / tip / hack | `_research/` ή `INBOX/links/` |
| "Θέλω να πάω εδώ" χωρίς πλάνο | `_wishlist/` |
| Ξεκίνησες οργάνωση | `active/YYYY-MM-DD_destination/` |
| Τελείωσε το ταξίδι | `done/` |

**Κανόνας:** τίποτα δεν μένει στο root του `travel/`. Κάθε item έχει κατηγορία.

---

## 3. Templates

### `templates/trip.md`
```
# Trip: {destination}
Dates: YYYY-MM-DD → YYYY-MM-DD
People: 
Budget: 
Status: planning | booked | done

## Flights
-
## Stays
-
## Itinerary
Day 1:
Day 2:
## Notes / tips
-
## Links
-
```

### `templates/flight.md`
```
# Flight
From → To:
Date:
Airline / number:
Cost:
Booking ref:
Status: researching | booked
```

### `templates/stay.md`
```
# Stay
Place:
Dates:
Cost/night:
Booking ref:
Status: researching | booked
```

---

## 4. Loops που το αγγίζουν

- **personal-intake** (Δευτέρα): μετακινεί links/ideas με travel intent στο `travel/`.
- **personal-resolve** (βράδυ): ενημερώνει `active/` trips, flags overdue bookings.
- **Clipno**: αν το travel tip ήρθε από Reel/TikTok, το app εξάγει tools/places → `travel/_research/`.

---

## 5. Κανόνες

- **Wishlist ≠ active.** Μην βάζεις ημερομηνία σε κάτι που δεν έχεις δεσμευτεί.
- **Budget πάντα.** Κάθε `active/` trip έχει `budget.md` — έστω εκτίμηση.
- **Ένα trip = ένας φάκελος.** Όχι διάσπαρτα αρχεία.
- **Αρχειοθέτηση.** Μετά το ταξίδι → `done/`, τίποτα δεν σβήνεται.
