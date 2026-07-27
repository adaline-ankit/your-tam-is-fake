# Deliverables — what a GTM strategist actually hands over

Load when the user asks for a deck, a plan, a one-pager, battlecards, or when deep mode reaches its output phase.

**Principle:** a deliverable is a *decision instrument*, not a document. Every slide, section, and card should change what somebody does. Cut anything that would not.

Write real files. `12-deck.html`, `gtm-plan.md`, `battlecard-<competitor>.md` — a file the user can send is worth ten times a wall of chat text.

## 1. The market/GTM deck

Structure adapted from the Sequoia template, which endures because it forces a logical argument rather than a promotional brochure. Ten sections:

| # | Section | What must be on it | Failure mode |
|---|---|---|---|
| 1 | **Purpose** | One declarative sentence. What the company is for | A mission statement nobody can repeat |
| 2 | **Problem** | The buyer's pain in *their* verbatim words. The cost of the status quo, quantified | Founder's framing, not buyer's |
| 3 | **Solution** | How the problem goes away. One diagram beats five bullets | A feature list |
| 4 | **Why now** | The specific thing that changed, with a date. Cost curve crossed, regulation dated, platform opened, behaviour shifted | "AI is better now" |
| 5 | **Market size** | TAM/SAM/SOM **bottom-up**, `N × A × P` visible, as a range | A category figure and "we only need 1%" |
| 6 | **Competition** | Real alternatives including *nothing*. Positioned on the axes **you** win on | A checkmark grid where you have all the checkmarks |
| 7 | **Product** | What exists today vs roadmap, drawn honestly | Roadmap presented as present tense |
| 8 | **Business model** | Pricing metric, ACV, motion, unit economics | A price with no motion attached |
| 9 | **Team** | Why *these* people have unfair insight into *this* problem | Logos with no relevance |
| 10 | **Financials** | Bottom-up plan reconciled to a capacity model | A hockey stick with no mechanism |

**The "why now" slide is the one that separates serious decks from the rest.** Every idea that works today failed before; if there is no dated catalyst, the slide is missing or the idea is not new. Treat an empty why-now as a finding, not a formatting gap.

**Slide 5 is where this skill earns its name.** Bottom-up, tiered inputs, three scenarios, and the delta against any top-down figure the user brought — shown, not hidden.

A self-contained starting template lives at [`assets/deck-template.html`](../assets/deck-template.html): print-to-PDF friendly, light and dark, no external dependencies.

## 2. The GTM plan

The operating document. Sections:

1. **Decision and scope** — what this plan commits to, and what it explicitly does not.
2. **ICP, tiered** — Tier 1 ideal / Tier 2 adjacent / Tier 3 opportunistic. Each with a **count** and **the literal query** that produces the list. A tier without a query is aspiration.
3. **Positioning and narrative** — the statement, the three-pillar messaging house, the shift.
4. **Motion** — chosen motion, and the ACV arithmetic that justifies it.
5. **Channel** — the *one* primary channel, the test design, the pre-declared read-out threshold.
6. **Pricing** — metric, corridor, packaging, discount policy.
7. **Capacity and revenue plan** — bottom-up, ramped, with attrition. Reconciled against the top-down target.
8. **Enablement** — what a rep needs to run this without the founder.
9. **Instrumentation** — the specific metrics, including self-reported attribution, with owners.
10. **Risks and kill criteria** — ranked, each with a test, a cost, and a date.
11. **90-day plan** — owner, deliverable, and success threshold per item.

Ruthlessness rule: if a section cannot be filled with something specific, **write "unknown — here is how we find out"** rather than filling it with plausible text. A visible unknown gets resolved; a plausible placeholder gets believed.

## 3. Launch tiering

Not every release deserves a launch. Tier by revenue impact, breadth of customer impact, technical risk, and strategic significance:

| Tier | Trigger | Deliverables |
|---|---|---|
| **T1** | New category, new segment, pricing change | Full: narrative, press, analysts, launch event, sales enablement, customer comms, exec sponsor |
| **T2** | Significant feature, meaningful segment expansion | Blog, email, in-app, enablement one-pager, social |
| **T3** | Incremental improvement | Changelog, release notes |

Every tier gets a named decision owner. The failure mode is T1 effort on T3 substance — it exhausts the team and trains the market to ignore your announcements, which is expensive precisely when you have something real.

## 4. Messaging house

See `positioning-and-narrative.md`. Three pillars, each with a metric and a real customer quote. Vary emphasis order per ICP tier, never the pillars themselves.

## 5. Competitive battlecards

One per real competitor — including a card for **"nothing / status quo"**, which is the competitor you lose to most and the card almost nobody writes.

```
COMPETITOR: [name]        Last updated: [date] · Source: [win/loss n=X]

WHEN YOU'LL SEE THEM
  [segment, deal shape, which trigger brings them in]

THEIR REAL STRENGTHS
  [honest. a card that pretends they're bad gets ignored by reps
   the first time it's wrong in front of a buyer]

WHERE THEY LOSE
  [specific, from win/loss data — not from their marketing site]

TRAP-SETTING QUESTIONS
  [questions that surface their weakness without naming them.
   "How does your team handle X when Y?" — the buyer discovers it]

OBJECTION → RESPONSE
  "They're cheaper"     → [reframe on total cost or risk, with a number]
  "They have feature X" → [acknowledge, then re-anchor on decision criteria]

DO NOT SAY
  [claims that are false, unprovable, or make us look scared.
   Never disparage; buyers repeat it back to them]
```

Rules: **date every card** and cite the win/loss sample behind it. An undated battlecard is misinformation within two quarters. Never make a claim a rep cannot defend live — one wrong claim in a bake-off costs the deal and the rep's trust in the whole kit.

## 6. ICP scoring model

Turns the ICP into something operational — for territory design, lead routing, and prioritisation.

```
Score = Σ (weight × signal)

Firmographic  employee band in range        +3
              industry in target NAICS      +3
              geography serviceable         +2
Technographic required platform present     +4      (hard gate: 0 → disqualify)
              competitor detected           +2      (displacement opportunity)
Trigger       funding round <6 months       +3
              relevant exec hired <6 months +4
              compliance date approaching   +5
              job posting for manual work   +5      (highest-signal, free)
Negative      known incumbent contract      −4
              below minimum viable size     −5
```

Two rules: weight **trigger signals above firmographic ones** — timing beats fit, because a perfect-fit account with no trigger does not buy this year. And **validate the weights against closed-won data** rather than intuition; an unvalidated scoring model is a spreadsheet expressing the founder's hopes in numeric form.

## 7. The one-page verdict

If only one artifact ships, ship this. Six blocks, one page, no scrolling:

```
VERDICT  [PURSUE / RESHAPE / KILL]  ·  confidence [level]
THE NUMBER      bottom-up SAM, range, weakest input named
THE WEDGE       ICP + trigger + count
LOAD-BEARING    the single assumption everything rests on
KILL CRITERIA   falsifiable, numbered, dated
NEXT 14 DAYS    3–5 actions with costs and read-out thresholds
```

This is the artifact that actually gets forwarded, read in a board meeting, and acted on. Everything else is the appendix that defends it.
