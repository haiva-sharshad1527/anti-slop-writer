# Before/After Examples

## Example 1: Full Slop Transformation

**Before (AI-generated, every tell present):**
> In today's fast-paced digital landscape, effective communication serves as a cornerstone of organizational success. Let's dive into what makes messaging truly impactful.
>
> Here's the thing: Not only does clear communication enhance collaboration, but it also fosters alignment across cross-functional teams. The interplay between transparency and trust — when cultivated intentionally — creates a vibrant ecosystem where innovation can flourish. Let that sink in.
>
> The data tells us that teams who lean into open dialogue see significant improvements in both productivity and morale. This matters because the modern workplace is evolving at a breathtaking pace. We need to navigate these changes thoughtfully, ensuring that every voice is heard and valued.
>
> - 🚀 **Transparency:** Builds trust and fosters openness
> - 💡 **Collaboration:** Enhances problem-solving capabilities
> - ✅ **Results:** Drives measurable outcomes
>
> Of course, challenges remain. Communication breakdowns can occur. But here's the kicker: by embracing a culture of continuous feedback, organizations can turn obstacles into opportunities. It's not just about talking; it's about connecting.
>
> Would I recommend this approach? Absolutely. The future of work demands nothing less.

**Draft Rewrite (after SPOT + SCORE):**

> Most teams talk past each other. The fix is not another communication framework. It's a habit: say what you mean directly, then ask if it landed.
>
> I've watched teams spend weeks "aligning" in meetings that could have been two emails. The teams that communicate well don't have better tools. They have a lower tolerance for ambiguity. When someone says something unclear, they say "I don't follow" instead of nodding.
>
> Start there. Say what you mean. Ask if it landed. Repeat.

**What makes the above still obviously AI-generated?**
- The structure is clean — too clean. Three tidy paragraphs, each making one point.
- No accidental details. No specific company names, no real people, no messy examples.
- The tone is correct but could still pass for a polished blog post. Needs rougher edges.

**Final Rewrite (after AUDIT + REVISE):**

> Most teams talk past each other. The fix isn't another framework. I sat through a two-hour "alignment workshop" last month that could have been a ten-minute Slack thread, and I keep thinking about the gap between how much we talk about communication and how little we actually do it.
>
> The teams I've seen do it well share one thing: they have a low tolerance for ambiguity. Someone says something vague, and someone else says "I don't follow" instead of letting it slide. That's it. No jargon. No frameworks. Just one uncomfortable sentence at the right moment.
>
> Try it in your next meeting. Someone says "we need to be more aligned" and you say "aligned on what, specifically?" The awkward pause is worth it.

---

## Example 2: Historical Text (Significance Inflation)

**Before:**
> The Statistical Institute of Catalonia was officially established in 1989, marking a pivotal moment in the evolution of regional statistics in Spain. This initiative was part of a broader movement across Spain to decentralize administrative functions and enhance regional governance. The institute stands as a testament to the enduring importance of data-driven policymaking in the modern era.

**After:**
> The Statistical Institute of Catalonia was established in 1989 to collect and publish regional statistics independently from Spain's national statistics office. It was part of a wider decentralization of administrative functions across Spanish regions in the 1980s.

---

## Example 3: False Agency + Binary Contrast

**Before:**
> The decision to enter the market emerged from a careful analysis of competitive dynamics. Not because the timing was perfect. Because the team realized waiting would cost more than acting.

**After:**
> The CEO decided to enter the market after the team calculated that waiting would cost more than acting.

---

## Example 4: Corporate Bloat to Honest Statement

**Before:**
> At the end of the day, when it comes to delivering value to our stakeholders, we need to circle back on our core objectives and double down on what really matters. The landscape is evolving rapidly, and navigating this complexity requires all hands on deck. Let's unpack this together.

**After:**
> We're spending too much time on features nobody asked for. Ship the one thing users are actually requesting, then measure whether it moved the needle.

---

## Example 5: Forbes 2026 Patterns — Quiet + Therapist + Too Clean

**Before:**
> Leadership is a journey. There's no one-size-fits-all approach. You're not alone in struggling with these challenges. And that's okay. The quiet truth is that every leader faces moments of doubt. Are you ready to go deeper? Authentic leadership requires vulnerability, self-awareness, and the courage to be imperfect.

**After:**
> I've been managing a team for three years and I still don't know what "authentic leadership" means in practice. The thing that helped was not a book or a framework. It was another manager telling me "I screw this up too" after a meeting where I tried too hard to sound like a leader instead of just talking to people.

---

## Example 6: Narrative Layer — Tidy AI Story to Human Shape

This one is clean at sentence level but machine-shaped. The RESTRUCTURE pass fixes the shape, then the surface pass polishes.

**Before (AI: theme over-explained + single track + embodied emotion + clean moral + linear + philosophical dialogue):**
> As the final trader hit the station, Mei understood that belonging had never been about the place itself, but the people in it. She had grown up in this cramped corner of the city, her mother's noodle shop threading every memory. When it closed, the whole world felt wrong.
>
> "You know," said the old neighbor, "it was never about the shop. It was about the sense, the community."
>
> A quiet cold passed through her. She finally saw the truth. Some things you can't keep, but you can carry their light forward. She smiled, at peace at last. The city hummed its age-old song around her, and she understood, in that moment, what home really meant.

**RESTRUCTURE (shape-first) notes:**
- 7.1 theme too tidy → cut the direct "what it meant" line, leave the ending hanging.
- 7.2 single-track → give a side-thread (a customer who left money owed).
- 7.3 too-complete ending → don't resolve the sister; keep the sentimental ambiguity.
- 7.4 embodied-mirroring ("cold passed through her," city song) → dump the weather-as-mood; name the actual feeling.
- 7.8 philosophical dialogue → make the neighbor busy instead. purpose.
- 7.7 bare world → name a real, specific, small thing.

**After (RESTRUCTURE then surface):**
> The last freight train left at 11:42. Noor timed it, the same way she always had, by watching the nose of it clear the water tower's shadow at the far end of the platform.
>
> The shop had closed six weeks ago. Nobody had talked about the money Raj owed on the ledger since the funeral — it was the kind of debt nobody bothered to collect. The neighbors kept bringing her spare keys to their storefronts because they didn't know what else to do.
>
> "You're going to eat with us," the ironmonger said. He didn't offer to help her find a job, and that was all he could do without making it a charity.
>
> She did not, at last, know how she felt, and for once she did not need anybody to explain it to her. The shop was gone. People were not the kind of thing that vanished with it. She pulled the ledger from her bag, opened to the first empty page, and started writing down the names of the people who'd borrowed when their daughters were sick.

---

## Example 7: Surface Slop Only (no structure needed)

For a piece that's already structurally rich, the structure pass finds nothing to do; only surface applies. This sanity-checks the two-pass flow.

**Before (surface slop, solid arc):**
> Leveraging cutting-edge methodology, the protagonist's journey in today's world serves as a true testament to the power of procedural change. Still, not only does the character evolve, but he also embraces. The landscape of his growth is intricate, and—consistently across the narrative—he aligns with who he truly is.

**Restructure verdict:** arc is already human (ambiguous finale, unresolved thread). **No narrative edits.** Proceed to surface rewrite only.

**After (surface-only pass):**
> He sought not simply a mark, but a way to stop running. At the meeting, he offered the bank's phone number from the letter, then let his hand rest on the table, waiting for her to push back.

---

## Summary of Changes (what to check)

- Surface pass → check `phrases.md` categories 1-12 and SKILL.md categories 1-6.
- Structure pass → check Category 7 (StoryScope layer) only on a whole piece.
- Score 6 dims, out of 60, pass at 42.
