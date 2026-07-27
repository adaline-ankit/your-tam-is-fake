# Benchmarks

> **Re-verify before quoting.** Every figure here decays. Search for the current year's data before stating any of it with confidence, and always attach the year and the sample size. A benchmark quoted without a year is a T3 claim regardless of where it came from.

## B2B SaaS efficiency — 2025 reference points

Source: Benchmarkit 2025 B2B SaaS Performance Metrics, n≈342 companies [T2, visible methodology].

| Metric | 2025 median | Good | Notes |
|--------|-------------|------|-------|
| CAC payback | **16 months** (from 18 in 2024) | < 12 months | Under 18 is the broadly accepted target |
| Magic number | **1.37** | > 1.0 | Crossed 1.0 for the first time in several years |
| Net revenue retention | **101%** | 104–106% | Top performers compound from the existing base |

### CAC payback by ACV band — the important cut

| ACV | Median payback |
|-----|----------------|
| ≤ $5K | **9 months** |
| $10K–$50K | often *worse* than the $50K–$100K band |
| ≥ $100K | **24 months** |

**Always compare within the band.** An enterprise business at 22-month payback is normal; an SMB business at 22 months is broken. Using the all-company median tells both of them the wrong thing.

The $10K–$50K band being harder than $50K–$100K is not a one-year anomaly — it is the awkward middle, where deals need human touch but do not fund a proper enterprise motion.

## Rules of thumb (directional, unsourced, label as such)

Treat everything below as `[ASSUMPTION, industry rule of thumb]` — useful for sanity-checking a model, never for asserting a fact.

- **Gross margin:** 75–85% for conventional software. Materially lower with meaningful inference cost.
- **Pipeline coverage:** 3–4x quota for a functioning sales team. Below 3x, the quarter is already lost.
- **Rep capacity:** a fully loaded rep costs $150K–$300K depending on market and seniority. Divide expected annual bookings by that before believing any hiring plan.
- **Rep ramp:** 3–6 months to first quota-carrying productivity. Longer at high ACV. Hiring plans that assume day-one productivity are hiring plans that miss.
- **Enterprise sales cycle:** roughly 1 month per $10K of ACV as a crude floor, plus a quarter if security review is involved and there is no existing SOC 2.
- **Free-to-paid conversion:** low single digits for open free tiers; higher for reverse-trial and gated free tiers. Anything above 10% on a genuinely open free tier deserves a second look at the definition being used.
- **Logo churn vs revenue churn:** SMB churns logos, enterprise churns revenue via contraction. Ask which one is being reported, because the flattering one gets reported.

## What to search for at runtime

- `<current year> SaaS benchmarks CAC payback NRR magic number` — annual practitioner reports
- `<category> pricing` — pull actual pricing pages, note the date
- `<competitor> ARR` / `<competitor> revenue` — disclosed milestones, filings
- `<category> shut down` / `post-mortem` — the graveyard
- Statistics-agency firm counts for the ICP population
- Ad-audience estimators for job-title population sizing

## The trap

A benchmark is a distribution, not a target. Being at the median of a set of companies, most of which will not succeed, is not evidence of health. Use benchmarks to detect **structural breakage** — a 40-month payback at $8K ACV means the motion cannot work — not to grade performance.
