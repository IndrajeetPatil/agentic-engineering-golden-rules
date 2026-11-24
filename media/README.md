# Deck artwork

Every slide illustration is generated with a coding agent's built-in image
generation. This file holds the shared design brief and one complete prompt
per asset. The slide layout and palette are specified in
[DESIGN.md](../DESIGN.md).

## Checklist for new or changed illustrations

1. **Order:** generate `devex-agentex.webp` first. Once approved, it is the
   keystone style reference for every other asset. Then generate
   `one-command-setup.webp` and use it as the character reference for the
   robot and human figures. Generate the rest in any order, with both
   keystones attached as style references.

2. **Inputs:** prepend the [shared design brief](#shared-design-brief) to the
   asset's prompt. If you attach the current version of the asset, label it a
   content reference only: it lists what must appear, not how it should look.

3. **Canvas:** generate the widest landscape size available (16:9 or wider)
   and compose the artwork inside a centred band of about 2:1. Leave plain
   ivory above and below the band; trimming removes it.

4. **Text:** never repeat the slide title or lede, and add no overall title
   inside the art. Every quoted label in a prompt is exact wording; add no
   other words.

5. **Save:** convert to WebP in `media/` (`cwebp -q 90` for PNG or JPEG
   output), then run `just trim-art media/<name>.webp`. It trims blank canvas
   to an even margin and updates the image's `width` and `height` in
   `index.qmd`.

6. **Describe:** keep the slide's `fig-alt` and speaker notes in sync with the
   artwork, and update the asset's prompt below if the content changes.

7. **Verify:** run `just render` and compare the slide with its neighbours at
   slide size. The artwork should fill the stage without clipping, and the
   [review checklist](#review-checklist) should pass.

## Shared design brief

The deck's look is quiet luxury: an ivory page, warm stone, near-black ink,
and gold used like jewellery. The illustrations should feel like plates from a
well-designed technical book, not like clip art or a busy infographic.
Elegance comes from restraint, consistency, and whitespace, not from adding
detail.

```text
DESIGN BRIEF — apply to every illustration in this deck.

Overall feel: a calm, refined editorial plate from a beautifully designed technical book. Quiet, precise, and generous with space. Every element earns its place; when in doubt, leave it out. The idea should be legible in three seconds from the back of a room.

Palette (strict):
- Canvas: flat bright ivory #fdfaf3, edge to edge, with no texture, grain, vignette, or paper effect.
- Panels: very pale warm stone #e9e5db, or simply ivory separated by whitespace. Panel contrast against the canvas is subtle.
- Ink: near-black #141414 for all linework and all text.
- Gold #dac284: only for arrows, connector lines, thin dividers, and short accent rules under headings. Never for panel borders, text, icon fills, or large areas.
- Deep gold #7d6020: only for an occasional secondary text line (a subtitle or example title), never for decoration.
- Semantic accents: at most two, and only where the content needs them: a muted sage #c9d4bf for pass or added, and a dusty rose #e6c9c4 for fail or removed. Use them as small, flat, pale fills behind a word or glyph, never as outlines, never saturated. No yellow, orange, bright green, bright red, or blue unless an asset prompt names it.
- About 85% of the image area is ivory or stone; ink covers most of the rest; colour accents stay under 3%.

Layout and grid:
- Build on an invisible grid. Panels in a row share the same width, height, top edge, and bottom edge, with identical gutters (about 2% of the image width) and identical outer margins.
- Inside panels, align matching elements across panels to shared baselines: headings on one baseline, illustrations on one horizon, captions on one baseline.
- Give each panel one focal point. Leave at least a third of every panel as open space. Nothing touches a panel edge; keep an inner margin of at least 5% of the panel width.
- Use symmetry and centred axes where the content allows; otherwise use a clear left-to-right reading order.
- No more than two levels of containment: a panel may hold cards, but cards never hold boxed sub-cards. Prefer whitespace, alignment, and a single hairline to separate things instead of another box.

Panels and frames:
- Square corners on panels, cards, windows, and documents. Only chips may have a very small corner radius.
- Panels are defined by a pale stone fill alone, or by a single neutral hairline in a slightly darker stone (#d8d2c4). Never give panels or cards gold, coloured, or heavy black borders, accent bars, or glows.
- No drop shadows, gradients, bevels, glossy or 3D effects.

Typography (render text crisply, spelt exactly as given):
- Three sizes only, used consistently everywhere:
  1. Headings: a high-contrast Didone serif like Bodoni Moda or Didot at regular/medium weight (not bold, not condensed, not compressed), sentence case, normal letter spacing. Cap height about 2.2% of the image width (about 34–40 px on a 1600 px wide image). All headings in one image are the same size and sit on one baseline.
  2. Labels: a clean geometric sans like Montserrat at regular weight, sentence case, about 1.4% of the image width (about 22–26 px at 1600 px). Never smaller.
  3. Small caps eyebrows and captions: the same sans in uppercase with wide tracking (about 0.15em), or the serif in italic, at label size or slightly smaller.
- Commands, file names, and code use a neat monospace in near-black, at label size, with no coloured syntax highlighting.
- No bold, no outlined or shadowed text, no all-caps headings, no text on curves, and no full paragraphs. Keep headings to one line where possible; if one must wrap, all sibling headings use the same two-line block height.
- Where an asset shows unspecified text (code, documents, chat), draw it as a few short, evenly spaced pale stone bars, never as fake words.

Line and drawing:
- One drawing language: confident, clean monoline pen-and-ink with round caps and joins. Main strokes about 2.5 px and details about 1.5 px at 1600 px width, used consistently across every object, figure, and icon.
- Flat fills only: ivory, stone, or the semantic accents. No hatching, cross-hatching, stippling, watercolour washes, sketchy double lines, or scribbles. Show mess and disorder through tilt, misalignment, overlap, and repetition, drawn with the same clean line.
- Icons share one family: simple monoline glyphs on the same square size grid, the same stroke weight, no fills except stone, no badges or circles behind them unless the prompt asks.
- Arrows: thin gold lines (about 2 px) with small, open, chevron arrowheads, all the same size. Route connectors straight or orthogonally with softly rounded corners; never let them cross labels or each other. Use at most one arrow style per image (solid), plus dashed only where a prompt asks for a blocked or optional route.
- Ticks and crosses: thin ink glyphs, optionally on a small pale sage or rose disc. Never gold-filled checkboxes or bright badges.

Characters (identical across the whole deck):
- Coding-agent robot: a small, friendly, upright robot drawn in the same monoline. Rounded-square ivory helmet head with two small round ear discs; one wide, dark near-black visor with two simple curved-line eyes (arcs for happy, dots for neutral, small spirals only for the one confused robot that a prompt asks for); a thin antenna with a small round tip; a simple rounded torso and short arms. No colour on the robot except the dark visor. The same proportions in every image.
- Humans: simple, warm, adult figures with clean contour lines, minimal facial features, and plain clothes in ivory or stone. Hair is a flat near-black or stone shape with a few interior lines, not dense curls or hatching. Expressions are clear but restrained.
- Figures are supporting actors: keep each figure to at most about a third of its panel's height, and draw them at a consistent scale within an image. Desks are a single horizontal hairline; laptops are simple outlined shapes with a stone screen.

Never include: plants, foliage, coffee mugs, pencil cups, stacks of books, ceiling lamps, clouds, sparkles, stars, motion or emphasis ticks radiating around objects, sweat drops (unless a prompt asks), confetti, emoji, logos (unless a prompt names one), watermarks, signatures, slide titles, footers, page numbers, or decorative borders around the whole image.
```

## Review checklist

Check every generated image against this list before accepting it.

- Headings are the same size, regular weight, and on one baseline.

- No label is smaller than the label size, and every word matches the prompt.

- Gold appears only on arrows, connectors, and short rules; no panel has a
  gold or coloured border.

- The robot and human figures match the keystone references.

- None of the excluded filler appears: plants, mugs, books, lamps, sparkles,
  or emphasis ticks.

- At least a third of each panel is open space, and the panels share
  gutters, margins, and baselines.

## Asset prompts

Each prompt follows the shared design brief. Labels in quotation marks are
exact.

### devex-agentex.webp

A human and a coding agent connect to the same well-designed codebase,
surrounded by five properties that help both, with speed, quality, and trust
as the shared outcome. This is the keystone style reference.

```text
Layout: a symmetrical composition on a 2:1 band. A centred repository window sits in the middle. On its left, a human; on its right, a coding agent; both connect to the window with a thin gold line ending in a small arrowhead pointing at the window.

Five property panels frame the centre: three across the top in a row of equal widths, and two along the bottom, one at each end. Each panel is a pale stone rectangle with no border. Inside, on the left, a monoline icon on the shared icon grid; on the right, a small deep-gold numeral in the serif, the property heading, a short gold rule, and a sans label line:
- "01" "Clear structure" — "Folders · names · boundaries" — icon: a folder above a small tree of three nodes.
- "02" "One-command workflows" — "Setup · format · lint · test" — icon: a terminal window with a prompt.
- "03" "Deterministic QA" — "Formatters · linters · types · tests" — icon: a shield with a tick.
- "04" "Living documentation" — "README · conventions · examples" — icon: an open book.
- "05" "Modular design" — "Small units · clear interfaces" — icon: three stacked cubes.
All five headings are the same size; the five panels share the same height and internal alignment.

Centre: a square-cornered ivory editor window with a hairline stone border. Window header "well-designed-codebase" in the serif with an outlined folder icon. Left pane: a tidy file tree in sans with outlined folder glyphs (not filled): "well-designed-codebase", "src", "core", "services", "utils", "tests", "docs", "README.md", "package.json", "pyproject.toml", "Makefile". Right pane: one tab "user_service.py" and a few rows of pale stone bars standing in for code.

Figures: the human working at a laptop, and the robot at a laptop, each inside a thin neutral hairline circle of equal size, with the serif labels "Humans" and "Coding agents" beneath, on the same baseline.

Bottom centre, between panels 04 and 05: a single thin gold line joining three small hairline circles containing a lightning bolt, a shield, and a handshake icon, labelled "Speed", "Quality", and "Trust" in sans.

No other text.
```

### one-command-setup.webp

A long manual setup procedure confuses a human and an agent; an `AGENTS.md`
containing one instruction, `run make setup`, gives both the same simple entry
point. This is the keystone character reference.

```text
Layout: two equal side-by-side panels with a slim gutter. Each panel has a centred serif heading with a short gold rule beneath: left "Manual setup", right "One command". Below each heading, a large document sheet with a folded corner, centred in the panel; below the sheet, a human on the left and the robot on the right, each at a laptop on a shared desk hairline. Both panels use identical positions for heading, sheet, and figures so the before-and-after reads as a mirror.

Left sheet: serif title "Project setup", a short gold rule, then a sans numbered list in near-black, evenly spaced, with deep-gold numerals:
"1. Install the required runtime"
"2. Create a virtual environment"
"3. Install project dependencies"
"4. Configure environment variables"
"5. Install the Git hooks"
"6. Start the local services"
"7. Apply database migrations"
"8. Load development fixtures"
"9. Check tool versions"
"10. Verify the setup"
Left figures: the human with a hand on his head and a puzzled frown; the robot with neutral dot eyes and its chin resting on its hand. One small question mark above each figure, no more.

Right sheet: the same sheet size, serif title "AGENTS.md", a short gold rule, then a single line with generous space around it: "run `make setup`", where "run" is sans and "`make setup`" is near-black monospace with literal backticks. Nothing else on the sheet; the empty space is the point.
Right figures: the same human and the same robot, relaxed and smiling, each giving a small thumbs-up.

All four figures are the same scale and large enough to read expressions at slide size. No other text, no terminal windows, no Makefile code.
```

### agentic-stack-anthropic.webp, agentic-stack-openai.webp, and agentic-stack-copilot.webp

The three diagrams share one composition across the introductory slide's
tabs. They show responsibilities, not deployment boundaries. All icons are
original artwork; no third-party logo assets are used, and the product names
identify examples without implying endorsement. Generate the Anthropic
variant first, then generate each other variant as an edit of that output,
changing only the labels in the table.

```text
Layout: a left-to-right architecture diagram on a 2:1 band with three columns: a narrow desktop-app panel on the left (about 20% of the width), a large harness container in the middle (about 55%), and a narrow model-provider panel on the right (about 18%). All three share the same top and bottom edges. Generous ivory gutters between them.

Left panel (pale stone, no border): serif heading "Desktop app", a short gold rule, sans label "Claude Desktop", and below, a simple monoline desktop monitor showing an app window with a sidebar and a stone terminal pane; a keyboard and mouse as simple outlines. A thin gold arrow labelled "Task" in sans leads right into the harness.

Middle container: an ivory rectangle with a single neutral stone hairline border (not gold). Serif heading "Harness · Claude Code CLI", a short gold rule, sans subtitle "Context · permissions · execution". Beneath, the robot at a laptop, with serif label "Agent" and sans "Model + harness in a loop" to its right. Below the robot, two equal pale stone cards side by side:
- Left card: a monoline brain icon, serif "LLM", sans "Claude".
- Right card: a terminal-and-file icon, serif "Tools", sans "Read · edit · shell".
Between the cards, two parallel thin gold arrows: the upper pointing right labelled "Tool call", the lower pointing left labelled "Result". Below the cards, a centred italic sans caption "Model requests. Harness executes."

Right panel (pale stone, no border): serif heading "Model provider", a short gold rule, sans "Anthropic", and a simple monoline server stack.

A thin gold two-way connector runs from the bottom of the LLM card, down below the harness container, along the bottom, and up into the model-provider panel, labelled "Model API" in sans on the horizontal segment. Tools stay inside the harness; nothing implies tools run at the model provider.

Below everything, centred and unboxed, with no rules beside it, an italic serif caption at heading size or slightly smaller: "Task → model → tool → result → repeat".

No rays, sparkles, or emphasis ticks around icons. No vendor logos.
```

| Variant        | Vendor-specific labels                                                                                                                           |
| -------------- | ------------------------------------------------------------------------------------------------------------------------------------------------ |
| Anthropic      | Claude Desktop; Harness · Claude Code CLI; LLM · Claude; Model provider · Anthropic; Model API                                                   |
| OpenAI         | ChatGPT desktop; Harness · Codex CLI; LLM · GPT; Model provider · OpenAI; Model API                                                              |
| GitHub Copilot | GitHub Copilot App; Harness · GitHub Copilot CLI; LLM · Claude; Model developer · Anthropic, Access via GitHub Copilot; Model access via Copilot |

The desktop-app panel names the application only. The Copilot example
deliberately uses Claude: selecting an Anthropic model does not switch the
Copilot harness to Claude Code CLI. Sources are the official
[Claude Code architecture](https://code.claude.com/docs/en/how-claude-code-works),
[Claude Desktop](https://code.claude.com/docs/en/desktop),
[Codex CLI](https://developers.openai.com/blog/codex-as-a-platform),
[ChatGPT desktop](https://learn.chatgpt.com/docs/app), and
[GitHub Copilot App](https://docs.github.com/en/copilot/concepts/copilot-surfaces/github-copilot-app)
documentation.

### common-artefacts.webp

A glossary of four file patterns used with coding agents.

```text
Layout: exactly four equal cards in a centred, symmetrical 2-by-2 grid with identical gutters. Each card is pale stone with no border. Inside each card: on the left third, one large monoline icon centred vertically; a thin vertical stone hairline; on the right, the file name in near-black monospace at heading-adjacent size, a short gold rule, and a sans description. All four file names use one size; all four descriptions use one size; all four rules sit on one baseline per row.

Cards:
1. "AGENTS.md" — "Repository guidance for coding agents" — icon: a document with a code glyph and a small gear.
2. ".agents/skills/<skill-name>/SKILL.md" — "Reusable workflow instructions, with related scripts, references, templates, and assets" — icon: three stacked documents with a code glyph.
3. "DESIGN.md" — "Project design decisions for agents to follow" — icon: a document with a small hierarchy diagram.
4. ".github/prompts/<prompt-name>.prompt.md" — "Reusable focused tasks for GitHub Copilot" — icon: a document with a speech bubble.
Long paths break only after a slash, over at most two lines; short names stay on one line, top-aligned with the long ones.

No rays or emphasis ticks around icons. No other cards or text.
```

### prepare-codebase-for-agents.webp

An agent amplifies the patterns it finds: on the left it multiplies a tangled
codebase; on the right a person prepares clear patterns first and the agent
extends them neatly.

```text
Layout: two equal panels side by side, with a single thin gold arrow in the gutter pointing from left to right. Each panel has a two-line serif heading, left-aligned, with a short gold rule beneath. Both headings use the same size and block height.
Left heading: "An agent amplifies what it finds."
Right heading: "Prepare the patterns before scaling agent use."

Left panel (disorder, drawn cleanly): a small file-tree window ("repo/", "utils/", "helpers/", "Helper/", "common/") with a few tilted duplicate code pages beside it, and a test sheet with a flask icon, two small crosses on pale rose discs, and one empty box. In the centre, the robot with small spiral eyes carries an armful of copied pages. Thin dashed gold lines lead from the inputs to the robot, and one solid gold arrow leads to the output: a larger copy of the same tree ("repo/", "utils/", "helpers/", "Helper/", "common/") surrounded by more overlapping, misaligned code pages. Disorder comes from tilt, overlap, and repetition only — no scribbles, tangles, or crumpled paper.
Three unboxed sans labels, each with a short gold leader line to its subject: "Inconsistent patterns" (the first tree), "Duplicated code" (the duplicate pages), "Weak checks" (the test sheet).

Right panel (order): top row, left to right on one baseline — the human seated at a desk writing on a sheet, a standing code page with a code glyph, a tidy file-tree window ("repo/", "core/", "features/", "infra/"), and a test sheet with a flask icon and three ticks on pale sage discs. A short gold arrow points down to the bottom row: the smiling robot at a laptop, and a wide window showing the same tree ("repo/", "core/", "features/", "infra/") with three identical, neatly aligned code pages beside each folder.
Three unboxed sans labels with short gold leader lines: "Clear conventions" (the code page), "Coherent modules" (the tidy tree), "Reliable checks" (the test sheet).

No speech-bubble label boxes, bottom caption, or other text.
```

### deterministic-tooling.webp

Without guardrails, a confused robot produces inconsistent, failing work;
with a harness of deterministic checks, a calm robot produces consistent
output that passes configured gates, while human review is still needed.

```text
Layout: two equal panels with a single gold chevron arrow in the gutter pointing right. Serif headings, left-aligned, with a short gold rule: left "Without guardrails", right "With guardrails".

Left panel: the robot in the centre with small spiral eyes, a wavy mouth, and both hands raised in a shrug. Around it, six small tilted cards arranged in a loose ring with clear space between them (tilt conveys disorder; no dashed squiggles, scribbles, or crumpled paper):
- a code window with near-black monospace "def calc(x):", "  if x > 0:", "    return x * 2", "  else:", "    return x + 'two'";
- a speech bubble from the robot reading "Maybe this will work?";
- "Hallucinated APIs" with a small ghost glyph;
- "Inconsistent style" with three uneven wavy lines;
- "Broken assumptions" with "A → B → C" above "A → ? → C";
- "Flaky tests" with a cross, a tick, and a cross in small discs;
- "Failed builds" with "#4821" (cross), "#4822" (exclamation mark), "#4823" (cross).
A few loose sheets lie at the robot's feet. One small question mark near its head.

Right panel: on the left half, the same robot standing calmly with hands on hips and happy arc eyes, wearing a harness drawn as seven thin ink bands across its torso, each with a pale stone label plate, top to bottom: "Formatter", "Linter", "Type checker", "Pre-commit", "CI", "Sanitisers", "Valgrind". No leather, buckles, or brown fills.
On the right half, three stacked pale stone cards of equal width, connected to the harness by a thin gold bracket line:
1. Icon: a code glyph. Heading "Consistent style". Monospace "def calc(x: int) -> int:" / "  return x * 2".
2. Icon: a flask. Heading "Configured gates pass". Two lines with thin ink ticks: "Tests", "Types & build".
3. A small drawing of a human reading a page. Heading "Human review still needed". Three sans lines: "Requirements", "Behaviour", "User experience". No tick or badge on this card.
Along the bottom of the right panel, unboxed, a three-step process with outline icons and thin gold arrows: "Change" (document) → "Checks" (gear) → "Human review" (person). No caption beneath.

No other text, metrics, or success badges.
```

### guardrails-workflow.webp

Quality gates as a feedback loop: round one fails, findings return to the
agent, it edits and retries, round two passes, and a human reviews before
merge. Preserve the fail, fix, retry, pass, and human-review steps.

```text
Layout: one wide row on a 2:1 band, divided into three columns of equal width by thin stone hairlines, with serif headings on one baseline, left-aligned: "Round 1", "Round 2", "Review & merge". Thin gold arrows carry the flow left to right.

Round 1: the robot at a laptop, captioned "Coding agent" with "(tireless)" beneath in sans. A gold arrow labelled "Submit change" leads to a gate card: a pale stone card titled "Quality gate" with a small shield icon, and three rows, each with an outline icon, monospace text, and a small cross on a pale rose disc aligned in a right-hand column:
"Lint: 8 findings" (code glyph), "Tests: 3 failing" (flask), "Coverage: below target" (bar glyph).
Beneath the card, a result line on a pale rose band: a thin cross and "Failed".
A gold loop arrow runs from beneath the gate card back under and up into the robot, labelled unboxed "Return findings" with "(fix issues)" beneath.

Round 2: the same robot at a laptop, captioned "Edit & retry", with gold arrows in and out. A second gate card identical in size and layout to the first, titled "Quality gate", rows "Lint: 0", "Tests: pass", "Coverage: target met", each with a small tick on a pale sage disc. Beneath, on a pale sage band: a thin tick and "Passed".

Review & merge: a human at a laptop with a small code card bearing a tick, captioned "Human reviewer" with "(inspect)" beneath. A short gold arrow down to an outlined chip with a merge glyph and "Merge".

Both gate cards align exactly; their rows share baselines. No other text, Ruff branding, rays, or slogans.
```

### define-done.webp

Define the outcome before delegating, choose evidence that fits the task, and
compare tests with requirements because tests can share the agent's mistake.

```text
Layout: three equal panels with serif headings left-aligned on one baseline, each with a short gold rule: "State the outcome", "Choose the evidence", "Compare with requirements". Each panel ends with a centred sans caption on one shared baseline.

Panel 1: the human hands a brief to the robot across a desk hairline. The brief is a large upright card with three rows, each with a small monoline icon: a target "Goal", a gear "Constraints", a padlock "What stays unchanged". Caption: "Give a target, not a script."

Panel 2: three evenly spaced rows separated by thin stone hairlines, each a compact drawing with a sans caption beneath:
- a bug glyph → a report with a cross → a report with a tick; caption "Bug: reproduce, then fix".
- a browser window with a pale sage button and a cursor, with a human's head and hand at its edge interacting; caption "UI: inspect the interaction".
- a stopwatch beside two overlapping line charts, one solid gold trace and one dashed ink trace, with no numbers; caption "Performance: measure".

Panel 3: the human and the robot side by side at the top, the robot holding a magnifying glass, both looking down at two cards joined by a thin gold two-way arrow:
- "Requirements": "Req-1:" with a tick, "Req-2:" with a tick, "Req-3:" with an empty box, each followed by a short pale bar.
- "Test result": "Test-1: pass", "Test-2: pass", "Test-3: fail", with thin tick, tick, and cross glyphs.
Below, two small cards "Test A" and "Test B", side by side, each showing the same cross and the same pale rose highlighted line, to show a shared mistake. Caption: "Tests can share the same mistake."

No plants, mugs, emphasis ticks, success badges, or numbers.
```

### context-rot.webp

As context grows, stale assumptions, repeated corrections, and contradictory
instructions accumulate; usable context drains, and the agent misses the
current requirement and revives a rejected approach.

```text
Layout: three zones read left to right on a 2:1 band, joined by thin gold arrows. Top-left, a small tracked uppercase sans eyebrow "CONTEXT ROT" followed by a thin gold rule running across the top of the image. No large title.

Left zone (start): the robot, happy, at a laptop. Beneath it, two unboxed rows with outline icons: a document "Focused task" and a checklist "Useful context", in sans at label size.

Middle zone (accumulation, the visual centre): a neat stack of four cascading cards, each offset slightly down and to the right, to show build-up: the first shows only a chat-bubble icon and pale bars; then "Stale assumptions" (document with clock), "Repeated corrections" (circular arrows), "Contradictory instructions" (warning triangle). Below the stack, a thin gold rule, then a battery gauge row: a full battery labelled "100%", a gold arrow, a nearly empty battery, with the sans label "Usable context" above and italic "Recall degrades" beside the empty battery. Under the whole zone, a long thin gold arrow pointing right labelled "Context grows".

Right zone (outcome): the same robot, now neutral-eyed with a hand on its chin and one small question mark. Beside it, a pale stone card with a document icon, "Current requirement", and pale bars; a thin gold arrow drops from it into an outcome card below. The outcome card holds a code-window icon on the left and, right of a stone hairline, two rows with thin crosses: "Misses current requirement" and "Revives rejected approach".

All card titles use the label size; no bold. No emphasis ticks or other text.
```

### session-hygiene.webp

Three ways to keep context useful: keep a focused session coherent with a
related follow-up, isolate parallel work in separate Git worktrees, and save
durable knowledge in `AGENTS.md`.

```text
Layout: three equal panels. Two-line serif headings, centred, on one baseline with identical block heights: "Keep a session coherent", "Separate parallel work", "Save durable knowledge". Each panel's scene sits on a shared desk hairline at the same height. At the bottom of each panel, a thin gold brace spanning the panel's content and, centred beneath it, the italic sans caption "Less noise, better recall" on one shared baseline.

Panel 1: the human at a laptop, chin on hand, with the robot beside her. A speech bubble above the robot contains a single document icon. Below the desk, two small pale stone chips joined by a gold arrow: "Focused task" → "Related follow-up".

Panel 2: the robot at a laptop, centred. Two thin gold arrows curve up and outward to two equal outlined windows side by side, each with a folder icon and a code glyph with pale bars: "Worktree A" and "Worktree B".

Panel 3: the robot at a laptop, pointing up to a large document with a folded corner, titled in sans "AGENTS.md" with a short gold rule, then "Conventions · Decisions · Lessons" and a few pale bars. A thin gold arrow rises from the robot to the document.

No plants, mugs, books, pencil cups, shelves, or emphasis ticks. No other text.
```

### know-thy-tools.webp

Three example affordances that users miss, one per product, with an ellipsis
for more and a nudge to read the changelog. Official docs and release notes
were checked on 8 October 2026:
[Claude Code voice dictation](https://code.claude.com/docs/en/voice-dictation),
[Codex CLI image generation](https://learn.chatgpt.com/docs/image-generation),
and
[Copilot CLI computer use](https://docs.github.com/en/copilot/how-tos/copilot-cli/use-copilot-cli/computer-use).
These are illustrative examples, not an exhaustive or exclusive feature
comparison.

```text
Layout: a small tracked uppercase sans eyebrow centred at the top, "EXAMPLE AFFORDANCES THAT USERS MISS", with a short gold rule beneath. Below, three equal pale stone panels with identical gutters; a generous near-black ellipsis "…" sits outside the panels to the right, vertically centred. Below the panels, centred and unboxed with no rules: a small outline document icon and the sans line "Read the changelog. Discover what tools can do."

Every panel has the same structure, centred on its own axis, with every element on a shared baseline across panels: product name (serif heading, one line), feature (italic serif in deep gold, slightly smaller), scene, sans caption, and a command strip (a hairline-outlined strip with the command centred in near-black monospace).

Panel 1: "Claude Code CLI" / "Voice dictation". Scene: a human speaking into a desk microphone; a simple waveform drawn in gold flows into a laptop terminal prompt while the robot sits beside it, listening. Caption "Speak your prompt". Command "/voice".

Panel 2: "Codex CLI" / "Built-in image generation". Scene: a human and the robot looking at an app window showing two simple landscape thumbnails, with a thin gold revision arrow from the first to the second, which is subtly changed. Caption "Generate and edit visual assets". Strip text (sans, not monospace): "Create a matching illustration".

Panel 3: "GitHub Copilot CLI" / "Computer use". Scene: the robot at a laptop terminal; behind it, a desktop app window with an abstract slide being edited and a cursor clicking a selected text box. No readable UI words. Caption "Work in GUI-only desktop apps". Command "/computer on".

Laptop screens are stone, not black. No plants, mugs, pencils, books, sparkles, emphasis ticks, logos, dates, or availability notes.
```

### model-change-maintenance.webp

LLMs maintain prompts, skills, and repository guidance as models, source
code, and CLI tools change.

```text
Layout: three equal panels on a very wide band (about 2.8:1). Serif headings, centred, sentence case, on one baseline with a short gold rule: "LLM changes", "Source changes", "CLI changes". Each panel reads top to bottom in three tiers — trigger, update, result — with the tiers aligned across panels. One robot per panel, drawn at the same scale, appearing in the update tier.

Panel 1:
- Trigger: two monoline chip icons side by side with a gold arrow between them (old model → new model).
- Update: the robot with a pencil, beside two pairs of small documents joined by gold arrows: "PROMPTS" with struck-through lines → "PROMPTS" with fresh lines; "SKILLS" with a gear glyph and struck-through lines → "SKILLS" with fresh lines. Strike-throughs are thin lines on a pale rose band; new lines sit on a pale sage band.
- Result: a gold brace gathering both pairs into a small chip "Update", then a gold arrow down to a clipboard titled "Verify" with three thin ink ticks.

Panel 2:
- Trigger: an outlined window titled in monospace "SOURCE / API", listing "read()", "parse()", "write()" with a gold arrow to "helper.process()" on a pale sage band.
- Update: the robot striking out most bullet lines on an "AGENTS.md" document, with a gold arrow to a shorter "AGENTS.md" with two bullets.
- Result: a gold brace into a chip "Keep simple", then the final short "AGENTS.md", with the robot giving a small thumbs-up beside it.

Panel 3:
- Trigger: an outlined window titled "CLI", listing "tool plan", "tool build", "tool deploy", each struck through on pale rose, with a gold arrow to "tool ship" on pale sage.
- Update: the robot editing a "SKILL.md" checklist, with a gold arrow to a "SKILL.md" containing one bullet "tool ship".
- Result: a gold brace into a chip "Keep concise", then the final "SKILL.md" with "• tool ship", with a small thumbs-up from the robot.

All document titles and code are near-black monospace; chips are small, hairline-outlined, with sans text. No humans, emphasis ticks, or other text.
```

### meta-automation.webp

Capture repeated work once, choose a packaging mechanism, and run it across a
list of items before human review.

```text
Layout: three horizontal tiers separated by thin gold rules, aligned on one four-column grid.

Top tier: four equal panels in a row joined by thin gold arrows, each with a serif heading on one baseline and one centred monoline icon beneath:
"Repeated work" (a stack of checklist pages) → "Capture once" (the robot's head, no rays) → "Run many times" (a fanned stack of identical checklist pages) → "Review results" (a window with an outline bar chart and a tick).

Middle tier (the visual centre, tallest): four equal pale stone panels, each with a large monoline icon, a serif heading, a short gold rule, and a two-line tracked uppercase sans label:
"Prompt" (a page) — "CHANGING INSTRUCTIONS";
"Skill" (an open book) — "DOMAIN KNOW-HOW";
"Slash command" (a terminal window with a prompt) — "STABLE SHORTCUT";
"Workflow" (a small branching flowchart with a decision diamond) — "STEPS & BRANCHES".

Bottom tier: four compact panels joined by gold arrows, each with an icon on the left, a serif label, and a small tracked uppercase sans sublabel:
"Input list" (bulleted list) — "ITEMS / REPOS / PRs";
"For each item" (circular arrows) — "RUN AUTOMATION";
"Collect results" (stacked pages) — "LOGS / OUTPUTS";
"Human review" (person with a small tick) — "FIX / MERGE / NOTIFY".
A dashed gold line runs beneath the bottom tier from "Human review" back to "For each item", ending in a small arrowhead, to show the loop.

Icons are outline only, no filled bars or dark fills. No other text.
```

### meta-automation-examples.webp

Four concrete examples of packaged automation: a prompt, a skill, a slash
command, and a workflow.

```text
Layout: a spacious 2-by-2 grid of four equal pale stone panels with identical gutters. Each panel has, top-left: a serif heading, a short gold rule, and an example title in deep-gold italic serif at a smaller size; then one compact diagram; then, centred at the bottom on a shared baseline, a tracked uppercase sans caption.

Top left: "Prompt" / "Dependency update". A document with a folded corner and a small monospace tab "update-deps.md", containing three monospace lines: "Refresh dependencies", "Fix compatibility breaks", "Run QA; prepare a draft PR". A gold arrow to the robot's head. Caption "REUSABLE INSTRUCTIONS".

Top right: "Skill" / "PR screenshot". Three steps joined by gold arrows, each a simple outlined frame with a sans label beneath: a browser window with an abstract image ("Preview app"), a dashed capture frame around the same image ("Capture"), and a pull-request sheet with the image attached ("Attach to PR"). Beneath the middle step, a small monospace tag "frontend-pr-screenshot". Caption "PACKAGED KNOW-HOW".

Bottom left: "Slash command" / "Address review comments". A wide terminal input line with a prompt chevron and large monospace "/address-review". Beneath, three columns joined by gold arrows: three comment bubbles with pale bars, a crossed wrench-and-screwdriver glyph, and three resolved comment rows with thin ticks; sans labels "Read threads", "Fix", "Reply" aligned beneath. Caption "ONE SHORTCUT TO A SAVED PROMPT".

Bottom right: "Workflow" / "Vulnerability management". A clean flowchart with outlined square nodes, ink arrows, and no crossings: "Scan" → "Triage" → a decision diamond "Worth fixing?" (two lines). The "yes" branch runs right: "Fix" → "Verify" → "Draft PR". The "no" branch drops down to "Record reason". Caption "STEPS, DECISIONS, AND EVIDENCE".

Ticks are thin ink glyphs, not filled discs. No other text, numbers, or IDs.
```

### sdlc-bottlenecks.webp

Coding agents accelerate implementation, while human queues build at Review
and Verify. This is the problem state only; the practice slide shows the
remedies.

```text
Layout: one left-to-right pipeline of five panels on a 2:1 band, with serif headings on one baseline, centred, each with a short gold rule: "Plan", "Code", "Review", "Verify", "Release". Plan, Code, and Release are narrow and equal; Review and Verify are wider and equal to each other, so the queues have room. Thin gold arrows join the panels, each carrying a small code-page icon between stages.

Plan: a calm human at a laptop.
Code: two robots stacked vertically, each typing at a laptop, smiling and fast.
Review: a long, tidy queue of identical pull-request cards receding in a neat row across the top of the panel; below it, a human reviewer at a laptop, visibly flustered, hand on head, with neat piles of paper on either side of the desk hairline.
Verify: a shorter queue of browser-window cards with checklist glyphs; below, a second, different human at a laptop, also flustered, hand on head, checking a checklist on screen.
Release: a single simple outline rocket lifting off, with no smoke cloud or rays.

The queues should read as orderly but overwhelming through length and repetition, not mess. At most two small sweat drops per flustered figure. No automation, remedies, captions, or other text.
```

### bottleneck-examples.webp

Three responses to delivery bottlenecks: Rust-based Python tools for slow
lint and type checks, an LLM review loop for pull-request queues, and E2E
tests for manual behaviour checks.

```text
Layout: three equal panels. Each panel has the same three tiers aligned across panels: a bottleneck chip at the top, a "before" scene, a short gold arrow pointing down, an "after" scene, and an intervention chip at the bottom. Chips are small, with a hairline stone outline and a very small corner radius, ink sans text at label size, centred on the panel axis, and identical in height.

Panel 1: top chip "Slow lint/type checks". Before: a human resting his chin on his hand at a laptop, a short stack of pending code cards beside him, and a simple clock with a pale gold wedge showing elapsed time. After: the robot at a laptop beside a short list with thin ink ticks: "Ruff", "uv", "ty". Bottom chip "Rust-based tools".

Panel 2: top chip "Pull request queues". Before: a stack of pull-request cards with branch glyphs beside a human with both hands on his head. After: a two-way loop of thin gold arrows between two robots, the left labelled in serif "Author" at a laptop and the right labelled "Reviewer", wearing round glasses and holding a checklist; a small code card travels along the top arc and a checklist card along the bottom arc. Bottom chip "LLM review loop".

Panel 3: top chip "Manual behaviour checks". Before: a tired human at a laptop in front of three stacked browser windows, the front one showing a flow of three icons — home → list → cart. After: the robot at a laptop with three gold branch arrows leading to three browser cards showing the home, list, and cart icons, each with a thin tick on a pale sage disc. Bottom chip "E2E tests".

No gold chips, filled checkboxes, or other text.
```

### agent-autonomy.webp

Delegate action, gain capacity, and accept less direct control. This image is
also the palette reference for canvas and panel brightness.

```text
Layout: three equal panels with equal gutters. Serif headings, centred, sentence case, on one baseline: "Act on your behalf", "More capacity", "Less direct control". The same woman developer — short dark curly hair drawn as a simple flat shape, light blouse — appears in every panel, at the same scale. Muted blue-grey #c9d3dc and the shared sage accent are allowed as small flat fills on interface and architecture details only.

Panel 1: the woman hands a small card titled "Task Brief" with three bullets "PR", "Release", "Logs" to the robot at a laptop. Three thin gold arrows fan down to three equal outlined windows:
- a simple GitHub mark with "GitHub", "Pull Request", "#482", and "Status:" with "Submitted" on a pale sage tag;
- a taped cardboard parcel icon with "agent-kit", "v1.6.0", and "Status:" with "Published" on a pale blue-grey tag;
- the Azure ribbon mark in its signature blue with "Azure", "Container Logs", and three monospace lines "2025-01-26 10:24:17Z", "INFO Starting app...", "INFO Ready on :8080".
Beneath each window, a command strip in monospace: "gh pr create", "npm publish", "az container logs".

Panel 2: top, the robot at a laptop with three gold arrows branching to three task rows, each with a code glyph, pale bars, and a small sage progress dot. Bottom, the woman at a large upright drawing board titled in italic serif "System Architecture", sketching a diagram: "Web App" at the top, gold arrows down to "API Service" (blue-grey fill) and "Worker" (sage fill) linked by a two-way arrow, and both down to a "Database" cylinder (blue-grey fill).

Panel 3: a monitor showing a settings card: sans heading "Agent access"; a row "Autonomy" with a three-stop slider set to the highest stop; a row with a document icon "Review required" and a toggle; a row with a padlock "Scoped access:" over "specific repos & actions" and a toggle; and an italic serif line "Match access to the task". The woman sits at the desk, leaning forward, hand on the mouse, adjusting the slider; the robot sits beside the workstation, hands off the keyboard, waiting. Beneath, two chips side by side: a handshake icon with "Trust ↑" on pale sage, and an eye icon with "Oversight cost ↑" on pale dusty rose, both with near-black text.

Order the panels as delegated action, visible benefit, then trade-off. No plants, foliage, mugs, emphasis ticks, captions, or other text.
```

### guardrails-autonomy.webp

Infrastructure enforces autonomy boundaries: a protected `main` branch blocks
a destructive change, and a VPN gateway gives the agent access to one isolated
environment at a time.

```text
Layout: two equal panels with a slim gutter. No headings; the labels carry the meaning. Both panels centre their diagram vertically.

Left panel: the robot at a laptop on the left, with a speech bubble containing a document and a small trash-can glyph on a pale rose disc (the attempted deletion). A Git branch diagram runs right from a small outlined tag "main": the robot's change meets a node marked with a thin cross on a pale rose disc, where it is stopped; beyond it, the main line continues through two nodes to an outline padlock and on to a final node, with two side branches above and below, each with two nodes on pale sage. Unboxed serif label "Protected main" above the padlock. Below the branch: a group of three connected nodes on a pale sage band labelled in serif "Required checks", with a gold arrow up into the padlock; and, beside it, a person icon with a thin diagonal strike, labelled "No admin bypass", whose dashed gold route toward main ends in a small cross.

Right panel: at the top, an outlined gateway device with a small Wi-Fi glyph above it, labelled in serif "VPN". A gold arrow drops to a two-position selector card "Choose one environment" with a toggle set to the right. On the left, an outlined server stack under the label "PRODUCTION" on a pale rose band; a dashed line from the selector to it ends in a cross. On the right, a server stack under "NON-PRODUCTION" on a pale sage band; a solid gold arrow connects the selector to it, and another gold arrow runs down from it to the robot working at a laptop below. Production is visibly separate and inaccessible; nothing bridges the two environments.

The padlock is an ink outline, not yellow. No other text, foliage, or logos.
```

### software-factory.webp

A feature request flows through coding, a pull request with UI screenshots
and a red-and-green diff, automated quality gates, an independent review
loop, and agent-led merge. Findings can lead to adjusting skills and
`AGENTS.md` before the next attempt. The magnified checklist names 17 checks
from the repository's `make qa`, with an ellipsis indicating that more
follow.

```text
Layout: two tiers. The top tier is a row of seven equal, narrow pale stone panels joined by thin gold arrows, each with a serif heading on one baseline (two-line headings share one block height) and one compact drawing below. The bottom tier is a large magnified inset beneath the middle of the row.

Top row, left to right:
1. "Developer": a laptop with a code glyph beside a small card "Feature request".
2. "Coding Agent": the robot at a laptop beside a database cylinder with a code glyph, labelled "Repository".
3. "Pull Request": a window with a branch glyph and pale bars, a diff card with one line on pale rose with "−" and one on pale sage with "+", and two small screenshot thumbnails labelled "UI screenshots".
4. "Automated QA gates": a single outline gear with a tick. A small magnifying-glass circle sits on this panel's bottom edge.
5. "Independent Reviewer Agent": the robot holding a magnifying glass over a checklist.
6. "Merge" with "(by Coding Agent)" in smaller sans beneath: the robot at a laptop. A small thin tick on a pale sage disc sits on the arrow between panels 5 and 6.
7. "Completed Feature": a browser window with an abstract landscape and a button, captioned "Web App".

Feedback loop above the row: a thin gold line rises from panel 5, runs left past an unboxed serif label "Findings", reaches a small stacked-documents icon labelled "Adjust skills & AGENTS.md", and drops with an arrowhead into panel 2.

Inset: two thin gold lines widen from the magnifying glass down to a large ivory rectangle with a neutral stone hairline border. Inside, centred: the serif heading "Quality harness", and beneath it the italic serif subtitle "example gates" between two short gold rules. Then three evenly spaced columns separated by stone hairlines, each a list with small outline checkboxes holding thin ink ticks:
Column 1: "File naming", "Backend format", "Config format", "Markdown format", "Backend lint", "Markdown lint".
Column 2: "Spell check", "Workflow lint", "Link check", "Type check", "API schema", "Dependency audit".
Column 3: "Backend tests", "Mutation tests", "Type coverage", "Frontend QA", "Security scan".
Centred at the bottom of the inset, italic serif "… and more".

The inset heading is the same size as the panel headings, not larger, and in sentence case. No gold checkboxes, gold panel borders, emphasis ticks, or other text.
```

### constituents-of-success.webp

An equation: four safeguards add up to low-touch feature delivery, with a
person focused on higher-level work and retaining oversight.

```text
Layout: five equal pale stone panels in one row on a wide band (about 3:1), separated by generous gutters holding large, thin gold operators: "+" between panels 1–2, 2–3, and 3–4, and "=" between panels 4–5, each vertically centred on the panels. Every panel has a serif heading block of the same height (two lines where needed, centred, one baseline across panels), and beneath it a smaller sans outcome line starting with "→", on one shared baseline:
1. "Quality gates" / "→ High code quality".
2. "Verification harness" / "→ Verified behaviour".
3. "LLM reviewer" / "→ Issues surfaced early".
4. "Self-evolving artefacts" / "→ Current agent guidance".
5. "Low-touch feature delivery" (no outcome line; the drawing sits on the same horizon as the others).

Drawings, all at the same scale and resting on one desk hairline:
1. The robot at a laptop beside a code window and a simple outline gate arch framing a checklist with three thin ticks.
2. The robot at a laptop below a browser window with an abstract image and a button under a cursor, plus a small card comparing two identical images with "=".
3. Two robots in a two-way loop of thin gold arrows: an implementer robot at a laptop and a reviewer robot with a magnifying glass. Between them, a card "Findings" with an exclamation glyph and pale bars on a pale rose band, travelling one way, and a card "Revised change" with a "+" and pale bars on a pale sage band, travelling the other.
4. The robot at a laptop; a findings card with an exclamation glyph on pale rose above it, with a gold arrow down; a gold loop arrow to a document with a code glyph and three bullets "Guidance", "Prompts", "Skills".
5. A calm human at a laptop, chin on hand, looking past a browser window with an abstract image and a button with a tick; a small speech bubble with a person icon beside her signals available oversight.

Beneath the row, a thin gold rail runs under panels 1–4 with a small outline shield holding a thin ink tick below each, then turns up into panel 5 with an arrowhead.

No mugs, emphasis ticks, green checks, or other text.
```

### giga-factory.webp

A background daemon selects one due prompt and activates one project's proven
software factory; other projects wait their turn. Faulty guidance is
corrected at an artefact-adjustment station.

```text
Layout: a large, unmistakable factory building in the centre-right of a 2:1 band, with the daemon on the left, the maintainer on the right, and a queue of projects beneath.

Factory: a clean outline building with a sawtooth roof of four bays and two simple chimneys, walls in very pale stone, and a factory floor with a conveyor belt drawn as a long rounded band on small rollers. A small hairline sign on the facade reads in serif "One project's software factory". Inside, no lamps, beams, or windows: keep the interior open so the stations read clearly.

Stations along the conveyor, left to right, each with a small sans label above it on one baseline:
- an intake post with a small instruction sheet and a prompt card;
- "Adjust skills & AGENTS.md": an open book on a station, outlined, with a pale gold-tinted backdrop only here;
- "Coding agent": the robot at a laptop;
- "Quality gates": an outline gate arch with a checklist of thin ticks;
- "Verification harness": a browser window with an abstract image and a button with a tick;
- "LLM reviewer": a robot with a magnifying glass at a laptop;
- "Verified pull request": a document with a branch glyph and a small tick on a pale sage disc.
Thin gold arrows connect the stations along the belt. A gold feedback line rises from "Quality gates" and "LLM reviewer", runs left above the stations, and drops into "Adjust skills & AGENTS.md".

Left: a pale stone panel titled in serif "Background daemon", containing a clock with a small gear and circular arrows, and a short list of three repository rows (cube icon, pale bars, status circle), the top row selected with a pale gold tint and a filled ink dot. Below it, a small outlined card with a document icon "Due prompt", from which a gold arrow enters the factory intake. No person operates the daemon.

Right: a gold arrow leaves the factory to a human maintainer at a laptop, labelled "Maintainer review".

Bottom: from the daemon, a gold line runs along the bottom to two small outlined repository windows (cube icon, pale bars, status circle), each captioned "Next project", followed by a gold arrow and an ellipsis "…". One active run at a time.

The daemon never codes, checks, reviews, or merges. No lamps, smoke, emphasis ticks, mugs, or other text.
```

### social-media-card.webp

The social card is the deck's typography and palette reference and is not
regenerated with the slide illustrations.

## Integration checks

Convert selected PNG output with `cwebp -q 90` and keep the WebP in this
folder. Inspect the complete image, including all labels and arrow
directions, then render with `just render`. Check the image slides in
presentation and scroll views. Keep alternative text and speaker notes aligned
with the selected artwork. Re-run `just axe` after changing slide markup.
