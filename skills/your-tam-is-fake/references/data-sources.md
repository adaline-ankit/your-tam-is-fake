# Data sources — where real numbers come from

Load whenever a population count, a price, a revenue figure, or a benchmark is needed. This file exists so the skill never has to guess.

**The rule:** prefer a free primary source you can name and date over a paid report that summarises it. A number a reader can go and re-derive is worth more than a number they must trust.

## Population counts (`N`)

### United States [T1]

| Source | Gives you | Best for |
|---|---|---|
| **Census SUSB** (Statistics of U.S. Businesses) | Firm and establishment counts, employment, annual payroll — **by NAICS and by enterprise employee-size class** | The single best free source for B2B `N`. Size-class breakdown is what makes it usable |
| **Census CBP** (County Business Patterns) | Establishment counts by industry and geography | Geographic segmentation, territory design |
| **BLS QCEW** | Quarterly employment and wages by industry and county | Recency; SUSB lags |
| **BLS OEWS** | Employment and wages **by occupation** by industry and metro | Sizing by job function — how many people hold the role you sell to, and what they cost. Essential for spend-displacement sizing |
| **SEC EDGAR full-text search** | Filings, revenue, segment disclosures, risk factors | Public-company counts, competitor revenue, and — underused — competitors naming *each other* in risk factors |

`N` is almost always an intersection: NAICS band × employee-size class × geography × a technographic or role filter. Build it as an explicit chain so each link can be challenged separately.

### Elsewhere

- **Eurostat SBS** (Structural Business Statistics) — EU firm counts by NACE and size class. NACE ≈ NAICS but not identical; do not map them casually.
- **UK ONS / Companies House** — firm counts and full company filings, free.
- **National statistics offices** — most publish an SBS-equivalent. Search `<country> business statistics enterprise size class`.

### Regulated and licensed populations [T1]

Frequently the cleanest `N` available, and consistently overlooked. Regulators publish exact counts because they have to: broker-dealers, banks, hospitals, clinics, pharmacies, insurers, licensed contractors, schools, airlines, labs, carriers. When your ICP is a regulated entity, **the count is not an estimate** — it is a registry, and it is usually downloadable.

### Role and audience populations [T2]

Ad-platform audience estimators return live counts for "job title X at companies of size Y in geography Z." Directionally strong, self-reported, biased toward the platform's active users. Perfectly good as a `T2` cross-check on a `T1`-derived count; not a substitute for one.

### Technographics [T2]

Public integration directories and marketplace listings, technology-detection scans, and cloud-marketplace vendor pages. If your product requires a specific platform, that platform's customer count is a **hard ceiling** on `N`, and it is often much lower than the industry count you started from.

## Pricing (`P`)

- **Published pricing pages** [T1] — screenshot and date them. Note what sits behind "contact sales": that boundary tells you where the enterprise motion begins.
- **Public-sector procurement records** [T1] — the most underused pricing source that exists. Government contract databases, government cloud/digital-marketplace frameworks, university and municipal purchasing portals, and public-body spend disclosures publish **real negotiated contract values** including discounts. This is how you learn actual enterprise pricing that no vendor publishes.
- **Review-site pricing discussions** [T2/T3] — users volunteer what they pay. Noisy, unverifiable, useful only in aggregate.
- **Job postings** [T2] — postings for roles managing a tool sometimes disclose contract scale, and always confirm the tool is in the stack.

## Competitor revenue and capital

- **Filings** [T1] for public companies; segment reporting often isolates the relevant line.
- **Disclosed ARR milestones** [T2] — press releases and founder posts. Self-reported, directionally useful, and reliably rounded upward.
- **Funding databases** [T2] — total raised sets a competitor's burn ceiling, which determines whether you can win a paid channel against them.
- **Headcount trends** [T2] — professional-network company pages. Sales-headcount growth is a strong proxy for whether their motion is working, and it is public.

## Demand evidence

- **Community forums and Q&A sites** — search the *complaint*, not the solution.
- **Review sites** — the negative reviews of the incumbent are your positioning, pre-written by buyers.
- **Job postings describing the manual workaround** — the strongest free demand signal in existence. Someone is paying salary to do this by hand, which means the problem has a budget already attached.
- **Regulatory dockets and comment periods** — for compliance-driven products, the comment file tells you exactly who is worried and how much they say it will cost them.
- **The graveyard** — search `<category> shut down`, `wind down`, `post-mortem`, `retrospective`. Failure write-ups are specific in a way success stories never are.

## Benchmarks

Annual practitioner reports with visible methodology and a stated sample size [T2]. Always carry the **year and the n**. See `benchmarks.md` — and re-verify before quoting, because these move every year.

## Tier discipline

The failure mode to watch: a market-size figure that appears identically across dozens of SEO pages, none of which is the original methodology. **That is one press release wearing forty hats**, and citing three of those pages is not triangulation — it is the same source counted three times.

Real triangulation requires **methodologically independent** sources. Two derivations from the same underlying dataset agree by construction and tell you nothing about accuracy.
