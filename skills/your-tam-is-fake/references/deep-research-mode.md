# Deep mode — the multi-hour protocol

Load when the user invokes `/your-tam-is-fake deep`, asks for a full GTM strategy, a board-ready analysis, an investor-grade market study, or says anything like "take your time" or "go deep."

Normal mode answers a question. **Deep mode produces a deliverable** — a set of files on disk, built over hours, that a founder could hand to a board or an investor without editing.

## The contract with the user

Before starting, state four things in five lines or fewer:

1. **Scope** — the decision this research is meant to serve. Not "research the market" but "decide whether to build the compliance wedge or the analytics wedge."
2. **The eight workstreams** you will run, and which are load-bearing for that decision.
3. **Rough duration** — realistic. A serious pass is 90 minutes to 4 hours of tool time. Say so.
4. **Where output lands** — the working directory.

Then ask **at most three** questions, and start. Do not wait for permission you do not need.

## Working directory

Everything goes to `gtm-research/<slug>/`. Create it immediately, before any searching.

```
gtm-research/<slug>/
  00-brief.md              scope, decision, questions, research kill criteria
  01-research-log.md       APPEND-ONLY. every search, source, tier, finding
  02-contradictions.md     where sources disagree, and the resolution
  03-sizing-model.md       N x A x P, all three scenarios, cross-checks
  04-landscape.md          competitors, adjacents, the graveyard, capital
  05-demand-evidence.md    buyer language, JTBD forces, trigger events
  06-icp-and-segments.md   tiered ICP with counts and the queries
  07-positioning.md        Dunford frame + narrative + category call
  08-motion-economics.md   motion, capacity model, pricing, unit economics
  09-risks.md              ranked, with tests, costs, and kill criteria
  10-verdict.md            the call, the confidence, the 90-day plan
  11-open-questions.md     what remains unknowable without primary research
  12-deck.html             the presentation deliverable
```

**The research log is what makes this resumable.** Append to it continuously, never at the end. If the session dies, a new session reads `01-research-log.md` and `00-brief.md` and continues from the last completed workstream. Say this to the user — they should know they can stop you and come back.

## The eight workstreams

Run them in this order. Each has **exit criteria**. Do not advance a workstream to "done" in the log until its exit criteria are met, and do not skip ahead because a later workstream looks more interesting.

### W1 — Frame the decision
The most common failure of long research is answering an interesting question instead of the user's question. Write the decision, the options, and what evidence would favour each. **Exit:** `00-brief.md` states a decision with at least two named options and the evidence that would separate them.

### W2 — Demand evidence
Find the problem in the buyer's own words before touching market size. Forum complaints, review-site gripes, job postings that exist to do this manually, community threads. Extract **verbatim quotes** — they become the messaging later and they are the only unfakeable evidence in the whole report. Apply the Four Forces (see `customer-research.md`): what is the push, the pull, the habit holding them, the anxiety about switching.
**Exit:** ≥10 verbatim buyer-language quotes with URLs, and a named trigger event.

### W3 — Landscape
Direct competitors, adjacent tools stretching in, the incumbent suite that could bundle it, and **the graveyard** — who tried and died, and why. Pull actual pricing pages with dates. Sum visible revenue. Capital raised sets your competitors' burn ceiling.
**Exit:** ≥8 players catalogued with pricing where public, ≥2 dead attempts with a cause of death, and a total-capital figure.

### W4 — Population and sizing
Source `N` from primary data (see `data-sources.md`). Build `N × A × P` in three scenarios. Run **two independent cross-checks** (competitor revenue sum, spend displacement). Reconcile the gap — the reconciliation is the insight.
**Exit:** `03-sizing-model.md` has a low/base/high range, every input tiered, and a written explanation of why the cross-checks disagree.

### W5 — Segmentation
Tier the ICP (Tier 1 / 2 / 3), each with a count and the literal query that produces the list. Score candidate wedges against the six criteria in `icp-and-wedge.md`. Name the beachhead and the next two bowling pins.
**Exit:** one named beachhead with a population count under 20,000, and two named adjacent segments with the reason they are adjacent.

### W6 — Positioning and narrative
Run the Dunford frame: competitive alternatives → unique attributes → value → who cares most → market category. Then the strategic narrative: the shift, the stakes, the promised land. Decide explicitly whether this is a **category entry** or a **category creation** play, because they have opposite GTM economics. See `positioning-and-narrative.md`.
**Exit:** a filled positioning statement whose "because" clause names a *structural* advantage, not a feature.

### W7 — Motion and economics
Motion selection against ACV. A bottom-up capacity model — reps, ramp, attainment, quota — that reconciles to the revenue target. Pricing metric and corridor. CAC payback and gross margin, banded correctly. See `sales-process.md` and `pricing-and-unit-economics.md`.
**Exit:** a revenue plan that reconciles top-down target with bottom-up capacity, and a payback figure compared against the right ACV band.

### W8 — Red team
Now attack your own report. Spend real effort here; this is where deep mode earns its cost. See the self-critique protocol below.
**Exit:** ≥5 attacks logged, each either resolved with evidence or escalated into `09-risks.md`.

## Saturation, not exhaustion

Do not search forever. Each workstream stops on the **saturation rule**:

> Stop when three consecutive searches return nothing you did not already have.

Log the saturation point. If a workstream saturates in two searches, that is itself a finding — usually that the market is too private to observe from outside, which changes the recommendation toward primary research.

## The contradiction ledger

When two sources disagree, **do not silently pick one.** Write both into `02-contradictions.md` with tiers, then resolve by one of:

- Tier — higher tier wins, and say so.
- Recency — with the date of each.
- Methodology — the one that shows its work wins.
- Unresolved — keep both, widen your range, lower your confidence.

An unresolved contradiction that widens the range is a *better* output than a false reconciliation. Most bad research is bad because somebody picked the convenient number quietly.

## Self-critique protocol (W8)

Before writing the verdict, attack your own work from five angles. Write each attack and its resolution into `09-risks.md`.

1. **The number** — which single input, if wrong by 3x, breaks the conclusion? Is it the weakest-sourced one? (It usually is.)
2. **The survivorship attack** — is the evidence drawn only from companies that survived? The graveyard is quieter but more informative.
3. **The motivated-reasoning attack** — did you reach the conclusion the user wanted? Re-read the brief. If your verdict matches their opening hope, be specifically suspicious and re-derive the load-bearing input.
4. **The staleness attack** — how much depends on data over 18 months old, in a market that moves quarterly?
5. **The so-what attack** — if the user did every "next 14 days" action, would the decision in `00-brief.md` actually be resolved? If not, the plan tests the wrong thing.

Then the honesty check: **which of your conclusions would you not defend in front of someone who has run this GTM?** Downgrade those to low confidence or delete them.

## Emitting the deliverable

The files are the deliverable, but nobody reads twelve files. So:

1. **`10-verdict.md` must stand alone.** A reader who opens only this file gets the decision, the number, the risks, and the plan. Everything else is appendix.
2. **`12-deck.html`** is the artifact people will actually forward. See `deliverables.md` for the structure and `assets/deck-template.html` for a self-contained starting point.
3. **In chat, output the verdict only** — verdict, number, load-bearing assumption, top 3 risks, kill criteria, and the file paths. Do not paste ten thousand words into a terminal.

## Progress discipline

The user cannot see you working for two hours. Every completed workstream, emit one line:

```
W4 done — SAM $28M–$91M (base $34M). N sourced [T1], A is the weak input. → 05-demand-evidence.md next
```

That is the entire update. No narration, no "I'm now going to."

## What deep mode must never do

- **Pad to look thorough.** Twelve thin files are worse than four dense ones. If a workstream produced nothing, its file says what you looked for and why nothing was there.
- **Let volume masquerade as confidence.** Four hours of research on an unobservable private market still yields a low-confidence answer. Say so. Length is not evidence.
- **Skip the verdict.** The failure mode of long research is a beautiful report with no call in it. `10-verdict.md` opens with PURSUE / RESHAPE / KILL on line one.
- **Bury what it could not find.** `11-open-questions.md` is not a graveyard for inconvenient gaps — it is the primary-research plan, with costs and durations, and it is often the most valuable file in the set.
