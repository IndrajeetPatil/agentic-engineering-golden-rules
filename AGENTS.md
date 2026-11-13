# AGENTS.md

A single-page [Quarto](https://quarto.org/) presentation rendered to
[RevealJS](https://revealjs.com/) slides and deployed as a static site via
GitHub Pages.

All slides live in `index.qmd`; the visual design is specified in
[DESIGN.md](DESIGN.md). Run `just render` after every change; the `justfile`
lists the other recipes.

## Key conventions

- **Single-file deck.** All slides live in `index.qmd`; do not split it. Slides
  are separated by `##` headings. Use Quarto's RevealJS dialect: fenced divs
  (`:::`), columns (`.columns` / `.column`), raw HTML blocks (`{=html}`), and
  the `{.smaller}` class for dense slides. Follow the layout patterns of
  neighbouring slides.
- **Design specification.** Follow [DESIGN.md](DESIGN.md) when creating or
  modifying slides, components, styling, colours, and typography. Lay out
  content with the component classes in `style.css` (cards, card grids,
  `.eyebrow`, `.lede`, `.source`) rather than inline styles. New widgets
  follow the naming patterns already in `style.css`. Colours live
  as custom properties under `:root` in `style.css`; do not hard-code new
  colours in `index.qmd`. Keep the theme `simple` and the format `revealjs`.
- **Spelling and punctuation.** Use British spelling in prose (colour, licence,
  catalogue, artefact) and the Oxford comma in lists of three or more. Leave
  code, identifiers, file names, URLs, quotations, and proper names (`license`
  in YAML, `.well-known/api-catalog`) as they are.
- **Code blocks.** Give display code a `filename` attribute
  (```` ```{.makefile filename="Makefile"} ````) so it renders with the ink
  filename tab. Syntax colours are mapped to the deck palette in `style.css`;
  extend that mapping rather than relying on Quarto's default highlight colours.
- **Rule slides.** Each golden rule opens on an illustration slide
  (`## [NN]{.rule-tag} Title {.rule-slide}`) whose `.lede` states the rule in
  one line, followed by an "in practice" slide where one exists. There are no
  separate rule title slides; keep the rule name identical on the overview
  slide and the rule slide.
- **Images.** Illustrations use the `.illustration` class (the gold hairline
  frame). Images are WebP; convert new PNG or JPEG assets with `cwebp`. The
  artwork follows the illustration style and reference images in
  [DESIGN.md](DESIGN.md); compare new art with those references at slide size.
  The artwork must not repeat the slide title or subtitle verbatim. Keep any
  necessary bottom caption unboxed and free of flanking horizontal rules, at a
  readable size. Use a concise subtitle for the key takeaway and let the
  illustration carry examples and flow; avoid explanatory copy inside the
  artwork when the visual is self-explanatory. The quality-gates example uses
  code blocks and a generated feedback-loop illustration; preserve its fail,
  fix, retry, pass, and human-review steps in the image and speaker notes.
- **Sources.** Every factual claim or borrowed idea has a `.source` div at the
  bottom of its slide. Keep references succinct: hyperlink a short concept,
  author, or organisation label instead of spelling out a paper title unless
  the full title is necessary.
- **Speaker notes.** Most slides carry `::: {.notes}` blocks; keep them in sync
  when changing slide content.
- **Spoken notes.** The read-aloud control speaks the `.notes` content. Write
  complete, audience-facing narration; keep staging cues, private reminders,
  and delivery checklists outside these blocks.
- **Accessibility.** Images must have `fig-alt` text; raw HTML widgets use
  `role="img"` and `aria-label`. Load the `check-accessibility` skill before
  changing markup, styles, widgets or the a11y setup.
- **Icons.** Icons are HTML spans backed by only the required SVG path data in
  `style.css`; no icon font or Quarto icon extension. When adding one, add only
  its mask data, preserve the source licence attribution, and keep an
  accessible label where the icon conveys meaning.
- **Diagrams.** Use the built-in image-generation tool for diagram artwork.
  Keep the labels and flow accurate, with equivalent detail in alternative
  text and speaker notes.
- **No code execution.** The front matter sets `execute: eval: false`; code
  blocks are display-only. Do not enable `eval: true` unless the deck genuinely
  needs computed output.
- **Python dependencies.** The deck declares `jupyter: python3`; the virtualenv
  only satisfies Quarto's engine. Depend only on `ipykernel`, `nbclient` and
  `pyyaml`. Do not add the `jupyter` metapackage: it pulls in JupyterLab and
  Notebook and only attracts irrelevant security alerts.
- **Discoverability files.** Update `meta-tags.html` when the title,
  description, or social card changes, and `llms.txt` / `llms-full.txt` (and
  their `.well-known/` mirrors) when the content changes significantly.
- **No new top-level files** without a clear reason; the structure is flat.

## CI/CD

- `.github/workflows/` calls a reusable workflow from `IndrajeetPatil/workflows`:
  pushes to `main` build and deploy to GitHub Pages, pull requests build
  without deploying. Do not inline or modify that workflow here.
- Reference the reusable workflow as `@main`, never a commit SHA: it is
  first-party, and a pinned SHA once went five months stale.

## Agent skills

Skills live in `.agents/skills/<name>/SKILL.md`. Load one before its task:

| Skill | Load before |
| --- | --- |
| `check-accessibility` | Changing slide markup, styles, widgets, menus or the a11y setup; any accessibility audit |
