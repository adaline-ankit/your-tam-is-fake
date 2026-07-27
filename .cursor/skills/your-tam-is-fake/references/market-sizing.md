# Market sizing without lying

Load when sizing a market, auditing someone else's TAM, or being handed a number that ends in "billion".

## Why the skill is named this

The most common number in a pitch deck is a category figure lifted from a research-firm press release, presented as the company's addressable market. It is not wrong so much as it is *unrelated to the business*. A $50B "sales software market" contains CRM seats, dialers, conference sponsorships, and training courses. None of that is money a buyer could spend on your product.

A real TAM answers one question: **if we won every buyer who could plausibly buy this, at the price we can plausibly charge, what is annual revenue?**

## The three numbers, defined so they cannot be fudged

| Term | Definition that actually constrains | Test |
|------|-------------------------------------|------|
| **TAM** | Annual revenue if every entity with this problem bought your category of solution, at your price point. | Would each counted entity recognize the problem if you described it? |
| **SAM** | The slice you can sell to *given your product, geography, language, compliance posture, and integrations today*. | Could you close them this year without a rewrite? |
| **SOM** | Realistic 3-year capture given your channels, headcount, and the competition. | Does this number survive division by your rep capacity? |

SOM is where founders lie to themselves most, because it is the only one investors mentally multiply against valuation.

## Bottom-up: the only method that counts

```
SAM = N × A × P
```

- **N** — countable population of the ICP. Must be sourceable, not estimated.
- **A** — attach rate: fraction who will buy *any* solution in this category within the window.
- **P** — annual contract value you can actually charge and collect.

Every one of the three gets a **low / base / high** value. Multiply the lows for a floor, the highs for a ceiling. Report the range. **A point estimate is a lie with a decimal.**

### Sourcing N (this is the work)

- **US firm counts by industry + employee band** — Census Bureau SUSB / Business Dynamics Statistics. Free, authoritative, NAICS-coded. [T1]
- **Job-title populations** — professional-network ad audience estimators. Give a live count of "VP Sales at 200–1000 employee companies in the US". Directionally strong, self-reported, treat as [T2].
- **Tech-stack filters** — technographic providers, BuiltWith-style scans, public integration directories. If your product requires Snowflake, N is capped by Snowflake customers, not by all enterprises. [T2]
- **Licensed / registered entities** — regulators publish counts of hospitals, broker-dealers, pharmacies, licensed contractors. [T1]
- **Public-company counts** — exchange listings, EDGAR full-text search. [T1]
- **Developer populations** — package download stats, GitHub topic counts, Stack Overflow survey. Noisy; downloads are not humans. [T2/T3]

If N cannot be sourced, the honest output is: "N is unknown. Here is the query, the database, and the filter that would produce it."

### Sanity-checking A

Attach rate is the assumption founders inflate hardest, usually by assuming everyone with the problem is shopping. They are not — most people live with the problem.

Grounding heuristics:
- Compare against the **incumbent's actual penetration** of the same N. If the market leader after 12 years has 8% of your N, your 5-year A of 40% needs an argument.
- New category with no budget line: A is small, and the constraint is budget creation, not competition.
- Compliance-mandated: A trends high and fast, and the date of the mandate is the most important number in the model.
- **Distinguish "has the problem" from "has budget, authority, and urgency."** The gap between those two is usually 10x.

### Grounding P

- Use **published competitor pricing** where it exists. [T1] Screenshot the page and note the date; pricing pages change.
- Enterprise pricing is usually hidden. Public-sector procurement records, university purchasing portals, and G-Cloud-style government frameworks publish real contract values. Underused and excellent. [T1]
- **Value-based ceiling**: quantify what the buyer saves or earns, then assume you capture 10–30%. Above 30% of quantified value, deals stall on procurement even when ROI is obvious.
- **Budget-substitution floor**: what line item does this replace? If nothing, you are asking for new budget, which lengthens the cycle by a quarter or more and lowers A.

## Triangulate, then reconcile

Run at least two independent methods and **explain the gap**:

1. **Bottom-up** (above).
2. **Competitor revenue sum** — public filings, credible revenue estimates, disclosed ARR milestones. Sum the visible players, then gross up for the long tail. If your TAM is 50x the sum of everyone currently selling into it, you are either early to something real or counting people who will never buy.
3. **Spend-displacement** — what buyers currently spend on the labor, tooling, or workaround this replaces. Salary data × headcount doing the manual version is often the most honest ceiling available.

Reconciliation is the deliverable. When two methods disagree 5x, the *reason* they disagree is the actual insight about the market.

## Red flags in a handed-to-you TAM

- Round numbers. Real bottom-up math produces $1.87B, not "$2B."
- A CAGR carrying the argument. Growth rate is not size, and projected growth is the cheapest number in any report.
- "We only need 1%." Nobody has ever gotten 1% of a market. You get 60% of a segment or 0% of a market.
- TAM stated without SAM. Almost always because SAM is embarrassing.
- The number is in the deck but the derivation is nowhere.
- Global TAM for a product that ships in one language with US-only compliance.
- Counting the same dollar twice across two "market segments."
- The TAM grew between two versions of the deck with no product change.

## Worked example

Claim: *"AI SDR for enterprise sales teams. TAM $50B."*

The $50B is category revenue for sales software broadly. Rebuild:

- **N** — US companies with 200+ employees running an outbound sales motion. Census SUSB gives ~18.4K US firms at 200+ employees in relevant NAICS bands [T1]; ad-audience estimators suggest ~55% show any outbound-sales job titles [T2] → **N ≈ 10,100** (base). Low 7,500, high 13,000.
- **A** — incumbent sales-engagement vendors have penetrated maybe 25–35% of this N over a decade [T2, from disclosed customer counts]. AI-native replacement inside 3 years: base **12%**, low 5%, high 25%.
- **P** — competitor published pricing sits in the $18K–$45K/yr band at this company size [T1, pricing pages]. Base **$28K**.

**Base SAM ≈ 10,100 × 0.12 × $28K ≈ $34M.** Range: $10M (floor) to $91M (ceiling).

That is not $50B. It is a real, respectable, venture-fundable US wedge *if* the expansion path to mid-market, Europe, and adjacent roles is credible — and now the conversation is about the expansion path, which is the conversation that was worth having.

Note what happened: the honest number is 1,400x smaller and 100x more useful.

## Output template

```
SIZING — [product], [geography], [date]

Bottom-up SAM
  N = [count]           [tier, source]
  A = [rate]            [tier / assumption + why]
  P = [$ACV]            [tier, source]
  SAM = [low] / [base] / [high]

Cross-check
  Competitor revenue sum:  [$X]   [tier]
  Spend displacement:      [$Y]   [tier]
  Gap explained by:        [reason]

Weakest link: [which of N/A/P is least defensible, and the one test that would firm it up]
```
