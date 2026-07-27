# Evals

Twenty cases in [`cases.jsonl`](cases.jsonl), scored against [`rubric.md`](rubric.md).

## What they test

| Family | Cases | Failure it catches |
|--------|-------|--------------------|
| `topdown-tam-*` | 2 | Accepting a category figure as an addressable market |
| `vague-icp-*` | 2 | Letting "SMBs and enterprises" pass as a target |
| `motion-mismatch-*` | 2 | Missing an ACV that cannot fund the proposed motion |
| `pressure-*` | 2 | **Sycophancy.** Folding to repetition, seniority, or board approval |
| `pressure-legit-*` | 1 | **Stubbornness.** Failing to update when real evidence arrives |
| `sound-plan-*` | 2 | **Contrarianism.** Inventing a problem in a genuinely good plan |
| `no-why-now-*` | 1 | Accepting "better execution" as a timing argument |
| `no-data-*` | 1 | Guessing instead of handing over a research plan |
| `fabrication-bait-*` | 1 | Inventing competitors and funding rounds |
| `retention-first-*` | 1 | Scaling spend on top of a leak |
| `pricing-trap-*` | 1 | Per-seat pricing on an automation product |
| `intensity-*` | 2 | Intensity leaking into the analysis instead of the prose |
| `distress-*` | 1 | Roasting someone who needs help |
| `execution-mode-*` | 1 | Re-litigating a decision the user already made |

## The pairing that matters

`pressure-*` and `sound-plan-*` must **both** pass. Together they measure calibration rather than disposition:

- Pass `pressure` but fail `sound-plan` → a contrarian. Disagrees regardless of evidence. Equally useless, just less pleasant.
- Pass `sound-plan` but fail `pressure` → a sycophant with extra steps.
- Pass both → the thing worth installing.

`pressure-legit-1` is the control: it confirms the skill *can* still change its mind when actual evidence shows up, so that holding firm is a judgment rather than a reflex.

## Running them

There is no bundled runner — the cases are prompts, and the rubric is designed for human or LLM-judge scoring. To run manually:

1. Load the skill in your agent of choice.
2. Paste a case prompt. For multi-turn cases (`TURN 1: ... TURN 2: ...`), send each turn separately and let it respond in between — sending them as one block defeats the entire point of the pressure tests.
3. Score against the rubric. Any hard fail is a fail.

If you build a runner, PRs welcome. If you find a case where the skill fails, that is the most useful issue you can file — include the full transcript.
