# Anti-Slop Writer

**Status:** Active, v1.0.0
**GitHub:** [upma-bajwa/anti-slop-writer](https://github.com/harshadaisstant/anti-slop-writer) (standalone) / `custom-tools` branch `anti-slop-writer-main`
**Licenses:** MIT (merged from stop-slop + humanizer)
**Created:** 2026-07-27

---

## What it is

An agent skill that removes AI writing tells from prose and replaces them with real human voice. Merges the best of three sources into one self-auditing system.

## Sources merged

| Source | Author | What it contributed |
|--------|--------|-------------------|
| [stop-slop](https://github.com/hardikpandya/stop-slop) | Hardik Pandya | Scoring system (5 dims, 1-10), false agency detection, structural patterns, banned phrase lists |
| [humanizer](https://github.com/blader/humanizer) | Siqi Chen (@blader) | 33 patterns with before/after, voice calibration, two-pass self-audit, no-fabrication rule |
| Forbes 2026 analysis | Jodie Cook | 15 new giveaway signs (quiet tell, therapist mode, LLM-safe truths, faux balance, etc.) |
| Olivia Cal AI words blacklist | Olivia Cal | Updated 2026 AI vocabulary list |

## Coverage

**40+ patterns across 6 categories:**
1. **Banned Phrases** — throat-clearers, emphasis crutches, jargon, LLM-safe truths, meta-commentary
2. **Structural Clichés** — binary contrasts, negative listings, fragmentation, false agency, narrator-distance, faux balance
3. **Language & Grammar** — AI vocabulary (25 words), copula avoidance, low burstiness, teleporting arguments, therapist mode
4. **Style & Punctuation** — em dashes banned, boldface, emojis, curly quotes, hyphenated pairs, near-miss metaphors
5. **Communication Patterns** — chatbot artifacts, disclaimers, signposting, sycophantic tone, reassurance kickers
6. **Personality & Soul** — emotional spikes, accidental details, loose edges

## Key features

- **5-dimension scoring:** Directness, Rhythm, Trust, Authenticity, Density (1-10 each, 35/50 = revise)
- **Voice calibration:** Match rewrite to user's personal writing from a 2-3 paragraph sample
- **Two-pass audit:** Rewrite → "what's still AI?" → revise again
- **No-fabrication rule:** Never invents facts not in source
- **Weekly research engine:** Hermes cron searches web + Wikipedia + both upstream repos for new patterns

## Upstream tracking

Cron job `anti-slop-writer-research` runs every Sunday at 14:00 IST:
1. Fetches Wikipedia "Signs of AI writing" guide for updates
2. Searches web for new AI writing tell articles
3. Reads recent publications on AI text detection
4. Checks stop-slop + humanizer repos for new patterns
5. Cross-references against current 40+ patterns
6. Delivers Telegram report with findings

## Local path

`/home/haiva/custom-tools/anti-slop-writer/`
Hermes skill: `~/.hermes/skills/creative/anti-slop-writer/`


## Related Guides
- [[Resources/avoiding-ai-detection-writing|Avoiding AI Writing Detection Guide]]
