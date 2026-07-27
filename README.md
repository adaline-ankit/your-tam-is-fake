<div align="center">

# your-tam-is-fake

**A go-to-market strategist for your coding agent that does the research, rebuilds your market size from scratch, and refuses to tell you what you want to hear.**

[![License: MIT](https://img.shields.io/badge/License-MIT-black.svg)](LICENSE)
[![Claude Code](https://img.shields.io/badge/Claude_Code-plugin-DC2626)](#install)
[![Codex](https://img.shields.io/badge/Codex-skill-DC2626)](#install)
[![Cursor](https://img.shields.io/badge/Cursor-skill-DC2626)](#install)
[![Gemini CLI](https://img.shields.io/badge/Gemini_CLI-extension-DC2626)](#install)

</div>

---

Every AI assistant you have ever pitched an idea to has told you it was a great idea.

That is not a coincidence and it is not a compliment. Models are trained on human feedback, humans rate agreement highly, and the result is a machine that reflexively validates. Which is fine for a rubber duck and useless for a strategy call.

`your-tam-is-fake` is the opposite. Pitch it an idea and it will go and *look*, then come back with a market size it built itself, the one assumption your entire plan is resting on, and a verdict it will defend when you push back.

## What it actually does

```
$ /your-tam-is-fake

> We're building an AI SDR for enterprise sales teams. TAM is $50B.
```

```
VERDICT: RESHAPE — confidence: medium

Your $50B is the sales-software category, not a market you can sell into.
The real US wedge is ~$34M SAM, which is a fundable business and a
completely different conversation.

────────────────────────────────────────

THE NUMBER

  Your figure    $50B      [T3 — category revenue from a research press release]
  Bottom-up SAM  $34M      [ASSUMPTION, derived]

  N = 10,100 US firms, 200+ employees, running outbound
      ← 18.4K firms at 200+ in relevant NAICS [T1, Census SUSB 2023]
      × ~55% showing outbound-sales titles      [T2, ad-audience estimator]
  A = 12% adopting an AI-native replacement within 3 years
      ← incumbents reached 25–35% of this N over a decade [T2]
  P = $28K ACV
      ← competitor published pricing, $18K–$45K at this size [T1, Feb 2026]

  Range: $10M (floor) — $91M (ceiling)

  The delta between $50B and $34M is 1,400x. You are not off by a
  rounding error, you are counting a different thing entirely.

STRONGEST CASE FOR IT

  Reply rates have collapsed industry-wide, which means the job is
  becoming unwinnable by headcount at exactly the moment headcount
  became the most expensive line in the sales org. If AI-native
  outbound genuinely lifts reply rates 3x, this isn't a tool purchase,
  it's a headcount substitution — and headcount budgets are 20x
  software budgets. That's the version of this that's worth $1B.

WHAT HAS TO BE TRUE

  Load-bearing: that you lift reply rates in a market where you are
  also the reason reply rates fell. Every buyer you sell to makes the
  channel slightly worse for every other buyer. This is the one
  assumption that has no workaround if it's false.

WHERE IT BREAKS

  1. You're selling into your own externality. Test in 14 days: run
     your sequence against 200 accounts, measure reply rate against
     their current baseline. Cost: ~$400. If you can't beat baseline
     by 2x, nothing else in this plan matters.

  2. The incumbent ships this as a checkbox. Sales-engagement
     platforms already own the workflow, the data, and the contract.
     What stops them? "Better models" is not a moat, it's a quarter.

...
```

It keeps going — the motion, the pricing, the kill criteria, the 14-day plan, and an honest list of what it could not verify.

## The part that makes it different

**It doesn't cave.**

Most models will hold a position for exactly one round of pushback, and then discover a "fair point" somewhere around your third message. This one changes its conclusion for exactly two reasons — you gave it **new evidence**, or you found an **error in its arithmetic** — and it tells you which one it was.

```
> No, I really think the TAM is bigger than that.

STILL DISAGREE: SAM is ~$34M, not $50B.
Their argument: the market feels bigger than the model suggests.
Why it doesn't move me: you've restated the number, not rebutted the
  derivation. N, A, and P are each individually checkable and none
  have been challenged.
What would: a source showing outbound-sales tooling spend per company
  above $28K at the 200–1000 employee band, or a defensible reason
  attach rate exceeds 12%. Either one moves my number immediately.
```

And when you're actually right, it says so without ceremony:

```
CHANGED MY VIEW: attach rate moves from 12% to 22%.
Because: new evidence — the compliance mandate you named lands in Q1,
  which converts this from discretionary to dated. That roughly doubles
  near-term urgency.
Confidence now: medium-high. SAM revises to ~$62M.
```

## Why it's not just a contrarian

Being negative is as cheap as being positive. Both cost zero research and predict nothing.

So the skill is built around a forced sequence: it has to **search** before it opines, it has to **steelman your idea better than you did** before it's allowed to attack it, and it has to attach a **falsifiable kill criterion** to every recommendation. If the evidence says your idea is good, it says your idea is good — loudly, with the sources that convinced it.

The rule it runs on: *your job is to make the plan survive contact with a market, not to make the user feel good and not to make them feel bad.*

## Three intensities

```bash
/your-tam-is-fake lite      # board-memo voice. no jokes. use before showing your CEO
/your-tam-is-fake spicy     # default. dry wit, pop-culture references, names bad numbers
/your-tam-is-fake nuclear   # full roast. maximum screenshot value
```

The same finding — an $8K ACV with a two-rep outbound team — at each level:

> **lite** — The stated ACV does not support an outbound motion. At $8K ACV and ~$150K fully loaded rep cost, a rep needs ~19 closed deals annually to break even on salary alone. Recommend PLG with sales-assist on inbound.

> **spicy** — $8K ACV with two outbound reps is a machine that turns $300K into $240K. Each rep needs 19 closed deals just to cover their own salary, before you've spent a dollar on marketing. The math wants PLG with sales-assist. The math is not negotiable.

> **nuclear** — You've built a $300K/year money incinerator and staffed it with two people who think they work in sales. This is not a coverage problem, a coaching problem, or a messaging problem. It is arithmetic. Fire the motion, not the reps.

**The analysis is byte-identical across all three.** Only the prose changes. Nuclear mode is not permission to be less rigorous or more negative — a nuclear verdict on a genuinely strong plan is still "this is strong," just with attitude.

## What's inside

Nine reference files the agent loads on demand, so it isn't improvising frameworks:

| File | What it carries |
|------|-----------------|
| [`market-sizing.md`](skills/your-tam-is-fake/references/market-sizing.md) | Bottom-up `N × A × P`, where to actually source population counts, triangulation, worked example |
| [`research-protocol.md`](skills/your-tam-is-fake/references/research-protocol.md) | The 7-search sequence, source tiers, primary-research plans with costs |
| [`icp-and-wedge.md`](skills/your-tam-is-fake/references/icp-and-wedge.md) | The 6-part ICP test, beachhead selection, positioning that survives a bake-off |
| [`gtm-motions.md`](skills/your-tam-is-fake/references/gtm-motions.md) | ACV → motion mapping, where each motion structurally fails |
| [`pricing-and-unit-economics.md`](skills/your-tam-is-fake/references/pricing-and-unit-economics.md) | Pricing metrics, the per-seat trap for AI products, CAC/NRR/payback done honestly |
| [`channels.md`](skills/your-tam-is-fake/references/channels.md) | Channel fit by ACV, arbitrage windows, attribution honesty |
| [`red-flags.md`](skills/your-tam-is-fake/references/red-flags.md) | 30 failure patterns and the four clusters that are jointly terminal |
| [`benchmarks.md`](skills/your-tam-is-fake/references/benchmarks.md) | 2025 SaaS efficiency data, banded by ACV, with instructions to re-verify |
| [`output-format.md`](skills/your-tam-is-fake/references/output-format.md) | The verdict template and the disagreement register |
| [`pop-culture.md`](skills/your-tam-is-fake/references/pop-culture.md) | The reference bank, and the rule that a joke must carry analytical payload |

## Install

### Claude Code

```bash
claude plugin marketplace add ankit-adaline/your-tam-is-fake
```

Then `/your-tam-is-fake` in any session.

### Codex

```bash
git clone https://github.com/ankit-adaline/your-tam-is-fake ~/.codex/skills/your-tam-is-fake
```

Then `$your-tam-is-fake` in a Codex session, or point Codex at the repo's `AGENTS.md`.

### Cursor

```bash
mkdir -p .cursor/skills
cp -r your-tam-is-fake/.cursor/skills/your-tam-is-fake .cursor/skills/
```

### Gemini CLI

```bash
gemini extensions install https://github.com/ankit-adaline/your-tam-is-fake
```

Or for the slash command only:

```bash
cp skills/your-tam-is-fake/agents/gemini.toml ~/.gemini/commands/your-tam-is-fake.toml
```

### Anything else

Paste [`AGENTS.md`](AGENTS.md) into your system prompt. It's self-contained.

## Good things to ask it

```
Size the market for [idea], bottom-up. Show me the arithmetic.
My TAM slide says $12B. Audit it.
Here's my ICP: "mid-market SaaS companies." Tear this apart.
We're at $9K ACV with 3 outbound reps. Is this motion viable?
Why now for this idea? It failed in 2019 — what changed?
Who died trying this already, and why?
What's the one assumption this whole plan rests on?
Give me kill criteria for the next 30 days.
Our NRR is 94% and we want to raise for paid acquisition. Nuclear mode.
```

## Caveats worth reading

- **It searches the live web.** Numbers are only as good as what it can find, and it tells you the tier of every one. `[T3]` means don't put it in the deck.
- **It cannot see your data.** Your win rates, your pipeline, your churn cohorts are the highest-value inputs and it doesn't have them. Paste them in.
- **It is not a substitute for talking to 20 customers.** It is a way to know which 20, and what to ask them.
- **Benchmarks decay.** The 2025 figures in `benchmarks.md` are cited and dated; the skill is instructed to re-verify before quoting them.
- **It is not investment or legal advice**, and it's built to say so rather than roleplay a professional.

## Contributing

The reference files are the substance — if a framework here is wrong, out of date, or missing, that's the highest-value PR. Bring a source.

Bad TAM slides are also welcome as eval cases. Anonymize them.

## Credit

Structure and packaging inspired by [`ayghri/i-have-adhd`](https://github.com/ayghri/i-have-adhd), which figured out that a skill can be one opinionated markdown file and still change how you work.

## License

MIT. Fork it, rename it, make it meaner.
