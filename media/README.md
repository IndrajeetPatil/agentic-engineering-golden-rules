# Deck artwork

The rule illustrations use built-in image generation and a shared editorial
style. The quality-gates practice example uses a generated Ruff F841 feedback
loop; the setup contrast illustrates a shared
one-command entry point. The automation examples demonstrate dependency
updates and PR screenshot workflows. The tool-affordance examples were checked against
current official docs. Final assets are WebP; the social card is the deck's
typography and palette reference. The social card already matched the theme
and was retained.

## guardrails-workflow.webp

The quality-gates practice workflow shows a Python change, Ruff command,
pass/fail paths, precise F841 feedback, an agent correction, human review, and
merge. The Python mark, Ruff wordmark, agent, reviewer, and Git branch icons
make each step easy to scan.

```text
Create a spacious 16:9 landscape diagram in the deck's ivory and warm-stone
editorial style, with near-black ink, gold hairlines and arrows, serif stage
headings, monospace code, and simple Python, Ruff, coding-agent, reviewer, and
Git branch icons. Show four stages left to right: Agent change (example.py;
greeting = "Hello!"; print("Hello!"), Ruff checks (ruff check example.py),
Human review (print(greeting)), Merge (Reviewed fix). A pass arrow goes from
Ruff to human review; a fail arrow goes to an F841 message saying the local
variable 'greeting' is assigned but never used; a return arrow loops to Agent
change. Keep text accurate, legible, and sparse. No title or slogan.
```

## sdlc-bottlenecks.webp

The SDLC pipeline illustrates coding agents accelerating implementation while
human queues build at both Review and Verify. It is used on rule 08, “Identify
and remove bottlenecks”. The graphic frames Amdahl’s law as an analogy for
end-to-end delivery; the following practice slide shows possible interventions.

```text
Create a 16:9 landscape presentation illustration in the deck's editorial
style: flat ivory canvas, square warm-stone panels, near-black pen-and-ink
linework, restrained gold borders and arrows, serif headings, legible labels.
Add three spacious text panels across the top: "Software delivery is an
end-to-end system.", "Speeding up one stage cannot remove waiting elsewhere.",
and "The limiting stage can move." Under them show a left-to-right pipeline
labelled Plan, Code, Review, Verify, Release. Keep a human at Plan and coding
agent robots quickly producing code at Code. Show a growing pull-request queue
at Review and one clearly human reviewer, visibly flustered and overwhelmed by
the backlog. Show a second growing queue at Verify and a second clearly human
person, visibly flustered while manually checking browser behaviour and tests.
The two queues coexist to show that more coding capacity can leave Review and
Verify overloaded. Finish with a Release rocket. This is only the problem state;
do not show an author/reviewer agent loop, automation, or any remedy. Keep text
accurate, balanced, and readable, with generous spacing. No footer, gradients,
rounded cards, bright colours, logos, or watermark.
```

## bottleneck-examples.webp

Three practical responses to queues in software delivery: replace a slow CI
wait with Rust-based Python tools; use an LLM author/reviewer loop for large
pull requests; and replace repeated manual behaviour checks with E2E tests.
The labels name possible interventions, not guaranteed speedups.

```text
Create a three-panel 16:9 landscape presentation illustration in the deck's
editorial style: flat ivory canvas, warm-stone panels, near-black pen-and-ink
linework, restrained gold hairlines and arrows, serif headings, and legible
labels. Panel one: a code-change queue and a clock labelled "Slow CI", followed
by a friendly robot using Rust-based tools Ruff, uv, and ty. Panel two: a large
pull request diff moving through a looping LLM Author and Reviewer workflow.
Panel three: a person manually checking a web journey, then an E2E test
automating the same journey to a passing result. Keep the panels balanced,
text sparse and accurate, with generous whitespace. No overall title or footer.
```

## software-factory.webp

The closing example shows a feature request flowing through coding, a pull
request with UI screenshots, automated quality gates, an independent review
loop, and agent-led merge. A magnified inset makes the example's strict quality
harness concrete, while the slide notes explain that high-stakes work may keep
human approval at key steps. It is based on the public chatbot-template
repository.

```text
Create a polished 16:9 landscape editorial infographic for a software
engineering presentation, with warm ivory canvas, warm stone panels,
near-black pen-and-ink linework, restrained deep-gold hairlines and arrows,
refined serif headings, and clear sans-serif labels. Crisp high contrast,
readable at 880×495 pixels, generous whitespace, consistent visual weight.

Show one clear left-to-right causal flow across the upper half: developer
submits a card labelled “Feature request” → a coding agent works in a repository
→ a pull request appears with two tiny browser screenshot thumbnails labelled
“UI screenshots” → automated QA gates → an independent reviewer agent checks
the diff. A small “Findings” arrow loops from reviewer back to coding agent.
From the reviewer, a clear forward arrow labelled with a green check leads to
the coding agent merging; at far right, show the completed feature running in
a small web app. Keep every other arrow flowing left-to-right. No human should
appear at review or verification.

In the lower half, add a prominent, clean zoom-in inset attached to the
automated QA stage by a fine gold leader line and magnifier cue. Inset heading
exactly “QUALITY HARNESS”; subheading exactly “example gates”. Inside, show
exactly eight large, neatly aligned checklist items in two columns: “100% code
coverage”; “100% type coverage”; “Benchmarks”; “0 lint issues”; “0 warnings”;
“Lighthouse performance”; “Accessibility”; “SEO”. Use one restrained check
icon per item. Spelling must be exact. The callout should look like a compact
quality checklist and feel strict, not like a dashboard. Make the entire image
a single coherent infographic.

No overall title, no footer, no disclaimer or other added text, no logos, no
gradients, no watermark. Do not show a human review stage, queues, bottlenecks,
or unrelated panels.
```

## Agentic stack diagrams

`agentic-stack-anthropic.webp`, `agentic-stack-openai.webp`, and
`agentic-stack-copilot.webp` share one composition across the introductory
slide's tabs. The diagrams show responsibilities, not deployment boundaries.
All icons are original generated artwork; no third-party logo assets are used.
The product names identify examples and do not imply endorsement.

Generate the Anthropic diagram with `deterministic-tooling.webp` as a style
reference, using the prompt below. Generate each other variant as an edit of
that Anthropic output, preserving the composition, arrows, palette, and generic
labels. Convert each output with `cwebp -q 90`.

```text
Use case: infographic-diagram. Asset type: new landscape 16:9 teaching illustration for a Quarto slide, about 1800x1000. Reference image is style only, not an edit target.
Create a precise explanatory architecture diagram of Anthropic's coding stack. Refined editorial style matching reference: flat ivory #fdfaf3 canvas, stone #e9e5db square panels, near-black #141414 pen-and-ink linework and text, gold #dac284 thin borders only. Bodoni/Didot serif headings and clear Montserrat-like labels. No bright colours, gradients, rounded cards, shadows, watermark, or overall slide title. Sparse large text readable when projected at 880px. Friendly small robot, thin directional arrows.
COMPOSITION: left 22% is an illustrated desktop monitor with label "Desktop app" then "Claude Desktop" then small "Code tab". A right-pointing arrow labelled "Task" leads to a large central outlined container occupying middle 55%, labelled at top "Harness · Claude Code", with subtitle "Context · permissions · execution".
Inside harness a small robot at upper centre with heading "Agent" and subtitle "Model + harness in a loop". Below are two equal stone boxes: LEFT has brain icon heading "LLM" and label "Claude"; RIGHT has terminal and file icons heading "Tools" and label "Read · edit · shell". Connect LLM to Tools with top rightward arrow labelled "Tool call"; connect Tools back to LLM with bottom leftward arrow labelled "Result". Keep arrows and labels non-overlapping. Small caption below pair: "Model requests. Harness executes." These two directional arrows depict tool-calling.
Rightmost 18% outside harness is a small server building illustration labelled "Model provider" and "Anthropic", linked by a thin two-way line to LLM box routed below harness, with label "Model API". Do NOT imply tools execute inside the model provider. The agent is the working system encompassing model and harness, not a separate model or provider. Desktop is an interface to Claude Code, not the LLM.
Place the exact caption "One task → model → tool → result → repeat" centred below the diagram, unboxed and without horizontal rules. Use large, readable type and generous ivory whitespace.
No vendor logos necessary; use original editorial icons. All text verbatim and spelt correctly. Generous whitespace.
```

| Variant | Vendor-specific labels |
| --- | --- |
| Anthropic | Claude Desktop / Code tab; Harness · Claude Code; LLM · Claude; Model provider · Anthropic; Model API |
| OpenAI | ChatGPT desktop / Codex workspace; Harness · Codex; LLM · GPT; Model provider · OpenAI; Model API |
| GitHub Copilot | VS Code / Copilot interface; Harness · Copilot; LLM · Claude; Model developer · Anthropic, Access via GitHub Copilot; Model access via Copilot |

The Copilot example deliberately uses Claude: selecting an Anthropic model
does not switch the Copilot harness to Claude Code. Sources are the official
[Claude Code architecture](https://code.claude.com/docs/en/how-claude-code-works),
[Claude Desktop](https://code.claude.com/docs/en/desktop),
[Codex harness](https://developers.openai.com/blog/codex-as-a-platform),
[ChatGPT desktop](https://learn.chatgpt.com/docs/app), and
[Copilot harness](https://code.visualstudio.com/docs/agents/concepts/agent-harnesses)
documentation.

## Shared style prompt

For existing rule artwork being restyled, supply the previous version as
image 1 (edit target) and `social-media-card.webp` as image 2 (style reference).
Previous versions remain available through Git history. Apply this shared
style prompt followed by the asset-specific instructions below. New artwork
uses the references specified under Additional rule illustrations.

```text
Restyle into a refined editorial infographic matching the supplied slide social-card style: flat ivory #fdfaf3 background, warm stone #e9e5db square panels, near-black #141414 text and fine line illustrations, restrained gold #dac284 hairlines and borders ONLY, dark brown #7d6020 where emphasis needs text. Elegant high-contrast Bodoni/Didot serif headings, legible Montserrat-like sans-serif labels. Spacious, disciplined layout, thin rules, square corners, confident professional composition. No blue, green, purple, red, bright colours, gradients, glossy 3D, rounded UI cards, heavy shadows, or excessive decoration. Keep text clear, large and sparse enough to read when projected. Keep the original conceptual message and visual metaphor; improve hierarchy and clarity. No slide number, no redundant large slide title, and no text that repeats the slide title or subtitle verbatim. Do not frame a bottom caption in a box or flank it with horizontal rules. If a bottom caption adds information, set it unboxed in large, readable type with generous whitespace. Landscape 16:9 composition. No watermark.
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
BOTTOM of the RIGHT panel: three large readable steps connected left to right with thin black arrows, exactly "Change" → "Checks" → "Human review". Place the small caption "Passing gates is evidence for review." beneath the process, unboxed and without framing rules. Remove Deterministic inputs → Checks → Consistent outcomes. Make all new text exact and large enough at 880 px display width. No claims that passing gates proves correctness, safety, or acceptable outcomes. Keep 16:9.
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

## one-command-setup.webp

Both supplied images are style references: `devex-agentex.webp` and
`social-media-card.webp`. Generate a new image with the following prompt.

```text
Use case: productivity-visual. Asset type: two-panel presentation illustration for "Improve developer experience: in practice". The supplied images are STYLE REFERENCES only: image 1 is another illustration in this deck; image 2 is the deck title card. Create a NEW landscape 16:9 illustration matching their elegant ivory, stone, near-black, and restrained gold editorial style, crisp pen-and-ink linework, Bodoni/Didot-like serif headings, readable Montserrat-like sans-serif body text, square panels with fine gold border rules, no bright colours, no glossy 3D, no gradients, no watermark.
Primary message: a detailed manual project-setup procedure is confusing for both a human developer and a coding agent; encapsulating that procedure in make setup gives both the same simple, reliable entry point.
Composition: two equal side-by-side panels. At LEFT, heading exactly "Manual setup". A large project instruction sheet labelled exactly "Project setup" shows this detailed numbered checklist in readable dark text: "1. Install the required runtime", "2. Create a virtual environment", "3. Install project dependencies", "4. Configure environment variables", "5. Install the Git hooks", "6. Start the local services", "7. Apply database migrations", "8. Load development fixtures", "9. Check tool versions", "10. Verify the setup". Below or beside the sheet, a human developer and a friendly small robot coding agent BOTH visibly look confused and overwhelmed: furrowed brows, puzzled expressions, a few subtle question marks. At RIGHT, heading exactly "One command". Show ONE clean document labelled exactly "AGENTS.md". That document has only ONE instruction, exactly "run `make setup`". Render make setup in very legible monospace, with the lowercase word run before it; the backticks may be literal Markdown characters because this is a Markdown instruction file. No other instructions, code, checklist, or labels inside the right document. Below or beside it, the SAME human developer and the SAME robot BOTH visibly happy, relaxed, and confident, smiling with a small celebratory thumbs-up gesture. Make the contrast between both pairs of expressions unmistakable, while retaining professional editorial restraint. Keep all four characters large enough to read from the back of a room. Warm stone panels on flat ivory #fdfaf3; near-black #141414 text; gold #dac284 for fine borders and separators and dark brown #7d6020 for occasional emphasis. Text must be accurate and clear. Do not add Makefile source code, terminal code blocks, additional commands, overall slide title, or a footer slogan.
```

## meta-automation-examples.webp

The examples use generic, illustrative workflows for recurring agent work.

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

Below the panels, place the exact text "Humans review evidence and decide what ships" with a restrained human-review line icon. Keep this caption unboxed and free of horizontal rules, with generous whitespace. No additional headings, slogans, invented numbers, CVE IDs, or text.
```

## know-thy-tools.webp

Created with built-in image generation. The Maintain session hygiene illustration
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
Input images: image 1 is a style and character reference ONLY (Maintain session hygiene); image 2 is a typography and palette reference ONLY (social card). Create NEW content, do not reproduce their wording or subjects.
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
A small release-note document icon and the exact text "Read the changelog. Discover what your tools can do." sit below the panels as an unboxed caption without horizontal rules.
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
Keep every other element unchanged: the title "Example affordances that users miss", the three product names and capabilities, all illustration scenes, captions, /voice, /computer on, centre example prompt, ellipsis, unboxed footer caption, panel geometry, canvas dimensions, ivory/stone palette, fine gold borders, typography, and friendly line art. Do not replace the removed labels with new text or caveats.
```

### know-thy-tools alignment

Apply this built-in edit after the caveat-removal edit above.

```text
Use case: precise-object-edit.
Edit this existing presentation illustration only for alignment and column heading sizes.
For EACH of the three bordered columns, align all contents to that column's horizontal centre: product name, feature subtitle, illustration scene as a whole, caption, and command/example box. In the centre column, centre "Create a matching illustration" within its box; remove the small decorative sparkle in that box if it interferes with centred text.
Reduce all three product-name titles and all three feature subtitles to about 85 percent of their present font sizes. Use one consistent product-name size across all columns, and one consistent feature-subtitle size across all columns. Keep their elegant serif styles and upright versus italic distinction. Put all product names on the same baseline and all feature subtitles on the same baseline; "GitHub Copilot CLI" and "Built-in image generation" should fit comfortably on one line at the smaller size. Maintain generous side margins and consistent spacing. Align the three captions to one baseline and the three command/example boxes to one baseline.
Keep the top main title exactly "Example affordances that users miss" at its current size and position. Preserve all wording verbatim: "Claude Code", "Voice dictation", "Speak your prompt", "/voice"; "Codex", "Built-in image generation", "Generate and edit visual assets", "Create a matching illustration"; "GitHub Copilot CLI", "Computer use", "Work in GUI-only desktop apps", "/computer on". Preserve the three illustration narratives, friendly robots and humans, ellipsis outside the panels, unboxed footer caption, canvas dimensions, ivory/stone palette, and fine gold borders. Do not add availability caveats, a Desktop app label, logos, dates, or new text. Change only horizontal alignment, consistent vertical alignment, and the requested column heading sizes.
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

Define done before delegating combines task intent with observable acceptance criteria and evidence.
`define-done.webp` replaces the retired `bitter-lesson.webp` illustration; its
previous artwork and prompts remain available in Git history.

Convert selected PNG output with `cwebp -q 88` and keep the WebP in this folder.
Inspect the complete image, including all labels and arrow directions, then
render with `just render`. Check the image slides and workflow in presentation
and scroll views. Keep alternative text and speaker notes aligned with the
selected artwork. Re-run `just axe` after changing slide markup.

## Additional rule illustrations

Generated with the built-in image-generation tool. For each image below,
`deterministic-tooling.webp` is the style and character reference, and
`social-media-card.webp` is the typography and palette reference. Both are
references only; the outputs depict new advice. Complete prompts follow.

### prepare-codebase-for-agents.webp

```text
Use case: productivity-visual.
Asset type: NEW landscape 16:9 editorial illustration for a Quarto presentation slide about preparing a codebase before introducing coding agents.
Input image 1 is a style and character reference ONLY (the deck's friendly pen-and-ink robot and illustration craft). Input image 2 is a typography and palette reference ONLY (the title card). Create new artwork; do not copy their composition or wording.

Primary request: show that a coding agent amplifies the patterns it finds in a repository, so people should improve and clarify those patterns before scaling agent use. Make the causal point immediately legible: inconsistent conventions, duplication, shortcuts, and weak checks get repeated; clear conventions, coherent modules, and reliable checks give the agent a sound pattern to follow. Show human preparation first, then agent work.

Composition: two spacious square-corner panels side by side on a flat ivory canvas, each with one elegant serif heading. LEFT panel: a messy codebase as a tangled but recognisable map of modules, duplicated code pages, inconsistent naming, and a weak test sheet with gaps. A friendly robot follows and copies those visible patterns, producing a larger tangled map and more repeated pages. Use a few large, readable labels exactly: "Inconsistent patterns", "Duplicated code", "Weak checks". Make the echo/repetition causal and visible; no scary or destructive imagery.
RIGHT panel: a human prepares a codebase before handing it to the same friendly robot: clear module boundaries, one consistent example pattern, concise repository guidance, and reliable checks. The robot follows that example to produce matching, orderly modules. Use a few large, readable labels exactly: "Clear conventions", "Coherent modules", "Reliable checks". Human preparation must visibly happen before the robot extends the pattern.

A simple restrained arrow or bridge between the two panels can show the choice to prepare before adding more agent work. Keep the bottom area as clean ivory space, without a caption or horizontal rule.

Style: match the supplied deck references: refined editorial pen-and-ink infographic, ivory #fdfaf3 canvas, warm stone #e9e5db square-corner panels, near-black #141414 linework and text, restrained gold #dac284 for thin borders and dividers only, dark brown #7d6020 for readable emphasis. Bodoni/Didot-like serif headings and legible Montserrat-like sans-serif labels. Friendly small robot consistent with reference image 1. Spacious professional balance and clear visual hierarchy. Large exact labels readable when shown at 880 pixels wide.

Avoid: repeating the slide title or subtitle in the image, tiny paragraphs, fabricated metrics, code snippets, logos, bright colours, green ticks, gradients, glossy 3D, rounded cards, heavy shadows, extra slogans, watermarks, slide numbers, or claims that agents automatically repair technical debt. Keep the point qualified: agents tend to reproduce the patterns their repository exposes, so prepare those patterns first.
```

Final built-in image edit: remove the bottom caption and balance the ivory margins above and below the panels. Preserve all other artwork.

### define-done.webp

```text
Use case: productivity-visual. Asset type: NEW landscape 16:9 presentation illustration, about 1672 by 941 px. Input images are style references ONLY, never edit targets: deterministic-tooling.webp for the friendly pen-and-ink robot, social-media-card.webp for typography and palette. Refined editorial infographic: flat ivory #fdfaf3 canvas, warm stone #e9e5db square panels, near-black #141414 text and fine hand-drawn linework. Restrained gold #dac284 for hairline borders and dividers only, dark brown #7d6020 for optional readable emphasis. Bodoni/Didot serif panel headings, Montserrat-like sans-serif labels. Spacious professional composition, friendly small robot and human consistent with the reference. No bright colours, gradients, glossy 3D, rounded cards, heavy shadows, watermark, slide number, or redundant overall slide title. Text must be exact and comfortably legible when shown at 880 px wide.
Primary request: illustrate defining observable success BEFORE delegating and then gathering relevant evidence. Three equal square-corner panels side by side, each with one elegant serif heading and an expressive scene.
LEFT heading exactly "State the outcome". A human hands a brief to a robot. Three large labels on brief exactly "Goal", "Constraints", "What stays unchanged". Caption exactly "Give a target, not a script".
CENTRE heading exactly "Choose the evidence". Three neatly aligned line-drawn objects: a bug with a before-and-after test report, a browser window with a human interacting with it, and a stopwatch beside two benchmark traces. Three short captions exactly "Bug: reproduce, then fix", "UI: inspect the interaction", "Performance: measure". No fabricated numbers.
RIGHT heading exactly "Check the meaning". Human and robot jointly inspect a test page next to a requirements brief; a magnifying glass connects them, not a success badge. Large caption exactly "Tests can share the same mistake".
Do not add an overall caption below the panels. Centre the three-panel composition vertically with equal ivory margins above and below it. Keep robot drawing tasteful and relevant, not occupying all the evidence space.
```
