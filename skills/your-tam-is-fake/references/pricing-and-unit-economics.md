# Pricing and unit economics

Load when a price, a CAC, or a growth plan appears.

## Pricing is a strategy decision, not a number

The price sets the motion, the customer, the support burden, the churn profile, and the story. Changing pricing later changes the company. Most startups underprice, then discover the underpricing has already selected for the customers who churn.

## Choosing the metric

The pricing metric should track the value the customer receives and be predictable enough to survive procurement.

| Metric | Fits | Breaks |
|--------|------|--------|
| **Per seat** | Value scales with people using it | Automation products — you are charging for headcount you just made unnecessary |
| **Usage / consumption** | Value scales with volume; aligns with COGS | Buyers hate unpredictable bills; procurement blocks uncapped spend |
| **Per outcome** | Cleanest value alignment | Attribution fights, and you absorb variance you may not control |
| **Platform / flat** | Predictable, easy to buy | Leaves money on the table at the top; no expansion path |
| **Hybrid (platform + usage)** | Where most successful infrastructure lands | More complex to explain; needs a good calculator |

**The per-seat trap for AI products deserves its own warning.** If the pitch is "replaces manual work," per-seat pricing means your revenue falls as your product succeeds. The buyer notices this before you do, and it becomes their negotiating position at renewal.

## The gross-margin question nobody asks

Traditional software runs 75–85% gross margin. AI-heavy products with meaningful inference cost run materially lower, and it depends on usage patterns you cannot control.

Before any growth recommendation: **what is the marginal cost of serving one more customer at expected usage?** If nobody has calculated it, that is the finding. A company scaling acquisition on 35% gross margins while modelling SaaS multiples is heading somewhere unpleasant, and the discovery usually happens during diligence.

Corollary: model the free tier's COGS as a real, growing line item, not a marketing expense.

## The metrics that matter, and how to falsify them

**CAC** — all sales + marketing spend in a period ÷ new customers acquired. Fully loaded: salaries, commissions, tooling, ad spend, events, content. The most common manipulation is excluding salaries, which understates CAC by 2–4x. Second most common: attributing organic/word-of-mouth wins to a paid channel.

**CAC payback (months)** — `CAC ÷ (ACV × gross margin) × 12`. Gross margin belongs in the formula; skipping it flatters the number, which is why it gets skipped.

**LTV:CAC** — treat with suspicion at any company under three years old. LTV requires a churn rate observed over a period longer than the company has existed. A stated LTV:CAC of 5:1 at 18 months old is a projection dressed as a measurement. Prefer CAC payback, which uses only observed data.

**NRR** — expansion + upsell − contraction − churn, on existing customers. The single most predictive number for durable growth. Below 100% means you are running up an escalator that is going down.

**Magic number** — net new ARR ÷ prior-period S&M spend. Above ~0.75 justifies more spend; below suggests the motion is broken and more spend makes it worse faster.

**Burn multiple** — net burn ÷ net new ARR. The bluntest efficiency read and the hardest to dress up.

## Benchmarks

See `benchmarks.md`. Two rules:

1. **Compare within the ACV band.** A 24-month payback is normal at $100K+ ACV and catastrophic at $5K. Comparing against an all-company median is how a healthy enterprise business gets told it is inefficient, and how a broken SMB business gets told it is fine.
2. **Re-verify.** Benchmarks shift year to year. Anything in `benchmarks.md` should be re-searched before being quoted with confidence.

## Discounting

Every discount granted without a concession received teaches the buyer that the price is fiction, and it prices your next ten deals. Trade discounts for something: multi-year term, upfront payment, a case study, a reference call, a logo, expanded scope.

Watch for the end-of-quarter discount pattern in the user's own data. If Q-end deals close 25% cheaper, the pricing is not real and the sales team knows it.

## Willingness-to-pay research done properly

Do not ask "would you pay $X?" — the answer is uninformative in both directions.

Ask instead:
- What do you spend on this problem today, across tools and labour?
- What did you approve last quarter, and what was the approval process?
- At what price would this be an obvious yes with no committee? At what price is it a no?
- Who else has to sign, and what do *they* need to see?

The gap between the obvious-yes price and the no price is your pricing corridor. Land near the top of it, because you can always discount and you can never raise.
