# Deck artwork

The rule illustrations use built-in image generation and a shared editorial style.
The guardrails workflow was generated from its original decision path, and
the setup contrast illustrates a shared one-command entry point. The automation
examples draw on chatbot-template prompts and its PR screenshot skill. The
tool-affordance examples were checked against current official docs. Final
assets are WebP; the social card is the deck's typography and palette reference.
The social card already matched the theme and was retained.

## Shared style prompt

For existing rule artwork being restyled, supply the previous version as
image 1 (edit target) and `social-media-card.webp` as image 2 (style reference).
Previous versions remain available through Git history. Apply this shared
style prompt followed by the asset-specific instructions below. New artwork
uses the references specified under Ten-rule expansion.

```text
Restyle into a refined editorial infographic matching the supplied slide social-card style: flat ivory #fdfaf3 background, warm stone #e9e5db square panels, near-black #141414 text and fine line illustrations, restrained gold #dac284 hairlines and borders ONLY, dark brown #7d6020 where emphasis needs text. Elegant high-contrast Bodoni/Didot serif headings, legible Montserrat-like sans-serif labels. Spacious, disciplined layout, thin rules, square corners, confident professional composition. No blue, green, purple, red, bright colours, gradients, glossy 3D, rounded UI cards, heavy shadows, or excessive decoration. Keep text clear, large and sparse enough to read when projected. Keep the original conceptual message and visual metaphor; improve hierarchy and clarity. No slide number or redundant large slide title. Landscape 16:9 composition. No watermark.
```

## devex-agentex.webp

```text
Redesign image 1 with a central well-designed codebase, a human on the left and a coding agent on the right, both connected to the same repository. Surround it with five orderly panels labelled exactly "Clear structure", "One-command workflows", "Deterministic QA", "Living documentation", "Modular design". Supporting labels respectively "Folders · names · boundaries", "Setup · format · lint · test", "Formatters · linters · types · tests", "README · conventions · examples", "Small units · clear interfaces". Bottom line "Speed · Quality · Trust". Label human and agent "Humans" and "Coding agents". Avoid tiny simulated code or long paragraphs. Preserve the five properties and shared-benefit meaning.
```

## deterministic-tooling.webp

Updated with built-in image generation to match the qualified rule. The
previous version of the same asset is the sole edit target and style
reference; it remains available in Git history. The complete prompt follows.

```text
Use case: precise-object-edit.
Asset type: landscape 16:9 presentation illustration.
Input image 1 is the edit target: Without guardrails / With guardrails robot harness illustration.
Keep the two-panel layout, existing confused and calm robot characters, harness metaphor and seven harness labels Formatter, Linter, Type checker, Pre-commit, CI, Sanitisers, Valgrind. Keep the left confusion examples Inconsistent style, Flaky tests, Broken assumptions, Hallucinated APIs, Failed builds. Keep professional pen-and-ink artwork, flat ivory #fdfaf3 canvas, stone #e9e5db panels, near-black #141414 ink, gold #dac284 hairline borders ONLY, dark brown #7d6020 for emphasis, elegant Bodoni/Didot headings and Montserrat-like sans-serif labels. Square corners, no glossy 3D, gradients, bright colours, or watermark.
Primary request: show that deterministic checks establish configured gates passing, with human review still needed to assess the problem and experience. Change ONLY the three output cards and the bottom strip within the RIGHT panel, with minor reflow to keep them legible; preserve the left panel and harness.
RIGHT top output card: heading exactly "Consistent style". Simple restrained code-format icon and two short symbolic code lines; no invented metrics.
RIGHT middle output card: heading exactly "Configured gates pass". Two readable checklist labels exactly "Tests" and "Types & build", each with plain near-black ticks. Remove invented 102 / 102 passing, Coverage 92%, and No critical issues.
RIGHT lower output card: heading exactly "Human review still needed". Small line drawing of human reviewing a page, plus three readable labels exactly "Requirements", "Behaviour", "User experience". Do not put a tick, shield badge, or guaranteed-success symbol on this card.
BOTTOM right strip: three large readable steps connected left to right with thin black arrows, exactly "Change" → "Checks" → "Human review". Small caption beneath exactly "Passing gates is evidence for review." Remove Deterministic inputs → Checks → Consistent outcomes. Make all new text exact and large enough at 880 px display width. No claims that passing gates proves correctness, safety, or acceptable outcomes. Keep 16:9.
```

## small-scope.webp

```text
Two panels: left title "One enormous prompt", stressed line-drawn robot with an oversized brief listing "Onboarding", "Billing", "Analytics", "Search", "SSO", "Migrations", connected to many modules; one huge dense diff labelled "Hard to review · Hard to reverse". Right title "Small, focused steps", calm robot next to five orderly numbered cards "API change", "UI update", "Tests", "Docs", "Deploy & config", each with a tiny symbolic diff and commit marker. Supporting labels "One concern", "Reviewable", "Reversible", "Fast feedback". Footer "Small diffs beat heroic prompts". Preserve five-step sequence and giant-versus-small-diff concept, no invented numbers or code.
```

## session-hygiene.webp

Updated with built-in image generation to match the qualified rule. The
previous version of the same asset is the sole edit target and style
reference; it remains available in Git history. The complete prompt follows.

```text
Use case: productivity-visual.
Asset type: landscape 16:9 Quarto presentation illustration.
Input image 1: edit target, existing session-hygiene illustration. Preserve its robot character, elegant Bodoni/Didot headings, Montserrat-like labels, flat ivory #fdfaf3 and stone #e9e5db palette, near-black #141414 ink, gold #dac284 hairline borders ONLY, dark brown #7d6020 text emphasis, square panels, generous spacing, professional pen-and-ink style. No bright colours, gradients, glossy 3D, watermark, or slide title.
Primary request: reflect COHERENT context rather than obligatory fresh context, while keeping worktree isolation and durable repository knowledge. Keep the three-panel layout and compact bottom handoff strip. Edit LEFT panel and BOTTOM strip; CENTRE and RIGHT content and message stay unchanged.
LEFT heading exactly "Keep context coherent". In one workspace labelled "Session A", show the same focused robot consulting an existing notes sheet labelled "Useful context" and a main sheet labelled "Task A", with a small adjacent connected sheet labelled "Related follow-up". Convey that a related follow-up uses the same coherent session. A small secondary haunted/tangled-chat vignette has a reset arrow towards the workspace, but label that arrow exactly "Reset when confused". This vignette must not dominate. Caption exactly "One task by default; related follow-ups can stay." No "Fresh context", no absolute "One task per session".
CENTRE: preserve heading "One Git worktree per parallel task", repository branching to isolated Worktree A / Task A and Worktree B / Task B, each with friendly robot and terminal. Caption "Separate tasks. Separate working directories."
RIGHT: preserve heading "Durable knowledge lives in the repository", Repository containing AGENTS.md with "Conventions", "Decisions", "Lessons", useful chat knowledge flowing into the document and robot consulting it. Caption "Keep knowledge beyond the chat."
BOTTOM: title exactly "Reset with a compact handoff". Five readable fields, with understated line icons: "Goal", "Constraints", "Relevant files", "Ruled-out approaches", "Acceptance checks". Fit all five without tiny text. All text exact, legible at 880 px display width. Keep the image at 16:9.
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

The ten-rule expansion merges Specify intent into Define done before delegating.
`define-done.webp` replaces the retired `bitter-lesson.webp` illustration; its
previous artwork and prompts remain available in Git history.

Convert selected PNG output with `cwebp -q 88` and keep the WebP in this folder.
Inspect the complete image, including all labels and arrow directions, then
render with `just render`. Check the image slides and workflow in presentation
and scroll views. Keep alternative text and speaker notes aligned with the
selected artwork. Re-run `just axe` after changing slide markup.

## Ten-rule expansion

Generated with the built-in image-generation tool. For each image below,
`deterministic-tooling.webp` is the style and character reference, and
`social-media-card.webp` is the typography and palette reference. Both are
references only; the outputs depict new advice. Complete prompts follow.

### define-done.webp

```text
Use case: productivity-visual. Asset type: NEW landscape 16:9 presentation illustration, about 1672 by 941 px. Input images are style references ONLY, never edit targets: deterministic-tooling.webp for the friendly pen-and-ink robot, social-media-card.webp for typography and palette. Refined editorial infographic: flat ivory #fdfaf3 canvas, warm stone #e9e5db square panels, near-black #141414 text and fine hand-drawn linework. Restrained gold #dac284 for hairline borders and dividers only, dark brown #7d6020 for optional readable emphasis. Bodoni/Didot serif panel headings, Montserrat-like sans-serif labels. Spacious professional composition, friendly small robot and human consistent with the reference. No bright colours, gradients, glossy 3D, rounded cards, heavy shadows, watermark, slide number, or redundant overall slide title. Text must be exact and comfortably legible when shown at 880 px wide.
Primary request: illustrate defining observable success BEFORE delegating and then gathering relevant evidence. Three equal square-corner panels side by side, each with one elegant serif heading and an expressive scene.
LEFT heading exactly "State the outcome". A human hands a brief to a robot. Three large labels on brief exactly "Goal", "Constraints", "What stays unchanged". Caption exactly "Give a target, not a script".
CENTRE heading exactly "Choose the evidence". Three neatly aligned line-drawn objects: a bug with a before-and-after test report, a browser window with a human interacting with it, and a stopwatch beside two benchmark traces. Three short captions exactly "Bug: reproduce, then fix", "UI: inspect the interaction", "Performance: measure". No fabricated numbers.
RIGHT heading exactly "Check the meaning". Human and robot jointly inspect a test page next to a requirements brief; a magnifying glass connects them, not a success badge. Large caption exactly "Tests can share the same mistake".
Bottom strip across all panels with fine hairline and exact wording "Agree the criteria. Verify against them. Review the evidence." Keep robot drawing tasteful and relevant, not occupying all the evidence space.
```

### bound-blast-radius.webp

```text
Use case: productivity-visual. Asset type: NEW landscape 16:9 presentation illustration, about 1672 by 941 px. Input images are style references ONLY, never edit targets: deterministic-tooling.webp for the friendly pen-and-ink robot, social-media-card.webp for typography and palette. Refined editorial infographic: flat ivory #fdfaf3 canvas, warm stone #e9e5db square panels, near-black #141414 text and fine hand-drawn linework. Restrained gold #dac284 for hairline borders and dividers only, dark brown #7d6020 for optional readable emphasis. Bodoni/Didot serif panel headings, Montserrat-like sans-serif labels. Spacious professional composition, friendly small robot and human consistent with the reference. No bright colours, gradients, glossy 3D, rounded cards, heavy shadows, watermark, slide number, or redundant overall slide title. Text must be exact and comfortably legible when shown at 880 px wide.
Primary request: illustrate an agent working within explicitly enforced permissions, and human approval for consequential actions. Three equal square-corner panels side by side.
LEFT heading exactly "Scope access". Friendly robot at a laptop inside a clearly drawn rectangular workspace boundary. Three simple accessible objects inside boundary labelled exactly "Read", "Change", "Execute". Outside boundary a credential/key container has a clear padlock and label exactly "Protect credentials". Boundary caption exactly "Enforce permissions".
CENTRE heading exactly "Separate data from authority". Robot examines retrieved document in a document tray. Document clearly labelled "Retrieved content". A distinct approved task brief held by a human is clearly labelled "Authorised instructions". A divider separates them; do not draw an arrow that turns the retrieved document into authorised instructions. Large caption exactly "Content is not permission".
RIGHT heading exactly "Approve consequential actions". Human at a visible approval checkpoint between the robot and three action symbols, a rocket, a send envelope, and a database with eraser. Three labels exactly "Deploy", "Send", "Delete". The human approval checkpoint must visibly precede the action symbols. Caption exactly "Review before the action".
Bottom strip exact wording "Worktrees isolate edits. Sandboxes restrict actions." No shields claiming total security, no dangerous explosion, no suggestion that reviewing a diff controls actions already taken.
```

### measure-whole-job.webp

```text
Use case: productivity-visual. Asset type: NEW landscape 16:9 presentation illustration, about 1672 by 941 px. Input images are style references ONLY, never edit targets: deterministic-tooling.webp for the friendly pen-and-ink robot, social-media-card.webp for typography and palette. Refined editorial infographic: flat ivory #fdfaf3 canvas, warm stone #e9e5db square panels, near-black #141414 text and fine hand-drawn linework. Restrained gold #dac284 for hairline borders and dividers only, dark brown #7d6020 for optional readable emphasis. Bodoni/Didot serif panel headings, Montserrat-like sans-serif labels. Spacious professional composition, friendly small robot and human consistent with the reference. No bright colours, gradients, glossy 3D, rounded cards, heavy shadows, watermark, slide number, or redundant overall slide title. Text must be exact and comfortably legible when shown at 880 px wide.
Primary request: illustrate choosing the simplest effective approach and measuring all work to an accepted result.
LEFT half elegant heading exactly "Choose the simplest fit". Three similarly sized options with no option singled out as universally best: human with pencil editing a page labelled "Direct edit"; small terminal with repeatable cog labelled "Script or existing tool"; friendly robot and laptop labelled "Agent". Under the choices caption exactly "Start with the real pain point".
RIGHT half elegant heading exactly "Follow through to acceptance". Horizontal sequence with four generous clearly legible stages, each simple pen-and-ink icon above exact label: "Prepare" then "Generate" then "Verify" then "Review". Thin near-black arrows connect the sequence. Beneath sequence a long bracket covers ALL FOUR stages with caption exactly "Time to an accepted result". Below bracket three tidy square cards with exact labels "Review effort", "Defects", "Maintenance burden". No fabricated charts, speedups, percentages, or measurements.
Bottom strip exact wording "Keep the approach that improves the whole job." Ivory background, restrained panels, generous whitespace and legibility.
```
