# Deck artwork

The seven rule illustrations were restyled with built-in image generation.
The guardrails workflow was generated from its original decision path, and
the setup contrast illustrates a shared one-command entry point. Final
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

```text
Two panels. Left "Haunted session": confused line-drawn robot at laptop beside a huge paper stack with a subtle outline ghost and labels "Stale assumptions", "Too much history", "Conflicting instructions", "Context drift". Centre reset arrow. Right "Fresh session": same calm robot working from one beautifully typeset compact handoff sheet labelled "Goal", "Constraints", "Relevant files", "Acceptance checks", with a clean terminal and "Clear next step". Footer "Fresh context beats haunted context". Preserve the reset/handoff meaning; omit simulated code and tiny chat paragraphs.
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

## Final text corrections

Apply these edits to the first generated output for each named asset.

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
