# With vs without — same prompt, same model, same day

The honest version of this comparison, including the part that undercuts the marketing.

**Prompt, sent identically to both arms:**

> I want to build an AI tool that writes project proposals for freelance designers. Charging $29/month. The freelance market is $1.5 trillion so even a tiny slice is huge. Is this a good business?

Arm A: plain `claude -p`, no skill. Arm B: same, with `/your-tam-is-fake`. Both Opus 5, both with web search available, 2026-07-27.

## Start with the inconvenient finding

**The baseline was good.** It rejected the $1.5T figure in its first paragraph, built a rough bottom-up funnel, called the product a vitamin rather than a painkiller, identified it as a feature of four existing products, and proposed a concierge kill test. If you expected "wow, great idea!" from a frontier model in 2026, that is not what happens.

So the skill's value is **not** that it disagrees where the baseline flatters. Both arms reached a similar strategic conclusion: reshape toward studios or toward pricing intelligence. Any README claiming otherwise would be selling you something.

The difference is whether you can **check the answer**.

## The measured delta

| | Baseline | With skill |
|---|---|---|
| Web searches run | **0** | 6 |
| Sources cited | **0** | **15**, all linked |
| Numbers with a source or tier tag | 0 of ~12 | every one |
| Verdict label + confidence | none | `RESHAPE — high confidence` |
| Sizing shown as a range | no (single funnel) | low / base / high |
| Independent cross-checks | 0 | 2 (competitor pricing, spend displacement) |
| Kill criteria | 1 test, no threshold on the others | **4, each with a number and a date** |
| Pre-declared read-out thresholds | 1 | 5, in a table, with costs |
| "What I could not verify" | absent | 5 gaps, each with the exact registry or method to close it |
| Length | ~950 words | ~2,300 words |

## Where the sourcing actually changed the answer

**1. The baseline's numbers were invented.** It wrote a clean four-row funnel — "500k–1M full-time freelance designers globally," "~30% pay for any SaaS," "~10% would buy a proposal-specific tool." Honestly labelled as assumptions, and every single one made up on the spot. It ran zero searches.

The skill arm went and looked: 507,690 US graphic designers [T2, BLS OES 2024], ~35% self-employed [T2, Upwork], cross-referenced against an independent count of 122,236 [T2, Zippia], then applied a filter the baseline never considered — **47% of web designers bill under $25K/yr** [T2, pricing survey], so a $348/yr tool is not in their budget at all. That filter is the difference between a plausible funnel and a defensible one.

**2. It corrected the $1.5T rather than just rejecting it.** Both arms said the number was wrong. Only the skill arm identified *what it actually is*: US independent-worker **annual earnings** (~72.9M workers, MBO/Upwork). Then the line that makes it land — *"Counting it as your TAM is like a payroll startup claiming US wages as its market."*

**3. It found the killer evidence, because it searched.** Buried in a vendor blog: handwritten proposals get an **8.13%** reply rate on Upwork, GPT-4o auto-bids get **7.13%**, and proposals with three or more AI clichés drop to **4.17%** [T3, flagged as an interested source].

That reframes the entire business. Not "your output is commoditized" — the baseline got that far — but *"the market has already commoditized your output and started penalizing it."* No amount of reasoning from priors produces that sentence. You have to go find it.

**4. It priced the competition instead of naming it.** The baseline listed six competitors. The skill arm pulled their live prices into a table and found the fatal comparison: **Bonsai is $25/mo and includes proposals, contracts, invoicing, time tracking, and a CRM.** You are asking 16% more than Bonsai for roughly 20% of Bonsai. That is a specific, checkable, unarguable fact, and it is the thing that kills the $29 price point.

**5. Its kill criteria are falsifiable *and* it predicted the result.**

> **By day 10:** interview 20 freelance designers billing >$40K/yr. Ask what their top 3 business problems are — unprompted, before you mention proposals. **If fewer than 4 name proposal writing, the writing framing is dead.** My prediction: you'll hear "finding clients" and "knowing what to charge," roughly 15 of 20.

A stated prediction attached to a dated test is the difference between advice and a bet.

**6. It told you what it didn't know, and how to find out.** Five named gaps. The most useful: it could not find revenue for Proposify, Better Proposals, or Qwilr — then noted **Better Proposals files turnover at UK Companies House for free**, and that summing those three gives the honest ceiling for the whole "dedicated proposal software" category, which would confirm or break its own attach-rate assumption. It pointed at the evidence that could refute it.

## Where the skill arm was worse

- **2.4x longer.** For a founder who wanted a gut check, the baseline is the better read. The skill runs `standard` depth on an open-ended question; `/your-tam-is-fake quick` exists for this and the model did not pick it.
- **No artifact.** Non-negotiable 15 says ship files when the ask implies a deliverable. A question does not, so this is defensible — but a sizing model this developed warranted writing it out.
- **One [T3] source carried real weight.** The reply-rate data is from a vendor with an interest in the claim. It flagged this explicitly and said not to quote it in a deck, which is the correct handling. It still shaped the narrative.

## The honest summary

Against a strong frontier model, the skill does not buy you better judgement. It buys **verifiability** — sourced numbers instead of confident guesses, ranges instead of point estimates, dated falsifiable tests instead of good advice, and an explicit list of what remains unknown.

The baseline gives you a smart opinion. This gives you something a board member can audit, and something you can be proven wrong about in ten days for $500.

## Reproduce it

```bash
claude -p "[your pitch]" --allowedTools "WebSearch,WebFetch" < /dev/null > baseline.txt
claude -p "/your-tam-is-fake [your pitch]" --allowedTools "WebSearch,WebFetch,Read,Write" < /dev/null > skill.txt
```

Results will differ — it searches live.
