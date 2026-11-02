# AGENTS.md

A single-page [Quarto](https://quarto.org/) presentation rendered to
[RevealJS](https://revealjs.com/) slides and deployed as a static site via
GitHub Pages.

## Repository layout

```text
index.qmd            # All slide content (the only file you usually need to edit)
_quarto.yml          # Quarto project config (output dir, resources list)
_quarto-a11y.yml     # Opt-in profile enabling the axe accessibility checker (`just axe`)
accessibility.html   # Compatibility fixes supplementing the a11y extension
style.css            # Custom RevealJS theme (fonts, colours, component classes)
meta-tags.html       # OpenGraph, Twitter Card, JSON-LD, and analytics tags
justfile             # Command runner
media/               # Images: AI-generated illustrations (WebP) and social card
llms.txt, llms-full.txt   # Machine-readable summaries (mirrored in .well-known/)
robots.txt, sitemap.xml   # Static crawl files; rarely change
pyproject.toml, uv.lock   # Python dependencies for Quarto's Jupyter engine (uv)
```

`_site/`, `_extensions/`, `.quarto/` and `.venv/` are gitignored; never commit
them.

## Commands

```bash
just install   # Install Python dependencies and the latest a11y extension
just update    # Update Python dependencies
just render    # Render index.qmd to _site/ (run after every change)
just preview   # Live-reload dev server
just clean     # Remove build artefacts
just check     # Verify Quarto setup
just axe       # Preview with the axe accessibility checker enabled
```

## Key conventions

- **Single-file deck.** All slides live in `index.qmd`; do not split it. Slides
  are separated by `##` headings. Use Quarto's RevealJS dialect: fenced divs
  (`:::`), columns (`.columns` / `.column`), raw HTML blocks (`{=html}`), and
  the `{.smaller}` class for dense slides. Follow the layout patterns of
  neighbouring slides.
- **Rossini-inspired design.** The visual design follows
  [Rossini Caviar](https://rossinicaviar.com/): an ivory page (`#fdfaf3`),
  stone panels (`#e9e5db`), near-black ink (`#141414`), and gold (`#dac284`)
  used only for hairlines and borders, never for text on light backgrounds
  (use `--deck-gold-deep` instead). Headings use Bodoni Moda at a fixed 28pt
  optical size; body text and tracked uppercase labels use Montserrat. Corners
  are square. Colours live as custom properties under `:root` in `style.css`;
  do not hard-code new colours in `index.qmd`. Keep the theme `simple` and the
  format `revealjs`.
- **Card classes.** Lay out content with the classes in `style.css` rather than
  inline styles: `.card` plus one of `.card-stone`, `.card-ink`, or
  `.card-outline`; `.card-grid` with `.card-grid-2`, `.card-grid-3`, or
  `.card-grid-4`; `.eyebrow` for small uppercase labels; `.lede` for the
  sentence under a heading; and `.source` for citations. New widgets follow
  the naming patterns already in `style.css`.
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
  guardrails workflow is a WebP inside a `.card-stone` with `.diagram-card`,
  which caps its height; preserve its pass, fail, retry, and human-review paths
  in the artwork, alternative text, and speaker notes.
- **Sources.** Every factual claim or borrowed idea has a `.source` div at the
  bottom of its slide.
- **Speaker notes.** Most slides carry `::: {.notes}` blocks; keep them in sync
  when changing slide content.
- **Accessibility.** Images must have `fig-alt` text; raw HTML widgets use
  `role="img"` and `aria-label`. Load the `check-accessibility` skill before
  changing markup, styles, widgets or the a11y setup.
- **Icons.** Icons are HTML spans backed by only the required SVG path data in
  `style.css`; no icon font or Quarto icon extension. When adding one, add only
  its mask data, preserve the source licence attribution, and keep an
  accessible label where the icon conveys meaning.
- **Mermaid.** Keep diagrams as Mermaid source; do not replace them with
  pre-rendered SVGs to shrink the bundle.
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
- Dependabot updates GitHub Actions and `uv` dependencies weekly.

## Agent skills

Skills live in `.agents/skills/<name>/SKILL.md`. Load one before its task:

| Skill | Load before |
| --- | --- |
| `check-accessibility` | Changing slide markup, styles, widgets, menus or the a11y setup; any accessibility audit |
