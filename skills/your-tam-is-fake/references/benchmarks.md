# Benchmarks

> **Re-verify before quoting.** Every figure here decays. Search for the current year's data before stating any of it with confidence, and always attach the year and the sample size. A benchmark quoted without a year is a T3 claim regardless of where it came from.

## B2B SaaS efficiency — 2025

Source: Benchmarkit 2025 B2B SaaS Performance Metrics, n≈342 companies [T2, visible methodology].

| Metric | 2025 median | Good | Notes |
|--------|-------------|------|-------|
| CAC payback | **16 months** (from 18 in 2024) | < 12 months | Under 18 is the broadly accepted target |
| Magic number | **1.37** | > 1.0 | Crossed 1.0 for the first time in several years |
| Net revenue retention | **101%** | 104–106% | Top performers compound from the existing base |

Best-in-class NRR for mature software sits at **120–130%** [T2] — the same accounts worth 20–30% more a year later with no new logos.

### CAC payback by ACV band — the important cut

| ACV | Median payback |
|-----|----------------|
| ≤ $5K | **9 months** |
| $10K–$50K | often *worse* than the $50K–$100K band |
| ≥ $100K | **24 months** |

**Always compare within the band.** An enterprise business at 22-month payback is normal; an SMB business at 22 months is broken. Using the all-company median tells both of them the wrong thing.

The $10K–$50K band being harder than $50K–$100K is not a one-year anomaly — it is the awkward middle, where deals need human touch but do not fund a proper enterprise motion.

## Sales capacity and ramp [T2]

| Segment | Ramp to productivity | Productive ratio |
|---|---|---|
| SMB | 5–6 months | ~70% |
| Commercial | 7–9 months | ~67% |
| Enterprise | 10–12 months | ~63% |
| Strategic | 13–18 months | ~60% |

- **Quota attainment:** ~70% median · 80%+ top quartile · under 55% bottom quartile.
- **Attrition:** 25–30% annually is normal. A capacity model without it is fiction.
- **Illustrative consequence:** a 40-rep team at ~5.7-month average ramp and 30% attrition is **~22–25 productive quotas**, not 40 [T2]. This is the most common source of a missed annual plan.
- **Pipeline coverage:** 3–4x quota in-period. Below 3x, the quarter is already lost.
- **Fully loaded rep cost:** $150K–$300K depending on segment and geography [ASSUMPTION, rule of thumb].

## Buying committee and cycle length [T2]

- **Committee size:** 5–16 people across up to 4 functions; median ~**11 stakeholders** for $100K+ technology purchases (Gartner). Forrester puts the average nearer 13.
- **CFO gating** common above ~$50K ACV.
- **Security questionnaires arrive ~47 days earlier** in the cycle than in 2021.
- **77% of buyers** describe their last purchase as very complex or difficult.
- **Independent research:** 4–5 pieces consumed before contacting sales.

| Deal size | Cycle |
|---|---|
| Mid-market / enterprise median | **4–5 months** (up 20–30% vs 2021) |
| Enterprise, general | 6 months – 2 years |
| Above $500K ACV | **12–18 months** |

Crude planning floor: **~1 month per $10K of ACV**, plus a quarter if security review is involved and there is no existing SOC 2 [ASSUMPTION].

## AI-era discovery [T2, 2025–2026 vintage — most volatile data in this file]

- **~94%** of B2B buyers used generative AI in their most recent purchase process.
- **Shortlists ~2.5 vendors**, down from ~3.2.
- **~83% zero-click rate** when AI overviews appear.
- **AI chat shapes ~54%** of shortlists.
- Attribution gap: **90 percentage points** between software-reported and self-reported attribution for web search in one 620-conversion, $21.5M ARR study; **99%** of self-reported answers differed from last-touch [T2, Refine Labs — interested party, take the direction not the decimals].

See `ai-era-gtm.md`.

## Product-market fit thresholds

- **Sean Ellis test:** ≥**40%** "very disappointed" indicates PMF. Requires n≥40 activated users, and must be segmented to be useful.
- **Superhuman reference points:** 22% → 58% in four months by narrowing to one segment [T2].
- **Free-to-paid conversion:** low single digits for open free tiers; higher for reverse-trial or gated. Above 10% on a genuinely open tier, check the definition being used.

See `pmf.md`.

## Category economics

- The category king captures roughly **76% of the category's market cap** [T2, Play Bigger]. Survivorship-heavy — the companies that ran out of runway creating a category are not in the dataset.
- New logo costs **3–5x** an expansion, and expansion closes in a fraction of the time [T2].

## Rules of thumb (directional — label as ASSUMPTION)

- **Gross margin:** 75–85% conventional software. Materially lower with meaningful inference cost.
- **Logo churn vs revenue churn:** SMB churns logos, enterprise churns revenue via contraction. Ask which is being reported — the flattering one gets reported.
- **Value capture:** above ~30% of quantified customer value, deals stall in procurement even with obvious ROI.

## What to search for at runtime

- `<current year> SaaS benchmarks CAC payback NRR magic number`
- `<current year> sales capacity ramp quota attainment benchmarks`
- `<category> pricing` — actual pricing pages, dated
- `<competitor> ARR` / `revenue` — disclosed milestones, filings
- `<category> shut down` / `post-mortem` — the graveyard
- `<current year> B2B buying committee size sales cycle length`
- Statistics-agency firm counts for the ICP population (see `data-sources.md`)

## The trap

A benchmark is a distribution, not a target. Being at the median of a set of companies, most of which will not succeed, is not evidence of health. Use benchmarks to detect **structural breakage** — a 40-month payback at $8K ACV means the motion cannot work — not to grade performance.
