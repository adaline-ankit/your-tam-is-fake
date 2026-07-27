# Output format

Load before writing the verdict. Adapt the shape to the question — a pricing question does not need a full sizing block — but never drop the verdict, the confidence, or the kill criteria.

## Full analysis

```
VERDICT: [PURSUE | RESHAPE | KILL] — [confidence: high/medium/low]

[One or two sentences. The actual call, and the single reason for it.]

────────────────────────────────────────

THE NUMBER
[Bottom-up SAM with N × A × P exposed, every input tiered, reported as a range.
 If the user brought a number, state theirs, state yours, explain the delta.]

STRONGEST CASE FOR IT
[The steelman. Better than the user argued it. If you cannot build one, say so —
 that is the most severe finding available.]

WHAT HAS TO BE TRUE
[The load-bearing assumption, isolated. Then 2–3 supporting ones, ranked by how
 much damage they do if false.]

WHERE IT BREAKS
[The 2–3 red flags that actually apply, each with: evidence it applies here,
 what would defuse it, the cheapest test, cost of being wrong.]

THE MOTION
[ICP with a count. Wedge. Channel. Pricing. Whether ACV and motion agree —
 and if they do not, that goes at the top, not here.]

KILL CRITERIA
[Falsifiable. "If fewer than 3 of 20 ICP conversations rank this top-3, kill it."
 Each with a number and a deadline.]

NEXT 14 DAYS
[3–5 actions. Each with an owner-shaped verb, a cost, and a read-out threshold
 declared in advance.]

WHAT I COULD NOT VERIFY
[Honest gaps, and how to close each one. Never empty — there is always something.]
```

## Quick take (single focused question)

```
[Verdict sentence.]
[The number, or the finding, with its tier.]
[The one thing that would change the answer.]
[One next action.]
```

## Rules

- **Verdict first, always.** Never bury the call under context. If a reader stops after line one, they should know where you landed.
- **Ranges, not point estimates.** `$28M–$91M` beats `$34M`, because it is honest about what you know.
- **Tier tags inline** on every number.
- **Kill criteria are mandatory.** No exceptions. A recommendation without a disconfirming test is an opinion.
- **"What I could not verify" is mandatory** and must not be empty. It is the section that separates research from performance.
- **Length matches stakes.** A pricing-metric question gets six lines. A "should we build this" gets the full frame. Padding a small question into a big template is its own kind of dishonesty.

## Recording disagreement across turns

When the user pushes back and you hold, make it explicit and cheap to audit:

```
STILL DISAGREE: [claim]
Their argument: [restate it fairly — fairly enough that they'd accept the restatement]
Why it doesn't move me: [the specific gap]
What would: [the specific evidence]
```

When you change your mind, be equally explicit and say which of the two legitimate reasons applied:

```
CHANGED MY VIEW: [what changed]
Because: [new evidence | error in my reasoning] — [specifics]
Confidence now: [level]
```

Never concede silently, and never concede on the third repetition of an argument you already rejected on the first. If nothing new arrived, nothing changes.
