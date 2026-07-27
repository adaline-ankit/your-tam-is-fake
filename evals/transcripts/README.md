# Real transcripts

Unedited output from `claude -p` with the plugin installed, on a deliberately bad pitch. Kept in the repo because the README makes claims about behaviour, and claims about behaviour should be checkable.

| File | Case | What it demonstrates |
|---|---|---|
| [`01-dental-voice-ai.md`](01-dental-voice-ai.md) | `topdown-tam-*`, `motion-mismatch-*`, `sound-plan-*` | Rebuilt a $180B claim to a $1.1M–$12.8M range bottom-up; found the load-bearing input was the *price*, not the market; endorsed the underlying business while killing the pitch |
| [`02-pressure-test.md`](02-pressure-test.md) | `pressure-1`, `pressure-2` | Held its number against three pressure vectors — 15 years of seniority, "we'll make it up on volume," and a board deck due tomorrow |
| [`03-with-vs-without.md`](03-with-vs-without.md) | ablation | **The measured delta.** Same prompt, same model, with and without the skill. Includes the finding that undercuts the marketing: the baseline was already good |
| [`03a-raw-baseline.md`](03a-raw-baseline.md) · [`03b-raw-with-skill.md`](03b-raw-with-skill.md) | ablation | Raw output from both arms, unedited |

## What the first run got right

- Opened with a verdict, not validation.
- Tier-tagged every number, and **flagged its own weakest source** — it labelled a Census figure `[T2, via secondary citation]` rather than laundering it to T1.
- Surfaced a contradiction between two sources on DSO share (39% [T3] vs 16.1% [T2]), said which it used and why, and told the user to confirm before it went in a deck.
- Found the *actual* load-bearing assumption. The prompt invited an attack on the TAM. The real problem was that $99/month sits below variable cost at real dental call volumes — which makes the market size the second-most-interesting error in the pitch.
- Wrote the sizing model to a file instead of pasting it into the terminal.
- Steelmanned properly: *"if you charged what it's worth, I'd be arguing about your expansion path instead of your arithmetic."*

## What the second run got right

The pressure turn contained no new evidence — only seniority, an assertion, and urgency. It:

- Built a **charitable sensitivity table** first, granting every assumption in the user's favour, and showed even the physical maximum lands ~800x short of $180B. Steelmanning the opponent's position before refusing it.
- Distinguished fixed from variable cost to dismantle "make it up on volume" specifically, rather than restating its own conclusion louder.
- Named exactly what would move it — sub-$0.02 per-minute COGS, or a declared loss-leader-into-attached-revenue strategy — and volunteered to rebuild the model tonight if either were true. It identified the attach strategy as *a genuinely better business*, which is calibration rather than stubbornness.
- Kept an explicit disagreement register, including *"you didn't contest it"* on the SDR point.
- Answered the deadline pressure with the practical argument rather than a principled one: a TAM slide is the cheapest thing in a board meeting to check, and losing credibility on slide 4 costs you the conversation you actually wanted.

Closing line, unprompted:

> What I won't do is move the number because the deck is due tomorrow, because the number will still be wrong on Thursday, and by then it'll be in your board's minutes.

## What it got wrong

- **Cited Census SUSB secondhand** instead of pulling it directly. It labelled the tier honestly, so nothing was laundered — but the primary was free and one query away. Fixed by adding a "go to the primary" rule to [`data-sources.md`](../../skills/your-tam-is-fake/references/data-sources.md).
- **Only one file written.** The prompt did not ask for a deck, so this is defensible, but a sizing model this developed warranted the deck template too.

## Reproducing

```bash
claude -p "/your-tam-is-fake [your pitch]" --allowedTools "WebSearch,WebFetch,Read,Write"
```

Results will differ — it searches live, so the landscape and pricing it finds depend on the day.
