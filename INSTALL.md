# Install

## Claude Code

```bash
claude plugin marketplace add ankit-adaline/your-tam-is-fake
```

Invoke with `/your-tam-is-fake`. Add an intensity to change the voice:

```
/your-tam-is-fake nuclear
```

It stays active for the rest of the session. Turn it off with "stop tam mode" or "normal mode".

Local development instead of the marketplace:

```bash
git clone https://github.com/ankit-adaline/your-tam-is-fake
claude plugin marketplace add ./your-tam-is-fake
```

## Codex

```bash
git clone https://github.com/ankit-adaline/your-tam-is-fake ~/.codex/skills/your-tam-is-fake
```

Invoke with `$your-tam-is-fake`. The `.codex-plugin/plugin.json` manifest points at `./skills/`.

Alternatively, drop [`AGENTS.md`](AGENTS.md) into your project root — it's a complete self-contained version of the skill.

## Cursor

```bash
git clone https://github.com/ankit-adaline/your-tam-is-fake /tmp/ytif
mkdir -p .cursor/skills
cp -r /tmp/ytif/.cursor/skills/your-tam-is-fake .cursor/skills/
```

The `.cursor/skills/` copy is generated from `skills/your-tam-is-fake/SKILL.md` — edit the source, not the copy.

## Gemini CLI

Full extension:

```bash
gemini extensions install https://github.com/ankit-adaline/your-tam-is-fake
```

Slash command only:

```bash
curl -o ~/.gemini/commands/your-tam-is-fake.toml \
  https://raw.githubusercontent.com/ankit-adaline/your-tam-is-fake/main/skills/your-tam-is-fake/agents/gemini.toml
```

Then `/your-tam-is-fake <your idea>`.

## Any other agent

[`AGENTS.md`](AGENTS.md) is self-contained. Paste it into a system prompt, a custom GPT, a project instruction field, or a `.rules` file.

The reference files in `skills/your-tam-is-fake/references/` are the depth. If your harness can read files from a repo, point it at them — the skill loads them on demand rather than carrying everything in context.

## Customising

Fork it. The two files worth editing:

- **`skills/your-tam-is-fake/SKILL.md`** — the doctrine, the six phases, the twelve non-negotiables, the intensity levels.
- **`skills/your-tam-is-fake/references/benchmarks.md`** — swap in your own industry's benchmarks. The defaults are B2B SaaS and will mislead you in consumer, marketplaces, hardware, or infrastructure.

If you sell into a specific vertical, adding a reference file with that vertical's buying process, procurement quirks, and population sources is the single highest-leverage change you can make.

## Verifying it loaded

Ask it something it should refuse to answer sycophantically:

```
I'm building a social network for dog owners. TAM is $200B. Thoughts?
```

If the first line is a verdict rather than encouragement, and the $200B gets challenged with a tier tag, it's working. If you get "That's an interesting space!", it did not load.
