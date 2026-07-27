# Raw — Arm A (baseline, no skill)

Plain `claude -p`, Opus 5, web search available, 2026-07-27. Zero searches run, zero sources cited.

---

Short answer: **as stated, no** — but there are two adjacent businesses in here that are real. Let me show the work.

## The $1.5T number is the problem, not the evidence

"$1.5 trillion market, tiny slice is huge" is the single most reliable predictor of a startup that dies at $8k MRR. That number is *gross freelance labor spend* — money paid to designers, not money designers spend on software. Your actual TAM is: (number of freelance designers) × (what they'll pay for tools) × (share of that budget a proposal tool can claim).

Bottom-up, with my assumptions labeled so you can argue with them:

| Step | Assumption | Count |
|---|---|---|
| Full-time freelance designers globally running a real business | not hobbyists, not moonlighters | 500k–1M |
| Who pay for *any* SaaS beyond Adobe/Figma | ~30% | 150k–300k |
| Who'd buy a **proposal-specific** tool vs. a bundle | ~10% | 15k–30k |
| Share you win as a new entrant vs. Bonsai/HoneyBook/Proposify/Qwilr | 3–5% | **500–1,500 customers** |

1,000 customers × $29 × 12 = **~$350k ARR**. That's a good solo business. It is not a company, and it's the *optimistic* branch. Every 10x claim you make about the market has to survive that funnel, and "$1.5T" doesn't touch a single row of it.

## Three structural problems

**1. Frequency is too low for a subscription.** An active freelance designer writes maybe 2–8 proposals a month; plenty write one. You're charging a recurring fee for an episodic job. Worse, the usage pattern is inverted against payment: when work is slow they write lots of proposals but have no money; when work is good they have money and don't need you. That's a churn machine — expect 8–12% monthly, so LTV lands near $300 and you can't afford paid acquisition at all.

**2. You're solving the downstream pain.** Ask a freelance designer what hurts and you get: *I don't have enough leads*, *the client ghosted me*, *they didn't pay*, *scope crept 6 times and I ate it*. "Writing the proposal took 45 minutes" is maybe #7 on that list, and ChatGPT already does 80% of it for free. Painkillers sell; this is a vitamin.

**3. You're a feature of four existing products.** Proposify, Better Proposals, Qwilr, Bonsai, HoneyBook, PandaDoc — all bundle proposals with contracts, e-sign, invoicing, and payments, and all have already bolted AI generation on. A standalone AI proposal writer is a feature they ship in a sprint. And there's no moat: the LLM does the work, so what exactly do you own?

## What would actually make this a business

**Change the buyer, not the product.** Small design/dev studios (3–30 people) write 5–20 proposals a month, each worth $20k–200k, and a lost bid is a real cost they can name. Same product, priced at $250–500/workspace instead of $29/seat. Ten studios ≈ 170 freelancers in revenue, with a fraction of the churn and a buyer who takes a sales call. This is the highest-probability version.

**Or change the job.** Stop selling "writes proposals," sell "wins the deal and protects the scope": intake email → proposal → e-sign → deposit collected → *auto-generated change order the moment the client asks for something out of scope*. Scope creep is the thing that actually costs designers thousands. That's a painkiller, and it drags the whole workflow (and lock-in) along with it.

**And find the one asset that compounds.** The only defensible thing here is **pricing and win-rate data**: what scope, at what price, in what market, actually got signed. "Designers like you charge $8,400 for this and win 40% of the time; you're bidding $4,500" is something no general-purpose model can tell them and no competitor can copy without your volume. Build the product so it captures outcomes, not just outputs.

## The test to run this week — do not write code

Offer 10 freelance designers a **hand-written, done-for-you proposal for $50 each**. You write them yourself, by hand, with an LLM behind the curtain.

If fewer than 3 pay for the fully-done version, nobody is paying $29/month for the do-it-yourself version. That's a one-week, near-zero-cost kill test, and it's strictly more informative than any amount of building. While you're doing it, ask each one to show you their last three proposals and tell you what happened *after* they sent it — that's where you'll find whether the real product is proposals, pricing, or change orders.

**One thing that should worry you regardless:** in two years, "turn this client email into a proposal" is a thing the designer's general assistant does for free. Whatever you build has to survive that. The data and the transaction survive it; the generation doesn't.
