<p align="center">
  <picture>
    <source media="(prefers-color-scheme: dark)" srcset="https://placehold.co/600x200/1a1a2e/ff7f00?text=ANTI-SLOP+WRITER&font=montserrat">
    <img src="https://placehold.co/600x200/f5f5f5/1a1a2e?text=ANTI-SLOP+WRITER&font=montserrat" width="600" alt="anti-slop-writer">
  </picture>
</p>

<p align="center">
  <b>Remove AI writing tells. Add real voice. Score your prose.</b>
</p>

<p align="center">
  <a href="LICENSE"><img src="https://img.shields.io/badge/license-MIT-blue" alt="MIT License"></a>
  <img src="https://img.shields.io/badge/patterns-40%2B-ff7f00" alt="40+ patterns">
  <img src="https://img.shields.io/badge/hero--projects-stop--slop%20%7C%20humanizer-5865F2" alt="Based on stop-slop + humanizer">
</p>

---

## What this is

An agent skill that removes signs of AI-generated writing from prose. It spots 40+ patterns across 6 categories, scores your text on a 5-dimension rubric, rewrites it, then audits itself and revises again.

Most of what makes text sound AI-generated is not one thing. It's the same tired patterns compounding. Remove them and what remains is still not human — you have to add voice too. This skill does both.

**Based on:** [stop-slop](https://github.com/hardikpandya/stop-slop) (Hardik Pandya) + [humanizer](https://github.com/blader/humanizer) (Siqi Chen) + Forbes 2026 AI patterns analysis.

---

## Quick start

### Hermes Agent

```bash
hermes skills install creative/anti-slop-writer
```

Then load it:

```
Load anti-slop-writer skill.
Then humanize this: [paste your text]
```

### Claude Code

```bash
bash install.sh --claude-code
```

### Manual (any agent)

Copy `SKILL.md` and `references/` to wherever your agent reads skills:

```bash
bash install.sh --manual /path/to/your/skills/
```

---

## How it works

Six phases, every rewrite:

### 1. SPOT

Scan for all 40+ patterns. Every tell flagged before any editing begins.

### 2. SCORE

Rate the text 1–10 on five dimensions:

| Dimension | What it catches |
|-----------|-----------------|
| **Directness** | Announcements instead of statements |
| **Rhythm** | Uniform sentence length (low burstiness) |
| **Trust** | Hedging, hand-holding, telling readers how to feel |
| **Authenticity** | Perfect structure, no emotion, no mess |
| **Density** | Filler, safe truths, repeated ideas |

Below 35/50? Proceed to rewrite. 45+? Publish-ready.

### 3. REWRITE

Remove every flagged tell. Then add voice: opinions, rhythmic variety, specific details, first-person where appropriate.

### 4. AUDIT

Ask a hard question: *"What makes this still obviously AI-generated?"* Answer honestly. This catches patterns the first rewrite missed.

### 5. REVISE

Target every surviving tell. Rewrite again.

### 6. VERIFY

Re-score. If still below 35/50, loop back to step 3.

There is also a **no-fabrication rule**: rewrites never invent facts, names, dates, or citations not present in the source. Specificity comes from the author, not the skill.

---

## The 40+ patterns

### Category 1: Banned phrases
Throat-clearing openers ("Here's the thing," "Let's dive in"), emphasis crutches ("Let that sink in," "Full stop"), business jargon (navigate, unpack, lean into), LLM-safe truths ("Consistency is important"), meta-commentary ("Plot twist," "In this section").

### Category 2: Structural clichés
Binary contrasts (not-X-but-Y), negative listings, dramatic fragmentation, rhetorical setups ("What if I told you"), false agency (data tells us, decision emerges), narrator-from-a-distance ("People tend to"), faux balance, tidy internal references.

### Category 3: Language & grammar
AI vocabulary (25 banned words including "quiet/quietly" — the biggest 2026 tell), copula avoidance (serves as, boasts), -ing constructions, low burstiness, arguments that teleport, therapist mode ("You're not alone," "And that's okay").

### Category 4: Style & punctuation
Em dashes (every single one), boldface overuse, inline-header lists, title case headings, emojis in prose, curly quotes, hyphenated word pairs, metaphors that almost land, correct words in wrong contexts.

### Category 5: Communication patterns
Chatbot artifacts ("I hope this helps," "Great question!"), knowledge-cutoff disclaimers, signposting, sycophantic tone, reassurance kickers.

### Category 6: Personality & soul
The part most AI-fixers miss: removing slop leaves sterile text. This skill adds emotional spikes, accidental details, loose ends, and first-person perspective where appropriate.

---

## Voice calibration

Provide a sample of your own writing (2–3 paragraphs). The skill analyzes:

- Sentence length patterns
- Word choice level
- How you start paragraphs
- Punctuation habits
- Transition style
- Recurring verbal tics

Then matches the rewrite to you, not to a generic "clean" template.

---

## Scoring reference

| Score | Meaning |
|-------|---------|
| 45–50 | Publish-ready |
| 35–44 | Needs light editing |
| 25–34 | Needs significant rewrite |
| < 25 | Start over |

Rate on the full rubric in `SKILL.md` (Category 1.2).

---

## Project structure

```
anti-slop-writer/
├── SKILL.md                    # Full skill definition
├── README.md                   # This file
├── LICENSE                     # MIT
├── CHANGELOG.md                # Release history
├── install.sh                  # Hermes / Claude / manual install
└── references/
    ├── phrases.md              # Quick-reference banned-phrase table
    └── examples.md             # Before/after transformations
```

---

## How the project improves over time

### Research engine (weekly cron)

A Hermes cron job (`anti-slop-writer-research`) runs every Sunday and does **actual research**:

| Source | What it does |
|--------|-------------|
| Wikipedia "Signs of AI writing" | Fetches the guide for updates |
| Web search | Searches for new AI writing tell articles (3-5 queries) |
| Recent publications | Reads new articles about AI text detection |
| stop-slop repo | Checks for new patterns in latest commits |
| humanizer repo | Checks for new patterns in latest commits |

Every pattern found is cross-referenced against our 40+ existing patterns. Only genuinely new discoveries get reported. Nothing invented, nothing unverified.

### How new patterns get added

1. **Research fires** → Telegram delivers a report
2. Report says "New patterns found: 2 → Worth merging: Yes"
3. You tell me to merge → I update SKILL.md with the new patterns
4. Bump version → Push to GitHub

---

## Upstream repos

| Repo | Author | Stars | What it contributes | License |
|------|--------|-------|---------------------|---------|
| [hardikpandya/stop-slop](https://github.com/hardikpandya/stop-slop) | Hardik Pandya | 14.5k | Scoring system, false agency detection, structural patterns | MIT |
| [blader/humanizer](https://github.com/blader/humanizer) | Siqi Chen | 31k | 33 patterns, voice calibration, two-pass self-audit | MIT |

---

## License

MIT. You can use, modify, and redistribute freely. The upstream sources this project merges are also MIT.

---

## Why another anti-slop skill?

Because neither stop-slop nor humanizer alone covers everything:

- **Stop-slop** has a great scoring system but no voice calibration or two-pass audit.
- **Humanizer** has deep pattern coverage and voice matching but no scoring.
- **Both** miss the 2026 pattern evolutions — the "quiet" tell, therapist mode, LLM-safe truths, faux balance, and arguments that teleport.

This skill merges all three sources into one self-auditing, scoring, voice-calibrated system that tracks upstream changes automatically.
