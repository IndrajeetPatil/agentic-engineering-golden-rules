# Deck artwork

The seven rule illustrations were restyled with built-in image generation.
The guardrails workflow was generated from its original decision path, and
the setup contrast illustrates a shared one-command entry point. The automation
examples draw on chatbot-template prompts and its PR screenshot skill. The
tool-affordance examples were checked against current official docs. Final
assets are WebP; the social card is the deck's typography and palette reference.
The social card already matched the theme and was retained.

## Shared style prompt

For each rule illustration, supply the previous version of the same image as
image 1 (edit target) and `social-media-card.webp` as image 2 (style reference).
Previous versions remain available through Git history. Apply this shared
style prompt followed by the asset-specific instructions below.

```text
Restyle into a refined editorial infographic matching the supplied slide social-card style: flat ivory #fdfaf3 background, warm stone #e9e5db square panels, near-black #141414 text and fine line illustrations, restrained gold #dac284 hairlines and borders ONLY, dark brown #7d6020 where emphasis needs text. Elegant high-contrast Bodoni/Didot serif headings, legible Montserrat-like sans-serif labels. Spacious, disciplined layout, thin rules, square corners, confident professional composition. No blue, green, purple, red, bright colours, gradients, glossy 3D, rounded UI cards, heavy shadows, or excessive decoration. Keep text clear, large and sparse enough to read when projected. Keep the original conceptual message and visual metaphor; improve hierarchy and clarity. No slide number or redundant large slide title. Landscape 16:9 composition. No watermark.
```

## devex-agentex.webp

```text
Redesign image 1 with a central well-designed codebase, a human on the left and a coding agent on the right, both connected to the same repository. Surround it with five orderly panels labelled exactly "Clear structure", "One-command workflows", "Deterministic QA", "Living documentation", "Modular design". Supporting labels respectively "Folders · names · boundaries", "Setup · format · lint · test", "Formatters · linters · types · tests", "README · conventions · examples", "Small units · clear interfaces". Bottom line "Speed · Quality · Trust". Label human and agent "Humans" and "Coding agents". Avoid tiny simulated code or long paragraphs. Preserve the five properties and shared-benefit meaning.
```

## deterministic-tooling.webp

```text
Two panels: left title "Without guardrails", a confused line-drawn robot amidst tangled papers labelled "Inconsistent style", "Flaky tests", "Broken assumptions", "Hallucinated APIs", "Failed builds". Right title "With guardrails", the same calm robot wearing an elegant safety harness with seven clearly readable straps labelled "Formatter", "Linter", "Type checker", "Pre-commit", "CI", "Sanitisers", "Valgrind". Neat output panels "Consistent code", "Passing tests", "Quality gates". Footer "Deterministic inputs → Checks → Consistent outcomes". Preserve the harness metaphor; don't imply passing checks alone proves production safety.
```

## bitter-lesson.webp

The current revision uses only the previous `bitter-lesson.webp` as its edit
target and style reference, with the following complete prompt.

```text
Use case: infographic-diagram. Edit image 1, the existing "Intent over ceremony" presentation illustration. Keep its refined editorial visual identity: landscape 16:9, flat ivory #fdfaf3 background, warm stone #e9e5db square panels, near-black #141414 text and pen-and-ink robot drawings, restrained gold #dac284 hairlines and borders, dark brown #7d6020 for occasional text emphasis, elegant Bodoni/Didot serif headings, highly readable Montserrat-like sans-serif labels. Redesign the content and layout to incorporate two concrete prompting examples, strong tools, and explicit agent self-verification. Keep the figures expressive but professional; generous space, crisp projected-slide legibility. No overall slide title, watermark, glossy 3D, bright colours, gradients, tiny simulated code, or decorative clutter.

Two side-by-side panels, left roughly 40% of width, right roughly 60%.
LEFT heading exactly "Ceremony". Under it one large instruction sheet with five short lines, each clearly legible:
"Open utils.py at line 40."
"Add a try block."
"Add exactly three tests."
"Use single quotes."
"Do not deviate."
Below the sheet, a confused robot tangled in a few fine strings attached to the instruction sheet. Bottom caption exactly "Prescribed route".

RIGHT heading exactly "Intent". At top one spacious brief, with this exact text on separate lines:
"Fix the failing date-parsing test."
"Preserve the public API."
"Keep the diff small."
"Explain any trade-off."
Below the brief, show one compact tool tray headed "Strong tools" with readable labels "Search", "Docs", "Debugger", "Formatter", "Linter", "Type checker", "Tests", "CI". Use small restrained line icons if helpful; do not turn this into the largest element.
Below, a calm, engaged robot actively inspecting check results at a laptop. A clearly visible results sheet next to the robot shows three short checked items: "Tests", "Types", "Build". Above or next to this scene, a prominent readable label exactly "Agent verifies its own work". Make the checking activity as important as the tool tray.

At bottom of RIGHT panel only, ONE feedback loop drawn using three connected nodes in a horizontal row, arrow from first to second to third, and a clear return arrow from third back to first. Each node has its label ONCE, with a short supporting line:
"Explore" / "Inspect and try"
"Check" / "Run checks; inspect results"
"Adapt" / "Fix failures; re-check"
Do NOT add a second "Explore → Check → Adapt" heading anywhere. The words Explore, Check, and Adapt must each occur exactly once as node labels. Avoid a medal or a claim that checks guarantee reliable code. The central message is: give the model a clear outcome and constraints, strong tools, and responsibility to verify and iterate on its own work, rather than prescribing every implementation step. Text accuracy and legibility are essential.
```

## small-scope.webp

```text
Two panels: left title "One enormous prompt", stressed line-drawn robot with an oversized brief listing "Onboarding", "Billing", "Analytics", "Search", "SSO", "Migrations", connected to many modules; one huge dense diff labelled "Hard to review · Hard to reverse". Right title "Small, focused steps", calm robot next to five orderly numbered cards "API change", "UI update", "Tests", "Docs", "Deploy & config", each with a tiny symbolic diff and commit marker. Supporting labels "One concern", "Reviewable", "Reversible", "Fast feedback". Footer "Small diffs beat heroic prompts". Preserve five-step sequence and giant-versus-small-diff concept, no invented numbers or code.
```

## session-hygiene.webp

Redesigned with built-in image generation to fold the practical advice into
the rule illustration. Inputs: the previous image as the edit target and
`social-media-card.webp` as the style reference. The final prompt below
supersedes the original two-panel prompt and its reset-caption correction.

```text
Use case: productivity-visual.
Asset type: landscape 16:9 editorial illustration for a Quarto slide.
Input images: image 1 is the existing Session hygiene illustration to redesign; image 2 is the deck typography and palette reference.
Primary request: redesign image 1 so three practical session-hygiene principles are conveyed visually, keeping the same friendly pen-and-ink robot character, refined ivory/stone palette, and professional editorial style. Make the main advice easy to read at presentation size.
Style: flat ivory #fdfaf3 background, warm stone #e9e5db square panels, near-black #141414 text and fine line art, gold #dac284 for thin borders and hairline dividers only; dark brown #7d6020 for occasional text emphasis. Bodoni/Didot serif headings, Montserrat-like sans-serif labels. Spacious composition, square corners, no gradients, rounded cards, 3D, bright colours, watermarks, or tiny paragraphs.

Composition: three equal vertical panels across the upper 75 percent, separated by thin gold rules. Each has a large two-line heading and a generous meaningful illustration, with sparse labels. A compact handoff strip spans the lower 20 percent.

LEFT PANEL:
Heading exactly "One task per session".
Illustrate a focused happy robot at a laptop working with just one task sheet labelled "Task A", inside one clearly labelled frame "Session A". Beside it, a small fading vignette of an old tangled chat and ghost with a reset arrow pointing towards the clean session. The vignette must remain secondary and not overcrowd the main single-task scene. No extra labels in the vignette.
Caption exactly "Fresh context. Clear focus."

CENTRE PANEL:
Heading exactly "One Git worktree per parallel task".
Draw one repository at the top labelled "Repository", branching into two separate side-by-side workspaces with clear boundaries. Workspace A contains a small robot, a terminal, and task card labelled "Task A"; workspace B contains a second small robot, a terminal, and task card labelled "Task B". Under each workspace show "Worktree A" and "Worktree B" respectively. Make the isolation visually unmistakable, no overlapping files or arrows between worktrees.
Caption exactly "Separate tasks. Separate working directories."

RIGHT PANEL:
Heading exactly "Durable knowledge lives in the repository".
Draw a prominent repository folder labelled "Repository" holding a large legible document named exactly "AGENTS.md". The document has three readable short lines "Conventions", "Decisions", "Lessons". A small chat history scroll at the side sends a clear one-way arrow carrying a useful lesson into AGENTS.md; the scroll then fades away. Show a new happy robot session consulting the repository document, not the old chat history.
Caption exactly "Keep knowledge beyond the chat."

BOTTOM STRIP:
Title exactly "Reset with a compact handoff".
Four equal small labelled fields with simple appropriate line icons, exactly "Goal", "Constraints", "Relevant files", "Acceptance checks". Do not include specific implementation examples or invented code.
No repeated large slide title or slide number. Render all exact text accurately, with generous spacing and readable sizes. Preserve conceptual continuity with the original haunted-to-fresh illustration while making the three practical principles the dominant content.
```

## meta-automation.webp

```text
Redesign the information graphic into a readable landscape layout. Top elegant process with exactly "Repeated work → Capture once → Run many times → Review results". Middle four square columns, one per mechanism: "Prompt" / "Changing instructions"; "Skill" / "Domain know-how"; "Slash command" / "Stable shortcut"; "Workflow" / "Steps & branches". Include simple line-drawn page, book, terminal, and branching-process symbols. Bottom process exactly "Input list → For each item → Collect results → Human review". Preserve capture-once/run-many, the four alternatives, and looping over a list; remove dense original table and paragraphs.
```

## curious-humble.webp

```text
Preserve a 2×2 illustration comparing helpful and unhelpful working habits. Top left "Be curious": engaged developer sketching prototypes with a friendly line-drawn robot. Top right "Avoid deskilling": disengaged developer reclining while robot runs unattended at screen. Bottom left "Be humble. Be kind.": diverse team listens and discusses around a table with shared notes. Bottom right "Avoid grandiosity": engineer, product manager, and designer each pointing at their own assistant and dismissing one another. Use refined pen-and-ink editorial figures, expressive restrained faces, ivory and stone panels with fine gold divider rules; no cartoon emoji or neon. Small text labels in bottom-right "Engineer", "Product manager", "Designer". Avoid racial stereotypes; convey disagreement calmly. No speech bubbles or extra paragraphs.
```

## guardrails-workflow.webp

Supply only `social-media-card.webp` as the style reference.

```text
Use case: infographic-diagram. Asset type: wide, low-height presentation workflow diagram. The supplied image is only a reference for typography, colour, and visual restraint. Create a brand-new exquisitely clear diagram for deterministic guardrails in agentic engineering. Ivory #fdfaf3 background, warm stone #e9e5db square nodes, near-black #141414 text and arrows, fine gold #dac284 borders. High-contrast Bodoni-like serif node headings and Montserrat-like sans-serif branch labels. Very wide landscape aspect ratio approximately 3:1; use the entire width, with large readable labels and minimal vertical whitespace, no overall title. Main horizontal path left to right is four nodes labelled exactly "Agent proposes change", "Deterministic checks", "Human review", "Merge". Break long node labels over two lines. Use a square/rectangular checks node, no diamond. Arrow from agent to checks; arrow from checks to review labelled exactly "pass"; arrow from review to merge. Below the first two nodes, a fifth smaller node labelled exactly "Precise error output". Downward arrow from checks to error labelled exactly "fail", then a return arrow from error back to "Agent proposes change", entering the agent node from below. Direction matters: failure goes checks → error → agent; success goes checks → review → merge. Clearly visible thin black arrows and ample separation, no crossings. No icons, ornaments, shadows, rounded corners, gradients, extra text, or watermark. Do not remove the human review step or connect failure to merge.
```

## one-command-setup.webp

Both supplied images are style references: `devex-agentex.webp` and
`social-media-card.webp`. Generate a new image with the following prompt.

```text
Use case: productivity-visual. Asset type: two-panel presentation illustration for "DevEx = AgentEx: in practice". The supplied images are STYLE REFERENCES only: image 1 is another illustration in this deck; image 2 is the deck title card. Create a NEW landscape 16:9 illustration matching their elegant ivory, stone, near-black, and restrained gold editorial style, crisp pen-and-ink linework, Bodoni/Didot-like serif headings, readable Montserrat-like sans-serif body text, square panels with fine gold border rules, no bright colours, no glossy 3D, no gradients, no watermark.
Primary message: a detailed manual project-setup procedure is confusing for both a human developer and a coding agent; encapsulating that procedure in make setup gives both the same simple, reliable entry point.
Composition: two equal side-by-side panels. At LEFT, heading exactly "Manual setup". A large project instruction sheet labelled exactly "Project setup" shows this detailed numbered checklist in readable dark text: "1. Install the required runtime", "2. Create a virtual environment", "3. Install project dependencies", "4. Configure environment variables", "5. Install the Git hooks", "6. Start the local services", "7. Apply database migrations", "8. Load development fixtures", "9. Check tool versions", "10. Verify the setup". Below or beside the sheet, a human developer and a friendly small robot coding agent BOTH visibly look confused and overwhelmed: furrowed brows, puzzled expressions, a few subtle question marks. At RIGHT, heading exactly "One command". Show ONE clean document labelled exactly "AGENTS.md". That document has only ONE instruction, exactly "run `make setup`". Render make setup in very legible monospace, with the lowercase word run before it; the backticks may be literal Markdown characters because this is a Markdown instruction file. No other instructions, code, checklist, or labels inside the right document. Below or beside it, the SAME human developer and the SAME robot BOTH visibly happy, relaxed, and confident, smiling with a small celebratory thumbs-up gesture. Make the contrast between both pairs of expressions unmistakable, while retaining professional editorial restraint. Keep all four characters large enough to read from the back of a room. Warm stone panels on flat ivory #fdfaf3; near-black #141414 text; gold #dac284 for fine borders and separators and dark brown #7d6020 for occasional emphasis. Text must be accurate and clear. Do not add Makefile source code, terminal code blocks, additional commands, overall slide title, or a footer slogan.
```

## meta-automation-examples.webp

Use `meta-automation.webp` only as a style reference. The dependency prompt,
screenshot skill, and security triage are adapted from chatbot-template;
`/address-review` is an illustrative shortcut to its saved review prompt.

```text
Use case: infographic-diagram.
Asset type: landscape 16:9 presentation illustration, four concrete examples of meta-automation.
Input image 1 is a STYLE REFERENCE ONLY: preserve its refined editorial visual language, not its content or layout. Create a new image. Ivory #fdfaf3 canvas, warm stone #e9e5db square panels, near-black #141414 text and thin line illustrations, restrained gold #dac284 hairlines, dark brown #7d6020 for text emphasis. Bodoni/Didot-style serif headings, legible Montserrat-like sans-serif labels, monospaced filenames and slash command. No bright colours (including green ticks), gradients, glossy 3D, rounded cards, watermark, or overall title.

Composition: spacious 2-by-2 grid of four square-cornered panels with gold hairline dividers. Each panel has a large type heading, a medium example title, and an accurate, compact visual showing what that example does. Text must read clearly when the full image is displayed at 880 pixels wide on a slide. Prioritise the examples over decoration; no long code snippets or tiny body text.

TOP LEFT:
Heading exactly "Prompt"
Example title exactly "Dependency update"
Show a versioned instruction document labelled "update-deps.md", containing three readable lines exactly:
"Refresh dependencies"
"Fix compatibility breaks"
"Run QA; prepare a draft PR"
Small caption exactly "Reusable instructions"
A small line-drawn document or engaged coding agent is optional.

TOP RIGHT:
Heading exactly "Skill"
Example title exactly "PR screenshot"
Show a simple browser window with an abstract chat interface (no small chat text) and a captured image being attached to a pull request sheet. A compact three-step sequence has labels exactly "Preview app", "Capture", "Attach to PR", connected left to right.
Filename-like label exactly "frontend-pr-screenshot"
Small caption exactly "Packaged know-how"

BOTTOM LEFT:
Heading exactly "Slash command"
Example title exactly "Address review comments"
A crisp terminal/chat input prominently shows "/address-review" in large readable monospace.
Below, show three simple review comment bubbles becoming checked resolved comment bubbles, with a concise arrow sequence exactly "Read threads → Fix → Reply".
Small caption exactly "One shortcut to a saved prompt"
This is an illustrative shortcut, not a claim about an installed command.

BOTTOM RIGHT:
Heading exactly "Workflow"
Example title exactly "Vulnerability management"
Draw a clear compact branching flowchart:
main first row "Scan" → "Triage" → decision diamond "Worth fixing?"
The diamond's "yes" branch leads to "Fix" → "Verify" → "Draft PR".
The diamond's "no" branch leads to "Record reason".
Separate the two branches clearly; do not allow no to flow into Fix or Draft PR. Use neat ivory/stone nodes with black text and black arrows, no crossings. The decision label can wrap to two lines. Put Draft PR after Verify only. Avoid implying findings are trusted automatically or changes merge automatically.
Small caption exactly "Steps, decisions, and evidence"

Along the bottom, one slim full-width footer with a restrained human-review line icon and the exact text "Humans review evidence and decide what ships". Keep the footer separate from the flowchart. No additional headings, slogans, invented numbers, CVE IDs, or text.
```

## know-thy-tools.webp

Created with built-in image generation. The Session hygiene illustration
and social card were supplied as style references, not edit targets.
Official docs and release notes were checked on 8 October 2026:
[Claude Code voice dictation](https://code.claude.com/docs/en/voice-dictation),
[Codex image generation](https://learn.chatgpt.com/docs/image-generation), and
[Copilot CLI computer use](https://docs.github.com/en/copilot/how-tos/copilot-cli/use-copilot-cli/computer-use).
The [1 October release note](https://github.blog/changelog/2026-10-01-github-copilot-can-now-interact-with-desktop-apps/)
confirms Copilot computer use is in public preview. These are illustrative
examples, not an exhaustive or exclusive feature comparison.

```text
Use case: productivity-visual.
Asset type: landscape 16:9 illustration for the "Know thy tools" slide in an engineering presentation.
Input images: image 1 is a style and character reference ONLY (Session hygiene); image 2 is a typography and palette reference ONLY (social card). Create NEW content, do not reproduce their wording or subjects.
Primary request: an elegant, memorable illustration of three example tool affordances users miss: Claude Code voice dictation, Codex built-in image generation, and GitHub Copilot CLI computer use. Exactly one capability per product, plus an ellipsis suggesting more to discover. Illustrate meaningful actions, not a feature table.

Style: refined pen-and-ink editorial illustration. Flat ivory #fdfaf3 canvas, warm stone #e9e5db square panels, near-black #141414 text and linework. Restrained gold #dac284 for thin borders and dividers only, dark brown #7d6020 for readable occasional emphasis text. Bodoni/Didot high-contrast serif headings and Montserrat-like sans-serif body. Spacious layout with square corners. Friendly small robot consistent with image 1. No official product logos, bright colours, gradients, glossy 3D, tiny paragraphs, or watermarks.

Layout: one prominent restrained top heading exactly "Example affordances that users miss". Beneath it, three equal square-corner panels side by side with ample white space. Product names at top, feature headline below, generous expressive illustration, then a short caption and command/example.

LEFT:
Product name exactly "Claude Code".
Feature headline exactly "Voice dictation".
Show a human speaking into a microphone with a simple waveform flowing into a laptop terminal prompt while a friendly robot listens. Convey speech-to-text prompt input, NOT an audio conversation with a talking assistant.
Caption exactly "Speak your prompt".
Large, clear terminal command exactly "/voice".
Small legible scope note exactly "Claude.ai sign-in + local microphone".

CENTRE:
Product name exactly "Codex".
Small scope label exactly "Desktop app".
Feature headline exactly "Built-in image generation".
Show a robot and human reviewing two editorial illustration thumbnails in an app window, with a sketched revision arrow and one thumbnail transformed. The thumbnails should be abstract image assets, not extra products or additional feature examples.
Caption exactly "Generate and edit visual assets".
Readable brief prompt inside a small text strip exactly "Create a matching illustration".
No invented slash command or API key requirement.

RIGHT:
Product name exactly "GitHub Copilot CLI" (may wrap neatly).
Feature headline exactly "Computer use".
Show a robot controlling a desktop application window from a terminal, using a cursor arrow to click a visible control. An abstract slide/page with editable text can appear in the app, with no readable fake UI words.
Caption exactly "Work in GUI-only desktop apps".
Large, clear terminal command exactly "/computer on".
Small legible scope note exactly "Public preview · macOS / Windows".

BOTTOM:
A generous clearly visible ellipsis "…" on the right outside the panels, expressing that these three examples are not exhaustive.
A thin full-width footer line with a small release-note document icon and exact text "Read the changelog. Discover what your tools can do."
No "Know thy tools" repeated inside the illustration, no slide number, no dates, no claims that these features are exclusive to these tools, no extra capabilities or marketing slogans. All text exact, legible, and well spaced for projection.
```

## Final text corrections

Apply these edits to the first generated output for each named asset.

### know-thy-tools

Final built-in image edit: remove temporary availability notes and the
desktop-only label. This supersedes those labels in the original prompt.

```text
Use case: precise-object-edit.
Edit this presentation illustration with exactly three changes:
1. Remove the small line "Claude.ai sign-in + local microphone" beneath /voice in the left panel; leave clean matching ivory space.
2. Remove the small line "Public preview · macOS / Windows" beneath /computer on in the right panel; leave clean matching ivory space.
3. Remove the small "Desktop app" label and its vertical separator to the right of "Codex" in the centre panel. Centre the word "Codex" above "Built-in image generation".
Keep every other element unchanged: the title "Example affordances that users miss", the three product names and capabilities, all illustration scenes, captions, /voice, /computer on, centre example prompt, ellipsis, footer, panel geometry, canvas dimensions, ivory/stone palette, fine gold borders, typography, and friendly line art. Do not replace the removed labels with new text or caveats.
```

### know-thy-tools alignment

Apply this built-in edit after the caveat-removal edit above.

```text
Use case: precise-object-edit.
Edit this existing presentation illustration only for alignment and column heading sizes.
For EACH of the three bordered columns, align all contents to that column's horizontal centre: product name, feature subtitle, illustration scene as a whole, caption, and command/example box. In the centre column, centre "Create a matching illustration" within its box; remove the small decorative sparkle in that box if it interferes with centred text.
Reduce all three product-name titles and all three feature subtitles to about 85 percent of their present font sizes. Use one consistent product-name size across all columns, and one consistent feature-subtitle size across all columns. Keep their elegant serif styles and upright versus italic distinction. Put all product names on the same baseline and all feature subtitles on the same baseline; "GitHub Copilot CLI" and "Built-in image generation" should fit comfortably on one line at the smaller size. Maintain generous side margins and consistent spacing. Align the three captions to one baseline and the three command/example boxes to one baseline.
Keep the top main title exactly "Example affordances that users miss" at its current size and position. Preserve all wording verbatim: "Claude Code", "Voice dictation", "Speak your prompt", "/voice"; "Codex", "Built-in image generation", "Generate and edit visual assets", "Create a matching illustration"; "GitHub Copilot CLI", "Computer use", "Work in GUI-only desktop apps", "/computer on". Preserve the three illustration narratives, friendly robots and humans, ellipsis outside the panels, footer wording, canvas dimensions, ivory/stone palette, and fine gold borders. Do not add availability caveats, a Desktop app label, logos, dates, or new text. Change only horizontal alignment, consistent vertical alignment, and the requested column heading sizes.
```

### curious-humble

```text
Use case: precise-object-edit. Edit only the lower-right panel headline of this presentation illustration. Replace BOTH existing headline lines ("Delusions of grandeur." and the smaller subtitle beneath it) with a SINGLE elegant line reading exactly "Avoid grandiosity" centred above the three colleagues. Remove the subtitle completely; leave clean ivory space. Keep all other text, characters, linework, panels, typography, colours, canvas dimensions, and composition unchanged. No extra text.
```

### session-hygiene

```text
Use case: precise-object-edit. Edit only the central reset caption. Keep the large word "Reset" and its circular-arrow icon. Remove the two small words "ENDLESS CONTINUATION" below "Reset", leaving clean ivory space in their place. Preserve the rest of this illustration exactly, including all other labels, characters, panels, palette, typography, canvas dimensions, and layout.
```

## Integration checks

Convert selected PNG output with `cwebp -q 88` and keep the WebP in this folder.
Inspect the complete image, including all labels and arrow directions, then
render with `just render`. Check the image slides and workflow in presentation
and scroll views. Keep alternative text and speaker notes aligned with the
selected artwork. Re-run `just axe` after changing slide markup.
