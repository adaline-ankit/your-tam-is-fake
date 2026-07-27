# Research protocol

Load at the start of every analysis. This is the phase people skip, and skipping it is what turns a strategist into a mirror.

## The rule

**You may not size a market, name a competitor, or state a benchmark from memory.** Training data has a cutoff; markets, pricing pages, and competitive landscapes do not. A remembered pricing tier is wrong often enough to be dangerous, and it is wrong in a way that looks exactly like being right.

If a claim survives into the output without a search behind it, it must carry `[from memory, unverified]`.

## Search sequence

Run these in order. Stop early only when the remaining searches cannot change the verdict.

**1. Does the problem exist, in the buyer's own words?**
Search the complaint, not the solution. `"how do you handle" <problem> reddit`, community forums, review-site complaint sections, job postings describing the manual workaround. A job posting that exists to do this by hand is the strongest demand signal that is free to find — someone is paying salary for the problem.

**2. Who already sells into it?**
Direct competitors, adjacent tools stretching in, and the incumbent suite that could add it as a feature. Also search for the ones that *died* — `<category> shutting down`, `<category> post-mortem`, `wind down`. Graveyards are more informative than leaderboards, and nobody reads them.

**3. What do they charge?**
Pull actual pricing pages. Note the date. Note what is gated behind "contact sales" — that gate tells you the enterprise motion exists and roughly where it starts. Public procurement records for real contract values.

**4. How much capital is in the fight?**
Funding rounds and totals set the burn ceiling of your competition. Whether you can win a paid-acquisition channel is mostly a function of who else is bidding and how patient their money is.

**5. What is the population?**
Statistics-agency firm counts, regulator registries, ad-audience estimators, technographic filters. See `market-sizing.md`.

**6. Is there a timing catalyst?**
Regulation with a compliance date, a platform shift, a pricing change by a dominant player, a deprecation notice. **Timing is the most under-analyzed variable in GTM and the one that most often explains why the same idea failed in 2019 and works now.** If there is no catalyst, say so — "why now" answered with "AI is better now" is not an answer unless you can name the specific capability threshold that was crossed and when.

**7. Benchmarks for the motion.**
Current-year efficiency benchmarks in the right ACV band. See `benchmarks.md`, and re-verify — benchmarks decay within a year.

## Source tiers

| Tier | What qualifies | How to use it |
|------|----------------|---------------|
| **T1** | Filings, statistics agencies, regulator registries, the vendor's own published pricing, procurement records, primary customer conversations | Build on it |
| **T2** | Research with visible methodology, funding databases, well-run practitioner surveys, disclosed ARR milestones, review-site aggregate data | Use with the date attached |
| **T3** | "Market projected to reach $X by 2030", vendor whitepapers gating an email, press releases, listicles, LinkedIn thought leadership | Cite as *sentiment*, never as *fact*. Build a bottom-up figure beside it. |

The T3 pattern to distrust most: a market-size figure that appears identically across forty sites, all of them SEO pages, none of them the original methodology. That is one press release wearing forty hats.

## Primary research plan (when data does not exist)

Private-market questions frequently have no findable answer. That is not a reason to guess — it is a reason to hand over a testing plan. Every "I could not find this" must be followed by a plan with numbers in it:

- **Customer conversations** — 15–20 in the named ICP, screened for the trigger event. Script asks what they did in the last 90 days about this problem, not whether they would like a solution. *Nobody has ever accurately predicted their own future purchasing behaviour in a discovery call.*
- **Fake-door test** — landing page describing the product with pricing visible, $500–1500 of paid traffic against the ICP filter, read-out threshold declared before launch. Write the threshold down first, or the result will be interpreted favourably after.
- **Concierge delivery** — deliver the outcome manually for 3–5 customers at real price. Establishes willingness to pay and reveals the actual workflow, which is never the workflow in the deck.
- **Channel probe** — one cold sequence to 100 named accounts. Reply rate against a named ICP is the cheapest read on whether the problem is urgent or merely real.
- **Incumbent win/loss** — talk to people who evaluated the incumbent and chose nothing. "Chose nothing" is the real competitor and it wins most deals.

Attach cost and elapsed time to each. A test that takes a quarter is a different recommendation than one that takes a week.

## Confidence calibration

State confidence and what moves it:

- **High** — multiple T1 sources agree; the mechanism is understood; the estimate would survive a hostile analyst.
- **Medium** — T2 sources, or T1 with a shaky bridging assumption. Name the assumption.
- **Low** — assumption-driven, or sources conflict, or the market is too private to observe. Say so and give the test.

Never report a low-confidence conclusion in high-confidence prose. That is the most common way research gets laundered into false certainty — and confident prose is exactly what gets copied into the deck.
