# Clipno — Personal Capture App

> Tool-first clipper. Σώζεις Reel/TikTok/Short/web page → βγάζει **tool cards** → Notion archive → εβδομαδιαίο Keep/Drop.
> **Unit of value:** το tool card, όχι το βίντεο.
>
> Specs: [speckit](https://github.com/Antreas-Strb/speckit) · Implementation: [clipno-clone](https://github.com/Antreas-Strb/clipno-clone)
> Notion: child page του Personal Workspace.

---

## 1. Τι λύνει

Οι άνθρωποι σώζουν Reels/TikToks/Shorts επειδή ο creator έδειξε εργαλεία. Σήμερα αυτά πεθαίνουν στο camera roll ή σε Clipno-style clippers που αποθηκεύουν το post, όχι το προϊόν.

Αυτό το app εξάγει **tool cards** (όνομα, τι κάνει, official URL, pricing hint, evidence, timestamp), τα αρχειοθετεί σε Notion, και τρέχει εβδομαδιαίο Keep/Drop ώστε το archive να κρατάει μόνο ό,τι θες.

---

## 2. Capture surfaces

| Surface | Πώς |
|---|---|
| iOS share sheet | URL ή video file → `/v1/saves` |
| Android share target | Ίδιο pipeline |
| Chrome/Edge extension (MV3) | Toolbar → side panel, Alt+S, context menu |
| Web / PWA | Ίδιο API |

**Κανόνας:** ποτέ DM σε creator. Ποτέ authenticated social APIs.

---

## 3. Tool Intelligence pipeline

```
URL/file → Extractor → Media worker (STT + 2fps keyframes + OCR + dHash)
         → Fusion LLM → official URL resolve → Notion upsert
```

- Πολλά tools ανά clip = default.
- Confidence < 0.55 → Uncertain list, όχι drop.
- CDN block → save caption + thumb, ζήτα file attach.
- Quality gate: 50 labeled fixtures, recall ≥80%, precision ≥85%.

---

## 4. App IA

```
Inbox   — swipe Keep/Drop (current recap window)
Files   — 16 categories + user folders + trips
Recap   — week/month, counts, leftover CTA
Tools   — extracted catalog
Settings— provider, BYOK, cadence, Notion, plan
```

Notion DBs: **Clips** ↔ **Tools** (many-to-many).

---

## 5. Pricing (v1)

| Tier | Price | Saves | Analysis jobs | Recap |
|---|---|---|---|---|
| Free | $0 | 40/mo | 8 | Weekly in-app |
| Plus | $7.99/mo · $69/yr | Unlimited | 80 | Week/month + email |
| Pro | $14.99/mo · $119/yr | Unlimited | 300 | Both + Notion page |

Meter = **analysis jobs**, όχι saves. BYOK μετράει job.

---

## 6. Stack

Hono on CF Workers (EU) · Neon Postgres · Notion · OpenAI/Anthropic/xAI + BYOK · SwiftUI/Kotlin/Next.js · RevenueCat + Stripe · Resend.

---

## 7. Phases

1. Spine + extractors + Tool Intelligence MVP (iOS)
2. Files + Preview + Swipe Inbox *(habit loop — πριν billing)*
3. Providers + BYOK
4. Android + web + extension
5. Recap + billing SKUs

---

## 8. Σχέση με Personal Workspace

- Video-saves → app → Notion DBs. **Όχι** στο `_personal/` φάκελο.
- `personal-intake` / `personal-resolve` δεν το αγγίζουν.
- Όλα τα άλλα (links, ιδέες, hacks, places) → `INBOX/links/`.
- Δεν διπλο-αρχειοθετείται τίποτα.

---

## 9. Specs (πηγή αλήθειας)

| File | Τι |
|---|---|
| [PRD.md](https://github.com/Antreas-Strb/speckit/blob/main/PRD.md) | Product requirements |
| [spec.md](https://github.com/Antreas-Strb/speckit/blob/main/spec.md) | User stories |
| [plan.md](https://github.com/Antreas-Strb/speckit/blob/main/plan.md) | Stack + pricing |
| [tasks.md](https://github.com/Antreas-Strb/speckit/blob/main/tasks.md) | Build checklist |
| [research/](https://github.com/Antreas-Strb/speckit/tree/main/research) | Competitive + tech research |
| [clipno-clone](https://github.com/Antreas-Strb/clipno-clone) | Implementation repo |

---

## 10. Open

- Final product name + store copy
- Gemini ως 4ο BYOK provider ή όχι
- Freeze 16-category list
- Data residency copy για BYOK
