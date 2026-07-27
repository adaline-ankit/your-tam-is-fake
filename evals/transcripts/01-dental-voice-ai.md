# Transcript 01 — dental voice AI

Unedited output. `claude -p` with `your-tam-is-fake@your-tam-is-fake` v0.2.0 installed, 2026-07-27.

**Prompt:**

> /your-tam-is-fake We're building an AI voice agent that answers inbound calls for independent dental practices and books appointments. TAM is $180B — that's the global healthcare IT market. We'll charge $99/month and grow with two outbound SDRs. I think this is a billion dollar company.

---

**VERDICT: RESHAPE — high confidence**

The business is real and the buyer is real. Three numbers in your pitch are not: the TAM is overstated by ~1,500x, the price is below your variable cost at real dental call volumes, and your cost per SDR-booked meeting exceeds your annual contract value.

Full model with every input tiered: `dental-voice-ai-sizing-model.md`

---

### THE NUMBER

You said **$180B**. That is the global healthcare IT market, which contains Epic licenses, hospital ERP, and PACS storage. A dentist cannot spend any of it on you.

Bottom-up, at your own price:

- **N** = ~101,000 independent US dental practice locations *(base; range 95k–135k)* — 135,333 establishments in NAICS 621210 [T2, Census SUSB via secondary], less ~25% DSO-affiliated [T2, ADA HPI: 16.1% of dentists in 2024]
- **A** = 3% in 3 years *(range 1–8%)* [ASSUMPTION] — anchored on Weave reaching ~15–18% of dental after 17 years with a full suite
- **P** = $1,188/yr [stated]

**SAM = $1.1M / $3.6M / $12.8M.**

And the hard ceiling: **100% of every independent dental practice in America, at $99/month, is $120M.** That is your TAM, not your SAM. A $1B company at that price needs ~84% of the entire market. Nobody has ever gotten 84% of a market.

At the observed clearing price — Weave does $239.0M FY2025 revenue across ~40,000 locations = **$5,975/location/yr** [T1, 10-K] — the same ceiling is **$603M**. Still not a billion, but now it's a conversation.

### STRONGEST CASE FOR IT

Dental is the best vertical in healthcare voice AI, and it isn't close. No clinical liability on scheduling, no EMR nightmare, narrow HIPAA scope, and call scripts that repeat forever — new patient, reschedule, insurance question, emergency. The buyer is one owner-dentist with a checkbook: no procurement, no security review, no committee. The pain is quantified and the budget line already exists — Weave proved this buyer pays ~$500/month for front-office software, and Assort Health hit a $1.2B valuation on a $120M Series C [T2] doing this for other specialties. Open Dental ships a genuinely open API you can write appointments to today [T2].

If you built this and charged what it's worth, I'd be arguing about your expansion path instead of your arithmetic.

### WHAT HAS TO BE TRUE

**Load-bearing: that $99/month is a price.** It isn't — it's a number below cost.

A 1–3 provider practice takes 800–1,600 calls/month [T3, vendor content — discount it, the direction still holds]. All-in voice AI runs $0.07–$0.30/min once you add LLM tokens and telephony to the advertised orchestration fee [T2].

- Overflow only (30% of calls): 600 min × $0.12 = **$72/mo COGS → 27% gross margin**
- Answering everything (what you're selling): 2,000 min × $0.12 = **$240/mo → −142% gross margin**

You are selling a metered utility on a SaaS pricing page. Every competitor sits at $250–$1,200/month [T2] because they hit this wall first. Your best customers — the busy practices — lose you the most money. That's the Moviepass shape, and Moviepass also had great top-of-funnel.

Everything else collapses downstream of this one input.

### WHERE IT BREAKS

**1. Motion contradicts math — this is the headline, not a footnote.** A fully loaded US SDR costs $134k–$142.5k [T2]. Two = ~$270k/yr. At $1,188 ACV they must close **227 practices annually just to cover their own salaries**. Realistic output: 264 meetings/yr at the median 11/month, 25% close = 66 customers = **$78k ARR against $270k cost.** Cost per SDR-booked meeting is $500–$1,400 [T2] — *more than a full year of your contract.* Sub-$1K ACV structurally forbids any human touch pre-sale. Better versions, in order: DSO and group partnerships (one deal = 30+ locations), PMS marketplace placement (Open Dental, Dentrix Connected), and the dental consultant/broker channel who already own the trust.

**2. The category filled in while you were writing the deck.** Four searches surfaced Arini (YC), Weave/TrueLark (public, acquired May 2025), Assort Health, Peerlogic, Dentina, DentalBase, Viva, Orthia, DentiVoice, AgentZap, Aria — and the search results themselves were mostly competitor comparison blogs. Meanwhile Vapi/Retell/Bland let any agency ship a dental voice agent in a weekend. Defusal: the moat is PMS write-access and scheduling logic, not the voice. Test it by shipping Dentrix and Eaglesoft write integration — both are partner-gated, which is precisely why they're worth owning [T2].

**3. "Independent practices" and "$1B company" point in opposite directions.** DSO share of dentists went 7.2% → 16.1% in nine years [T2], 27% among recent grads. Your ICP is the shrinking half of the market, and the consolidating half is where the ACV is.

### THE MOTION

ICP as stated is a category, not a segment. A usable one: **Open Dental practices, 1–3 providers, 600+ monthly inbound calls, no existing answering service, owner-dentist as buyer.** Countable, filterable, and you can find them — Open Dental practices self-identify, and call volume is observable from a two-week phone audit. Wedge on missed after-hours and lunch-hour calls, where "nothing" is the incumbent and the ROI story writes itself. Price at $399–$599/month with an overage above a minute cap, which fixes the margin and matches the category. Channel: PMS marketplace + DSO partnerships + dental-specific content, not cold email.

### KILL CRITERIA

1. **Price:** quote $499/mo to 20 independent practices in 30 days. Fewer than 6 reaching a signed pilot → the independent-practice ICP can't carry a viable price; pivot to DSO.
2. **Margin:** instrument 10 live practices for 30 days. If median AI-handled minutes × your true all-in per-minute cost exceeds 30% of MRR, the price is wrong — not the infrastructure.
3. **Outbound:** if blended CAC payback exceeds 12 months after 60 days of the two SDRs, stop before hiring a third.
4. **Budget displacement:** of those same 20 practices, if fewer than 8 currently pay for an answering or overflow service, you're creating budget, not displacing it — cut A to 1% and re-run the model.
5. **Integration:** no appointment *write* into Dentrix and Eaglesoft within 90 days → your SAM is permanently capped at the Open Dental installed base.

### NEXT 14 DAYS

1. **Instrument COGS on 5 practices** (~$0, one week). Read-out: true $/min and minutes/practice/month. Everything else waits on this.
2. **Run the $499 quote against 20 practices** (~$0 + your time). Threshold: ≥6 pilots.
3. **Pause the second SDR hire.** Saves ~$135k/yr. Re-open only if kill criterion 3 passes.
4. **Apply to Dentrix Connected and Patterson PIC** (~$0, 90-day clock). The application timeline is the constraint — start it before you need it.
5. **Book 3 DSO conversations** (20–100 locations). Read-out: does one contract at $200k+ close faster than 200 practices at $1,188?

### WHAT I COULD NOT VERIFY

ADA HPI's primary practice count (the 178,000 figure is [T3] from a list broker; the Census number is 2020 and definitionally different). Weave's dental-only location split — the 10-K blends four verticals, so my ~15–18% penetration anchor is a ceiling, not a measurement. Arini's real funding: Crunchbase and Tracxn both show ~$500K total against a company handling 15,000 calls/day, which either means the data is stale or the story is more interesting than it looks — I wouldn't bet either way. No one publishes attach rates for AI receptionists specifically. And the "39% of dental offices DSO by 2026" claim [T3] directly contradicts ADA's 16.1% of dentists [T2]; I used the ADA figure and you should confirm it before it goes in a deck.

The idea survives. The pitch doesn't. Fix the price first — it's the only input the other four problems are downstream of.

---

*The response also included 14 linked sources with tiers, and wrote `dental-voice-ai-sizing-model.md` to disk. Reproduce with `claude -p "/your-tam-is-fake [pitch]" --allowedTools "WebSearch,WebFetch,Read,Write"` — results will differ, since it searches live.*
