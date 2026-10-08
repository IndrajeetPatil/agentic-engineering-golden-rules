# Golden Rules for Agentic Engineering

[![Build and Deploy Presentation](https://github.com/IndrajeetPatil/agentic-engineering-golden-rules/actions/workflows/build-presentation.yaml/badge.svg)](https://github.com/IndrajeetPatil/agentic-engineering-golden-rules/actions/workflows/build-presentation.yaml)

This presentation distils ten golden rules for agentic engineering: using
coding agents to boost productivity without compromising quality.

1. Measure the whole job
2. DevEx = AgentEx
3. Define done before delegating
4. Scope control
5. Bound the blast radius
6. Guardrails
7. Session hygiene
8. Know thy tools
9. Meta-automation
10. Be curious. Be humble. Be kind.

The slides can be seen here:<br>
<https://www.indrapatil.com/agentic-engineering-golden-rules/>

<a href="https://www.indrapatil.com/agentic-engineering-golden-rules/" target="_blank" rel="noopener noreferrer">
<img src="media/social-media-card.webp" alt="Title slide reading Golden Rules for Agentic Engineering" width="600"/>
</a>

## Design

The visual design is inspired by [Rossini Caviar](https://rossinicaviar.com/):
an ivory page, warm stone panels, near-black ink, gold reserved for hairlines,
high-contrast [Bodoni Moda](https://fonts.google.com/specimen/Bodoni+Moda)
headings, and small tracked [Montserrat](https://fonts.google.com/specimen/Montserrat)
labels, the same typefaces the site uses. All illustrations in the deck are
AI-generated and use the same ivory, stone, ink, and gold palette. The
guardrails workflow is also a WebP illustration, with its decision path
described in alternative text and speaker notes. See [media/README.md](media/README.md)
for the illustration prompts and regeneration guidance.

## Development

This project uses Python 3.14 (see `.python-version`) with [uv](https://docs.astral.sh/uv/) for dependency management, [Quarto](https://quarto.org/) for rendering slides, and [just](https://github.com/casey/just) as a command runner.

### Prerequisites

```bash
# Install just (macOS)
brew install just
```

### Setup

```bash
just install
```

### Just Commands

```bash
just help     # Show all available commands
just install  # Install Python dependencies and the a11y extension
just update   # Update Python dependencies
just render   # Render slides to HTML
just preview  # Start a live preview with auto-reload
just open     # Alias for preview (live-reload dev server over localhost)
just clean    # Remove generated files and caches
just check    # Check the Quarto and Python setup
just          # Install dependencies and start live-reload preview
```

### Accessibility

`just install` and the shared CI workflow install the latest
[`quarto-revealjs-a11y`](https://github.com/mcanouil/quarto-revealjs-a11y) directly
from upstream with `quarto add mcanouil/quarto-revealjs-a11y --no-prompt`.
The extension handles browser zoom, slide isolation, focus indicators, link
underlines, reduced motion, and screen-reader announcements. Run `just install`
again after `just clean`, which removes installed extensions.

The `accessibility.html` helper still handles scrollable code, slide-menu focus,
and vertical-slide semantics. It also carries tabset keyboard handling, which is
shared verbatim across decks and stays inert here because this deck has no
tabsets. The extension's slide-menu patch and accessibility settings panel are disabled:
version 0.2.3 introduces ARIA and contrast failures in those components.

Use `just axe` to preview with the accessibility report. Check slides, fragments,
and the menu in presentation and scroll views; the initial report does
not exercise every state. Normal builds omit the axe checker.

## Deployment

Every push to `main` renders the deck and deploys it to GitHub Pages through
the shared workflow in `.github/workflows/build-presentation.yaml`. Pull
requests render the deck without deploying it.

## Feedback

Feedback and suggestions are welcome in [the issue tracker](https://github.com/IndrajeetPatil/agentic-engineering-golden-rules/issues).
