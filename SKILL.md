---
name: anti-slop-writer
description: "Strip AI tells from prose and replace them with real voice. Merges 40+ surface patterns with StoryScope narrative-structure tells (plot shape, temporal complexity, ambiguity) into a scoring-and-rewrite system."
version: 1.1.0
author: Merged from hardikpandya/stop-slop, blader/humanizer + Forbes 2026 research
license: MIT
platforms: [linux, macos, windows]
metadata:
  hermes:
    tags: [writing, editing, anti-slop, humanize, voice, prose, text]
    category: creative
    related_skills: [humanizer, songwriting-and-ai-music]
---

# Anti-Slop Writer

Remove AI writing patterns and replace them with human voice. Not just a ban list — this skill scores, rewrites, self-audits, and revises until the text passes as human.

## Origin

This skill is a **merged, improved version** of two existing open-source skills:

- **[stop-slop](https://github.com/hardikpandya/stop-slop)** (Hardik Pandya) — 14.5k⭐, MIT. Scoring system, false agency detection, strict phrase bans.
- **[humanizer](https://github.com/blader/humanizer)** (Siqi Chen / @blader) — 31k⭐, MIT. 33 patterns, voice calibration, two-pass self-audit.

Plus **2026 updated patterns** from Forbes (Jodie Cook, Feb 2026) and Olivia Cal's AI words blacklist.

Most of what looks AI-generated is not one thing. It's the same handful of tics compounding. This skill catches them all in one pass.

There are **two layers** to AI tells:

1. **Surface layer** — words, phrases, punctuation, rhythm (the sentence-level tells below).
2. **Narrative layer** — how the *story* is built: plot shape, temporal complexity, ambiguity, how meaning is revealed (Category 7 below).

Research on AI fiction (StoryScope, UMD + Google DeepMind, 2026) found that detecting AI work by **narrative structure alone** matches 97% of a model that also uses style. That means edit-it phrase-level slop away all you want; if the underlying story is still tidy, over-explained, single-track AI, it still reads as AI. This skill is now, so it catches and fixes both.

## When to use this skill

- You wrote something with AI assistance and need to strip the tells before publishing
- You're reviewing a draft and something feels "off" but you can't name what
- You read back your own AI-assisted writing and it sounds like a press release
- You want to calibrate output to match your personal writing voice
- You need a score to decide if prose is ready to publish
- A piece "passes" a surface check but still reads machine-made (structure problem)

## The Approach: Spot, Score, Restructure, Rewrite, Audit

This skill runs a five-phase process:

1. **SPOT (two pass)** — Surface pass scans the 40+ surface patterns; Structure pass scans the 9 narrative tells (Category 7).
2. **SCORE** — Rate on the 6-dimension scoring rubric. Below the threshold = needs revision.
3. **RESTRUCTURE (only for narrative tells)** — Attack story-shape issues before touching sentences.
4. **REWRITE** — Remove every AI-ism. Add voice (opinions, rhythm, specificity).
5. **AUDIT** — Ask "What makes this still obviously AI-generated?" Then revise again.

---

## THE 40+ PATTERNS

### Category 1: Banned Phrases & Filler

These are AI's most overused constructions. Cut them on sight.

**1.1 Throat-Clearing Openers**

| Banned | Why |
|--------|-----|
| "Here's the thing:" | Announces the good part instead of stating it |
| "Here's what/this/that [X]" | Redundant preview |
| "Let me be clear" | If you need to say it, you probably weren't |
| "The uncomfortable truth is" | Dramatic setup for a mediocre take |
| "It turns out" | Faux-revelation |
| "The real [X] is" | Pretends previous info wasn't real |
| "Let's dive in" / "Let's explore" | Signposting. Just start |
| "Can we talk about" | Permission-seeking opener |
| "Here's the problem though" | Negative throat-clear |

**1.2 Emphasis Crutches**

| Banned | Why |
|--------|-----|
| "Full stop." / "Period." | Pretending finality adds it |
| "Let that sink in." | Don't tell readers how to feel |
| "Make no mistake" | Empty gravitas |
| "This matters because" | Show it matters or cut it |
| "Here's why that matters" | Same |
| "The best part?" | Announces a payoff |
| "But here's the thing / the kicker" | Faux-dramatic reveal |

**1.3 Business Jargon**

| Banned | Use instead |
|--------|-------------|
| Navigate (challenges) | Handle, address |
| Unpack | Explain, examine |
| Lean into | Accept |
| Landscape (abstract) | Situation, field |
| Game-changer | Varies — probably nothing |
| Double down | Commit |
| Deep dive | Analysis |
| Moving forward | Next, from now |
| Circle back | Return to |
| On the same page | Aligned |
| At the end of the day | When it matters |
| When it comes to | For, regarding |
| In a world where | If |

**1.4 Vague Declaratives & LLM-Safe Truths**

Sentences that are accurate, non-controversial, and teach nothing. Readers learn nothing.

| Tell | Problem |
|------|---------|
| "Consistency is important." | Who disagrees? |
| "The implications are significant." | Which ones? |
| "The reasons are structural." | Name them |
| "The consequences are real." | Show one |
| "Building relationships takes time." | Remove and say nothing changes |
| "Success requires hard work." | Same |

Test every sentence: **would anyone disagree?** If not, cut it or sharpen it.

**1.5 Performative Emphasis & Meta-Commentary**

| Banned | Why |
|--------|-----|
| "Plot twist:" / "Spoiler:" | Cutesy framing |
| "Hint:" | Meta-aside |
| "The rest of this essay [X]" | The essay moves itself |
| "In this section, we'll..." | Just start the section |
| "As we'll see..." | Let the reader see it |
| "I want to explore..." | Explore it |
| "X is a feature, not a bug" | Formulaic defense |
| "Dressed up as" | Editorializing |
| "You already know this, but" | Then don't say it |
| "creeps in" | Performative concern |

### Category 2: Structural Clichés

**2.1 Binary Contrasts (Not-X-But-Y)**

Pattern: "Not because X. Because Y." / "The question isn't X. It's Y." / "It's not X, it's Y."

These create false drama by pretending to debunk something obvious. State Y directly.

- **Before:** "Building products isn't hard because of technology. It's hard because of people."
- **After:** "People make product-building hard, not technology."
- **Before:** "The answer isn't more features. It's fewer."
- **After:** "Ship fewer features."

**2.2 Negative Listings**

Pattern: "Not a X. Not a Y. A Z." / "It wasn't X. It wasn't Y. It was Z."

The rhetorical striptease — listing what something *isn't* before revealing what it *is*. State Z.

- **Before:** "Not a tool. Not a framework. A philosophy."
- **After:** "It's a philosophy."

**2.3 Dramatic Fragmentation**

Pattern: "[Noun]. That's it." / "X. And Y. And Z." / Sentence fragments stacked for punch.

Reads as manufactured profundity. Use complete sentences.

- **Before:** "Speed. Quality. Cost. Pick two. That's it."
- **After:** "Speed, quality, cost — pick two."
- **Before:** "This unlocks something. Trust."
- **After:** "It unlocks trust."

**2.4 Rhetorical Setups**

Pattern: "What if [reframe]?" / "Think about it:" / "Here's what I mean:"

Announces insight instead of delivering it. Make the point.

- **Before:** "What if I told you the best teams optimize for learning, not productivity? Think about it."
- **After:** "The best teams optimize for learning, not productivity."

**2.5 False Agency (Inanimate Subjects)**

Giving objects human verbs to avoid naming the actor. **This is one of the strongest tells.**

| Before (False Agency) | After (Name the Human) |
|----------------------|------------------------|
| "a complaint becomes a fix" | "The team fixed it" |
| "the decision emerges" | "The CEO decided" |
| "the culture shifts" | "People changed how they work" |
| "the data tells us" | "We read the data and concluded" |
| "the market rewards" | "Buyers pay for" |
| "a bet lives or dies" | "We kill the project or ship it" |
| "the conversation moves toward" | "She steered the conversation toward" |

If the subject of the verb is not a person, rewrite it until it is. Use "you" if no specific person fits.

**2.6 Narrator-from-a-Distance**

Floating above the scene. Abstract observations instead of putting the reader in it.

| Before | After |
|--------|-------|
| "Nobody designed this." | "You don't sit down one day and design this." |
| "This happens because..." | "Here's why: [specific cause]" |
| "People tend to..." | "Most of the founders I know..." |
| "This is why..." | "I saw this happen when..." |

**2.7 Formulaic "Challenges and Future" Sections**

AI loves closing with a boilerplate "Despite challenges, continues to thrive" paragraph.

- **Before:** "Despite these challenges, Korattur continues to thrive as an integral part of Chennai's growth."
- **After:** "Traffic increased after 2015 when three IT parks opened. The municipality started a drainage project in 2022."

**2.8 Faux Balance Without Consequence**

Gestures at "both sides" or admits a concern, then proceeds as planned. Nothing is weighed.

- **Before:** "AI tools raise valid concerns about job displacement. However, their benefits in productivity are undeniable."
- **After:** State the tradeoff honestly. "AI cuts some jobs and creates others. Which outweighs which depends on the industry."

**2.9 Internal References Too Tidy**

"As mentioned above." Threads that weave too neatly. Paragraphs that loop back to the intro.

Human writers leave threads hanging. They contradict themselves slightly. If your essay references its own earlier framing too perfectly, you look like a machine.

### Category 3: Language & Grammar Tells

**3.1 AI Vocabulary (The Word List)**

| Overused | Replace with |
|----------|-------------|
| Actually | Nothing — cut it |
| Additionally | And, also, or nothing |
| Align with | Match, fit |
| At its core | Nothing |
| Crucial | Important, or name why |
| Delve | Explore, examine |
| Enduring | Lasting, or cut |
| Enhance | Improve |
| Fostering | Building, creating |
| Garner | Get, receive |
| Highlight (verb) | Show, point out, or cut |
| Interplay | Interaction |
| Intricate / Intricacies | Complex / details |
| Key (adj.) | Main, central, or cut |
| Landscape (abstract) | Field, situation |
| Pivotal | Important |
| Quiet/quietly | Most instances — cut them |
| Showcase | Show, feature |
| Tapestry (abstract) | Cut completely |
| Testament | Proof, sign |
| Underscore | Show, emphasize (or cut) |
| Valuable | Worthwhile, or show the value |
| Vibrant | Lively, busy, or specific detail |

**2026 update:** The word **"quiet"** is now one of the biggest tells across every LLM. Quiet confidence. Quiet rebellion. Quietly growing. Search and kill most instances.

**3.2 Copula Avoidance**

LLMs substitute elaborate constructions for simple "is/are/has."

- **Before:** "Gallery 825 serves as LAAA's exhibition space. The gallery boasts over 3,000 square feet."
- **After:** "Gallery 825 is LAAA's exhibition space. It has 3,000 square feet."

Avoid: serves as, stands as, marks, represents, boasts, features, offers (as copula substitutes).

**3.3 Superficial -ing Constructions**

Participles tacked on to add fake depth.

- **Before:** "...symbolizing the region's deep connection to the land, reflecting the community's values, showcasing its heritage."
- **After:** Cut everything after the period. Say the literal thing.

**3.4 Overused Rhetorical Constructions**

| Pattern | Problem |
|---------|---------|
| "Not only X, but Y" | Negative parallelism — overused by LLMs |
| "..., no guessing" | Tailing negation |
| "It's not just about X, it's about Y" | Setup/reveal |
| "Honestly? [unremarkable statement]" | Fake candor |
| "Do you want to sit with that for a while?" | Therapist mode nobody asked for |
| "You're not imagining it" / "You're not alone" | Unsolicited validation |
| "I'm going to state this as clearly as possible" | Announcing directness you don't deliver |
| "Here's the part most people miss" | Setup phrase that doesn't deliver |
| "Are you ready to go deeper?" | Coaching question in wrong context |

**3.5 Sentences That March in Formation (Low Burstiness)**

Human writing varies rhythm. Short punch. Then longer winding sentence. Then medium.

AI tends to uniform sentence lengths, especially in longer pieces. Every sentence the same beat. Read aloud — if it sounds like a metronome, break the pattern.

**3.6 Arguments That Teleport**

Mid-paragraph, the logic jumps. One sentence makes a point, the next introduces a conclusion without a bridge. Token-level generation causes seams.

Test every paragraph: "Does this sentence follow from the last?" If you squint to see the connection, rewrite it.

### Category 4: Style & Punctuation

**4.1 Em Dashes**

Banned. Every one. Use periods, commas, colons, or parentheses.

**4.2 Boldface Overuse**

**Before:** "The system blends **OKRs**, **KPIs**, and **the Balanced Scorecard**."
**After:** "The system blends OKRs, KPIs, and the Balanced Scorecard."

**4.3 Inline-Header Vertical Lists**

**Before:** "- **User Experience:** The UX has been improved."
**After:** "The update improves the interface and adds end-to-end encryption."

**4.4 Title Case in Headings**

**Before:** "## Strategic Negotiations And Global Partnerships"
**After:** "## Strategic negotiations and global partnerships"

**4.5 Emojis**

**Before:** "🚀 Launch Phase: Q3 | 💡 Key Insight: Users prefer simplicity"
**After:** "The product launches in Q3. Users prefer simplicity."

**4.6 Curly Quotation Marks**

Use straight quotes (`"..."`). Not curly (`"..."`).

**4.7 Hyphenated Word Pairs**

Common pairs are over-hyphenated by LLMs.

| Over-hyphenated | Better |
|-----------------|--------|
| cross-functional | cross functional |
| client-facing | client facing |
| data-driven | data driven |
| third-party | third party |
| high-quality | high quality |
| well-known | well known |
| real-time | real time |
| long-term | long term |
| end-to-end | end to end |

Only hyphenate when the compound is genuinely needed for clarity (and keep it rare).

**4.8 Metaphors That Almost Land**

AI generates comparisons that sound clever but feel off, like the model doesn't fully understand the concept it's comparing.

A business strategy compared to "tuning a guitar" when the analogy doesn't map. If a metaphor misses, even slightly, remove it entirely.

**4.9 Correct Words in Wrong Contexts**

Formal verbs in casual contexts. Clinical word choices in warm places. If it sounds like someone learned English from a textbook, replace it.

**4.10 Punctuation Brandishing (Announcing the Good Part)**

| Banned | Why |
|--------|-----|
| "Here's the kicker." | Announces a payoff |
| "The best part?" | Same |
| "But here's the thing." | Faux-revelation |
| "I'm going to say it." | Overpromises |

### Category 5: Communication Patterns

**5.1 Chatbot Artifacts**

| Banned | Context |
|--------|---------|
| "I hope this helps!" | End of an AI reply, not content |
| "Let me know if you'd like to expand" | Same |
| "Would you like me to..." | Same |
| "Certainly!" / "Of course!" / "Great question!" | Sycophantic tone |
| "You're absolutely right!" | Flattery |

**5.2 Knowledge-Cutoff Disclaimers**

| Banned | Why |
|--------|-----|
| "As of [date], it appears that..." | Uncertainty hedge |
| "While specific details are limited in available sources..." | LLM disclosing its limits |
| "Based on available information, it seems that..." | Same |
| "It's worth noting that..." | Filler |

**5.3 Signposting & Announcements**

| Banned | Why |
|--------|-----|
| "Let's dive in" / "Let's explore" | Tutorial script feel |
| "Here's what you need to know" | Meta-commentary |
| "Now let's look at" | Needs-toilet signposting |
| "Without further ado" | Outdated ceremony |

**5.4 Sycophantic / Servile Tone**

- "Great question!" → State the answer.
- "You're absolutely right that this is complex." → "It's complex" or nothing.
- Overly positive people-pleasing language → Respond directly.

**5.5 Reassurance Kickers**

- "And that's okay." → Trust the reader.
- "There's nothing wrong with that." → Same.
- "You're not broken." → Especially bad — therapist mode.

### Category 6: Personality & Soul (What to Add)

Removing bad patterns is only half the job. Sterile, voiceless writing is as obvious as slop.

**Missing emotional spikes.** Humans writing about something they care about can't help but show it. Irritation at bad advice. Enthusiasm for a method that works. AI maintains neutral emotional temperature. Get annoyed. Get excited. Take a position that might alienate someone.

**Too clean to be human.** Human writing includes accidental details. Throwaway numbers. Oddly specific but unimportant facts. A story that mentions the weird art in the lobby. AI avoids this messiness unless forced. Every detail serves the argument. Let some mess in.

**End a sentence the way no one thought it octopus.** Real life has loose ends.

---

### Category 7: Narrative & Structural Tells (StoryScope layer)

> StoryScope (UMD + Google DeepMind, 2026) analyzed 61,608 stories: 10,272 writing prompts, each written by a human and by five LLMs. Narrative-structure features alone hit **93.2% macro-F1** detecting human vs AI, holding 97% of the signal that style+structure combined reach. A compact set of **30 core features** carries most of it. The tells below are those core signals. They live in the *shape* of the story, so each one needs the whole piece to evaluate, not a single paragraph.

**7.1 Theme Over-Explained (AI 77% vs human 52%)**

AI states the moral/theme outright. Human ends leave the reader to do the work.

- **Before:** After everything, Mira understood that love was never about possession, but about letting go.
- **After:** Mira mailed the keys back. Then she had no idea what to do with herself.

**7.2 Single-Track Plot / No Subplots (AI 79% no subplot vs human 57%)**

One clean causal chain, every scene serves the single main line. Human stories allow an unresolved side-thread.

- Fix: add one counter-story, a secondary concern that the main plot never fully resolves.

**7.3 Tidy Causal Closure + Acceptance Endings (AI 69% protagonist-driven, 47% acceptance-ending vs 46%/27%)**

AI wraps up. The conflict is resolved, the protagonist accepts their fate, and the meaning is digestible. Human endings are often shaggy, ambiguous, or unresolved.

- Fix: don't resolve everything. Let one thread dangle. Let the last emotion be ambiguous, not settled.

**7.4 Embodied Emotion / Environmental Mirroring (AI 81% vs human 38%)**

AI conveys feeling through physical sensation and weather-as-mood ("her throat tightened," "the rain fell like the world's sadness"). Human naming is more direct.

- *Before:* A cold wind wrapped the alley as Maya's throat tightened. The gray sky seemed to mourn with her.
- *After:* Maya was afraid of what she'd find at number 14. She'd rehearsed the line for two blocks.
- This is the "show don't tell" default. The AI tell is that it's *always* embodied, never named. Mix both; name the emotion sometimes.

**7.5 Choices Too Morally Clean**

AI protagonist choices are legibly right/wrong. Human wants morally ambiguous stakes where the good option isn't obviously good.

- Fix: give the protagonist a choice with a real cost, where they might pick the worse option for understandable reasons.

**7.6 No Temporal Complexity (flashbacks, time-jumps, achronology)**

AI runs linear chronology. Human disrupts time.

- Fix: start in the middle, flash back, shift tense, withhold the cause until late. Not every story needs this, but the AI default is one straight line.

**7.7 Vague Allusions / No Outside World (specificity AI 24% vs human 47%)**

AI gestures broadly ("the old ways"). Humans name real texts, authors, streets, objects.

- *Before:* "She had read all the important novels."
- *After:* "She kept Chesterton's *The Man Who Was Thursday* on her nightstand and had never finished it once."

**7.8 Dialogue Does Philosophical Graffiti (AI 59% vs human 34%)**

AI puts the thesis into character mouths; talkers debate the theme instead of pursuing their own agendas.

- *Before:* "Don't you see, Asha? It's never been about the map. It's about the journey."
- *After:* "Hand me the map," Asha said. "I'm not lost, I'm just slow."

**7.9 Low Rarity / Too Blueprint-Clean**

Human stories are rarer in feature-space: more unusual combinations, strange references, accidental detail, messiness. AI clusters in a crowded tidy center.

- Fix: one odd, singular, unmotivated beat in the piece. A weird hobby, wrong turn, off-series word, a character who is specific in an un-need way.

### How to fix narrative tells (RESTRUCTURE)

1. Only use these on a whole piece (or whole scene/arc), not a one-sentence snippet.
2. Fix structure first, then surface. A tidy story with clean sentences still reads AI.
3. The **no-fabrication rule still applies**: bring a subplot, flashback, named work, or ambiguous turn from the *author's* material, or write around it in first-person sentiment — never invent facts the source doesn't support. In fiction that the author owns, adding a beat is fine; in non-fiction, do not invent events or citations.
4. You don't need all nine. Select the 2-4 that the piece is worst at. Over-fracturing kills readability.

---

## SCORING SYSTEM

Rate the text 1-10 on each of six dimensions. Total out of 60. Below 42/60 = needs revision before publishing.

| Dimension | What it measures | Score 1-3 | Score 8-10 |
|-----------|-----------------|-----------|------------|
| **Directness** | Statements or announcements? | Mostly announcements, meta-commentary | States points directly |
| **Rhythm** | Varied or metronomic? | Uniform sentence lengths, same cadence | Short, long, medium — varied |
| **Trust** | Respects reader intelligence? | Hedging, hand-holding, telling reader how to feel | Assumes reader follows |
| **Authenticity** | Sounds human? | Perfect structure, no emotion, no mess | Has opinions, specificity, loose edges |
| **Density** | Anything cuttable? | Filler, safe truths, repetition in every paragraph | Every sentence earns its place |
| **Narrative Depth** | How human is the story's shape? | Tidy single track, theme over-explained, linear time, clean moral, low rarity | Subplot/Temporal looseness, ambiguity, specific references, some structural surprise |

**Interpretation (out of 60):**
- **54-60:** Publish-ready
- **42-53:** Needs light editing
- **30-41:** Needs significant rewrite
- **Below 30:** Start over

---

## VOICE CALIBRATION

To match your personal writing style, provide a sample of your own writing (2-3 paragraphs). Analyze before rewriting:

1. **Sentence length patterns** — Short punchy? Long winding? Mixed?
2. **Word choice** — Casual or academic? Jargon level? Any pet phrases?
3. **How paragraphs start** — Jump right in? Set context first?
4. **Punctuation habits** — Lots of dashes? Parenthetical asides? Semicolons?
5. **Transitions** — Explicit connectors? Sink between points?
6. **Recurring verbal tics** — Any words you overuse or avoid?

Then match the rewrite to those patterns. Removing AI patterns is only half; swap in *their* patterns.

**When no sample:** Default to natural, varied, opinionated voice (see Personality & Soul above).

---

## REWRITE PROCESS

```
Step 1: SPOT (two pass)
         Surface pass  — scan for the 40+ surface patterns (Categories 1-6). Flag each.
         Structure pass — scan the 9 narrative tells (Category 7). Only assessable on a whole piece/arc.
Step 2: SCORE  — rate on 6 dimensions. If below 42/60, proceed.
Step 3: RESTRUCTURE — (only if structure tells present) attack story-shape first:
         open a theme, add a subplot temp, un-wind an ending, add temporal looseness, name
         something real, add one unmapped beat. Do this BEFORE any sentence-level edit.
Step 4: REWRITE — remove every flagged surface tell. Add voice, specificity, rhythm.
Step 5: AUDIT  — "What makes this still obviously machine-shaped?" Name surviving tells
                  (surface AND structural). 
Step 6: REVISE — target every surviving tell. Rewrite again.
Step 7: VERIFY — re-score. If still below 42/60, loop from Step 3.
```

### No-Fabrication Rule

The rewrite must never invent facts, names, dates, statistics, or citations not present in the source text. Specificity comes from the source or the author. If the source is vague, write with first-person sentiment ("I'm not convinced by this") rather than invented specifics.

---

## Examples

See `references/examples.md` for full before/after transformations.

---

## Reference Files

| File | Contents |
|------|----------|
| `references/phrases.md` | Full banned-phrases table (all categories) |
| `references/examples.md` | Before/after transformations for each pattern category |

---

## Common Pitfalls

1. **Over-rewriting to the point of blandness.** Fixing AI tells by making everything flat and generic is not improvement. Add voice alongside removal.
2. **False positives on intentional style.** Some writers use em dashes deliberately. If someone has a calibrated voice that uses them, make a case-by-case call — but for AI-generated default text, kill them.
3. **Hallucinating specifics during rewrite.** The no-fabrication rule is not optional. When the source lacks specifics, write "I disagree with this framing" rather than making up a counterargument.
4. **Skipping the narrative pass.** Cleaning surface slop but leaving a tidy, over-explained, single-track story still reads as AI. Do both.
5. **Over-structuring.** Applying all nine narrative fixes at once produces a fractured mess. Pick the 2-4 your piece is worst at.
6. **Ranking structure before surface when there's no structure problem.** If the piece is genuinely narrative-rich and only the prose is sloppy, treat it as a surface-only run; don't invent subplots where the author didn't have them.
7. **Scoring too generously.** Be harsh on the first pass. 42/60 is a pass for "needs editing" not "good."

---

## Installation

The skill is bundled with Hermes Agent (creative category). You can also install manually:

```bash
git clone https://github.com/upma-bajwa/anti-slop-writer.git ~/.hermes/skills/creative/anti-slop-writer
```

Or use the install script:

```bash
bash install.sh --hermes       # Hermes Agent
bash install.sh --claude-code  # Claude Code
```

---

## Upstream Tracking & Research

A Hermes cron job (`anti-slop-writer-research`) runs every Sunday and does real research:

1. **Wikipedia** — fetches the "Signs of AI writing" guide for updates
2. **Web search** — searches for new AI writing tell articles (3-5 queries)
3. **Recent publications** — reads new articles about AI text detection
4. **stop-slop repo** — checks for new patterns in latest commits
5. **humanizer repo** — checks for new patterns in latest commits

Every discovery is cross-referenced against our 40+ existing patterns. Only genuinely new findings get reported. Nothing invented.

When new patterns are found, you'll receive a Telegram report. Tell me to merge them and I update the skill.

---

## License

MIT. This skill merges MIT-licensed work from:
- [stop-slop](https://github.com/hardikpandya/stop-slop) by Hardik Pandya
- [humanizer](https://github.com/blader/humanizer) by Siqi Chen
- Wikipedia's [Signs of AI writing](https://en.wikipedia.org/wiki/Wikipedia:Signs_of_AI_writing) guide (WikiProject AI Cleanup)
- Forbes 2026 analysis by Jodie Cook

Full text in [LICENSE](LICENSE).
