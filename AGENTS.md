# AGENTS.md

Project-level instructions for AI coding agents working on this repository —
Codex, GitHub Copilot (code review and coding agent), and other
`AGENTS.md`-aware tools read this file directly.

## What this is

A single-page [Quarto](https://quarto.org/) presentation rendered to [RevealJS](https://revealjs.com/) slides and deployed as a static site via GitHub Pages.

## Repository layout

```
index.qmd           # All slide content (the only file you usually need to edit)
_quarto.yml          # Quarto project config (output dir, resources list)
_quarto-a11y.yml     # Opt-in profile enabling the axe accessibility checker (`just axe`)
accessibility.html  # Compatibility fixes supplementing the a11y extension
style.css            # Custom RevealJS theme (fonts, colours, component classes)
meta-tags.html       # OpenGraph, Twitter Card, JSON-LD, and analytics tags
justfile             # Command runner (install, render, preview, clean, etc.)
media/               # Images: AI-generated illustrations (WebP) and social card
llms.txt             # Short machine-readable summary for LLM discovery
llms-full.txt        # Extended machine-readable summary
.well-known/         # Mirrors of llms.txt and llms-full.txt
robots.txt           # Crawl rules
sitemap.xml          # Sitemap for search engines
.github/             # CI workflow (reusable, from IndrajeetPatil/workflows) and Dependabot
_extensions/         # Latest a11y extension, installed by `just install` and CI (gitignored)
_site/               # Build output (gitignored)
```

### Language-specific files

Python-based decks also have:

```
pyproject.toml       # Project metadata and dependencies (managed by uv)
uv.lock              # Locked Python dependencies
.python-version      # Python version pin
.venv/               # Python virtualenv (gitignored)
```

R-based decks have instead:

```
renv.lock            # Locked R dependencies
renv/                # renv library and infrastructure (library/ is gitignored)
.Rprofile            # Bootstraps renv on session start
```

Check which set is present to know which language context applies.

## Key conventions

- **Single-file deck.** All slides live in `index.qmd`. There are no partial includes or multi-file splits.
- **Slide syntax.** Slides are separated by `##` headings. Use Quarto's RevealJS dialect: fenced divs (`:::`), columns (`.columns` / `.column`), raw HTML blocks (`{=html}`), and the `{.smaller}` class for dense slides.
- **Rossini-inspired design.** The visual design follows [Rossini Caviar](https://rossinicaviar.com/): an ivory page (`#fdfaf3`), stone panels (`#e9e5db`), near-black ink (`#141414`), and gold (`#dac284`) used only for hairlines and borders, never for text on light backgrounds (use `--deck-gold-deep` instead). Headings use Bodoni Moda at a fixed 28pt optical size; body text and tracked uppercase labels use Montserrat. Corners are square. Colours live as custom properties under `:root` in `style.css`; do not hard-code new colours in `index.qmd`.
- **Card classes.** Lay out content with the classes in `style.css` rather than inline styles: `.card` plus one of `.card-stone`, `.card-ink`, or `.card-outline`; `.card-grid` with `.card-grid-2`, `.card-grid-3`, or `.card-grid-4`; `.eyebrow` for small uppercase labels; `.lede` for the sentence under a heading; and `.source` for citations.
- **Code blocks.** Give display code a `filename` attribute (```` ```{.makefile filename="Makefile"} ````) so it renders with the ink filename tab. Syntax colours are mapped to the deck palette in `style.css`; extend that mapping rather than relying on Quarto's default highlight colours.
- **Rule slides.** Each golden rule has a section slide (`# [Rule NN]{.section-eyebrow} Title`), an illustration slide (`## [NN]{.rule-tag} Title {.rule-slide}`), and an "in practice" slide. Keep this rhythm when adding or reordering rules.
- **Image classes.** Illustrations use the `.illustration` class, which controls the gold hairline frame in `style.css`. Images are WebP; convert new PNG or JPEG assets with `cwebp` before adding them.
- **Sources.** Every factual claim or borrowed idea has a source citation at the bottom of its slide in a `.source` div. Keep this pattern.
- **Speaker notes.** Most slides carry `::: {.notes}` blocks with talking points. Keep them in sync when changing slide content.
- **Accessibility.** Images must have `fig-alt` text. Raw HTML widgets use `role="img"` and `aria-label`. Keep these.
  Verify with `just axe`, which appends an "Accessibility Report" slide listing axe-core violations. Do not add `axe` to
  `index.qmd`: it belongs in `_quarto-a11y.yml` so the deployed deck never ships the axe-core payload. Note that
  `-M axe:true` cannot enable it, because the `format:` block in `index.qmd` takes precedence over CLI metadata.
  Links inside muted text need a non-colour cue (e.g. `text-decoration: underline`) to satisfy WCAG 1.4.1.
  The `a11y` extension supplies zoom, focus indicators, link underlines, reduced motion,
  slide isolation, and screen-reader announcements. Keep `accessibility.html` for
  code scrolling, menu focus, and vertical-slide semantics. This deck has no
  tabsets, but `accessibility.html` still ships the shared tabset keyboard handling:
  the file is copied verbatim across decks and kept in sync by hand, so never trim
  it locally.
  Version 0.2.3's slide-menu patch and settings menu introduce axe failures on this
  deck, so both are disabled in `index.qmd`. Inspect all slides,
  revealed fragments and menu panels in both presentation and native `?view=scroll` modes;
  the initial report alone does not exercise every state. For headless checks, use
  `just axe --no-browser --port 8891`.
- **Icons.** Icons use lightweight HTML spans backed by only the required SVG path data in the custom stylesheet; no icon-font or Quarto icon extension is needed.
  When adding an icon, add only its mask data, preserve the source licence attribution, keep an accessible label where the icon conveys meaning, and render the deck to verify it.
- **Workflow illustrations.** The guardrails workflow uses a WebP inside a `.card-stone` with `.diagram-card`, which caps the image height so text cards fit below. Preserve the pass, fail, retry, and human-review paths in the artwork, alternative text, and speaker notes.
- **Mermaid performance boundary.** Keep Mermaid diagrams as Mermaid source. Do not replace them with pre-rendered SVGs solely to reduce the website bundle.
- **No code execution.** The YAML front matter sets `execute: eval: false`. Code blocks are for display only; they are not executed during render.
- **Compute engine.** Python decks declare `jupyter: python3` in the front matter; R decks declare `engine: knitr`. The virtualenv or renv exists to satisfy Quarto's engine, not to run slide code. Python decks depend only on what Quarto's Jupyter engine imports: `ipykernel`, `nbclient` (which brings `nbformat` and `jupyter-client`), and `pyyaml`. Do not add the `jupyter` metapackage: it pulls in JupyterLab and Notebook, which the deck never runs, and only attracts irrelevant security alerts.

## Commands

All commands use [just](https://github.com/casey/just). The recipes are the same across decks; only the dependency backend differs:

```bash
just install   # Install language dependencies and the latest a11y extension
just sync      # Alias for install
just update    # Update language dependencies
just render    # Render index.qmd to _site/
just preview   # Live-reload dev server
just open      # Alias for preview (live-reload dev server over localhost)
just clean     # Remove build artefacts
just check     # Verify Quarto setup
just axe       # Preview with the axe accessibility checker enabled
```

This deck renders with Quarto. Python dependencies are managed with [uv](https://docs.astral.sh/uv/) (`pyproject.toml` + `uv.lock`); CI installs them with `uv sync --frozen`. Slides live in `index.qmd`.

## Editing slides

When modifying `index.qmd`:

1. Follow the existing card/column layout patterns visible in neighbouring slides.
2. Preserve the source-citation div at the bottom of each slide.
3. Use the existing card classes and palette rather than inventing new colours.
4. Keep `fig-alt` on every image and `aria-label` on HTML widgets.
5. Run `just render` (or `just preview`) to verify changes compile without errors.

## Editing styles

`style.css` defines CSS custom properties under `:root` and component classes for complex HTML widgets. The variable names and widget classes vary per deck. When adding a new widget, follow the naming and structure patterns already present in the file.

## SEO and discoverability files

- `meta-tags.html` contains OpenGraph, Twitter Card, JSON-LD structured data, and Google Analytics. Update it when the title, description, or social card image changes.
- `llms.txt` and `llms-full.txt` are machine-readable summaries following the llms.txt convention. Update them when the deck content changes significantly.
- `sitemap.xml` and `robots.txt` are static and rarely need changes.

## CI/CD

- The GitHub Actions workflow in `.github/workflows/` renders the deck and deploys to GitHub Pages. Automatic runs are currently paused: the workflow only has a `workflow_dispatch` trigger until the deck is ready to publish. Do not restore the `push`/`pull_request` triggers unless asked. It calls a reusable workflow from `IndrajeetPatil/workflows` (Python and R decks use different workflow files). Do not inline the workflow.
- **Reference the reusable workflow as `@main`, not a commit SHA.** These workflows are first-party, so tracking `main` is intentional: upstream fixes arrive immediately instead of waiting on a manual SHA bump. A previously pinned SHA went five months stale, leaving CI building with pre-release Quarto and installing a FontAwesome extension this deck does not use, long after upstream had fixed both. Dependabot cannot bump a branch ref, so there is nothing to keep in sync.
- Install the latest a11y extension directly from upstream with
  `quarto add mcanouil/quarto-revealjs-a11y --no-prompt` in both `justfile` and CI.
  This extension is trusted; do not add version pins, vendoring, or checksum checks.
- Dependabot keeps GitHub Actions dependencies up to date weekly. Python decks also have Dependabot configured for `uv`; R decks do not use Dependabot for R packages.

## What not to do

- Do not add new top-level files without a clear reason; the project intentionally has a flat structure.
- Do not split `index.qmd` into multiple files.
- Do not change the Quarto theme from `simple` or the output format from `revealjs`.
- Do not enable code execution (`eval: true`) unless the presentation genuinely needs computed output.
- Do not commit `_site/`, `_extensions/`, or `.quarto/` (all gitignored). For Python decks, `.venv/` is also gitignored; for R decks, `renv/library/` and `renv/staging/` are gitignored.
- Do not modify the reusable CI workflow inline; it lives in a separate repository.
- Do not pin the reusable workflow to a commit SHA; use `@main` (see CI/CD).
- **Spelling and punctuation.** Use British spelling in prose (colour, licence, catalogue, artefact) and the Oxford comma in lists of three or more. Leave code, identifiers, file names, URLs, quotations, and proper names (`license` in YAML, `.well-known/api-catalog`) as they are.
