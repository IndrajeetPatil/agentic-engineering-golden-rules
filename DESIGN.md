---
version: alpha
name: Golden Rules for Agentic Engineering
description: >-
  Rossini Caviar-inspired visual identity for the agentic engineering slides:
  ivory page, warm stone panels, near-black ink, gold reserved for hairlines and
  rims, high-contrast Bodoni Moda headings, small tracked Montserrat labels,
  softly rounded panels, and square frames.
colors:
  primary: "{colors.gold-deep}"
  ivory: "#fdfaf3"
  stone: "#e9e5db"
  ink: "#141414"
  gold: "#dac284"
  gold-deep: "#7d6020"
  muted: "#5c574d"
typography:
  display:
    fontFamily: Bodoni Moda, Didot, Bodoni 72, Georgia, serif
    fontSize: 2.9em
    fontWeight: 500
    letterSpacing: -0.01em
    lineHeight: 1.1
  heading:
    fontFamily: Bodoni Moda, Didot, Bodoni 72, Georgia, serif
    fontSize: 1.45em
    fontWeight: 500
    letterSpacing: -0.01em
    lineHeight: 1.1
  body:
    fontFamily: Montserrat, Helvetica Neue, Arial, sans-serif
    fontSize: 1rem
    fontWeight: 400
    lineHeight: 1.5
  lede:
    fontFamily: Montserrat, Helvetica Neue, Arial, sans-serif
    fontSize: 0.62em
    fontWeight: 300
    lineHeight: 1.5
  eyebrow:
    fontFamily: Montserrat, Helvetica Neue, Arial, sans-serif
    fontSize: 0.7em
    fontWeight: 600
    letterSpacing: 0.18em
  code:
    fontFamily: ui-monospace, SF Mono, Menlo, Consolas, monospace
rounded:
  panel: 10px
  frame: 0px
components:
  page:
    backgroundColor: "{colors.ivory}"
    textColor: "{colors.ink}"
  card-stone:
    backgroundColor: "{colors.stone}"
    textColor: "{colors.ink}"
    rounded: "{rounded.panel}"
  card-ink:
    backgroundColor: "{colors.ink}"
    textColor: "{colors.ivory}"
    rounded: "{rounded.panel}"
  card-outline:
    borderColor: "{colors.gold}"
    rounded: "{rounded.panel}"
  illustration:
    borderColor: "{colors.gold}"
    rounded: "{rounded.frame}"
---

# DESIGN.md

The visual design specification of the Golden Rules for Agentic Engineering presentation deck.

## Overview

The visual design is inspired by [Rossini Caviar](https://rossinicaviar.com/): an ivory page (`#fdfaf3`), warm stone panels (`#e9e5db`), near-black ink (`#141414`), and gold (`#dac284`) used only for hairlines and borders, never for text on light backgrounds (where `--deck-gold-deep` is used instead).

Headings use Bodoni Moda at a fixed 28pt optical size; body text and tracked uppercase labels use Montserrat; code uses a system monospace stack. Boxed text panels (cards, table cards, and code blocks) have softly rounded corners (10px); hairline rules, tabs, and illustration frames remain strictly square.

The theme format is Quarto RevealJS (`theme: simple`). Tokens live as CSS custom properties under `:root` in `style.css` and are mirrored in the front matter above.

## Colours

- **Ivory (`--deck-ivory` / `#fdfaf3`):** Canvas background for slides and illustration backdrops.
- **Stone (`--deck-stone` / `#e9e5db`):** Soft, warm neutral used for card panels, table cards, code block backgrounds, and active tabs.
- **Ink (`--deck-ink` / `#141414`):** Near-black ink used for body text, headings, code text, filename tabs, and inverted `card-ink` backgrounds.
- **Gold (`--deck-gold` / `#dac284`):** Ornamental metallic hue reserved for hairline dividers, card outlines, illustration borders, table row dividers, and text selection highlights. Never used for text on light backgrounds due to contrast requirements.
- **Deep Gold (`--deck-gold-deep` / `#7d6020`):** Darker gold meeting WCAG AA contrast (>= 4.5:1) against ivory and stone. Used for links, link hovers, eyebrows, rule tags, rule numbers, list item bullet markers, and code syntax accents.
- **Muted Ink (`--deck-muted` / `#5c574d`):** Medium grey-brown used for `.lede` introductory sentences, `.source` citation footers, and code comments.

## Typography

- **Display & Headings:** `Bodoni Moda` (with fallbacks `Didot`, `Bodoni 72`, `Georgia`, `serif`). Font variation setting `opsz: 28`, weight `500`. Italic variants are used for section titles, card titles, slide ledes, and hero subtitles.
- **Body & Labels:** `Montserrat` (with fallbacks `Helvetica Neue`, `Arial`, `sans-serif`). Weight `400` for normal body, `300` for ledes, `600` for strong/emphasis and eyebrows.
- **Code:** Monospace stack (`ui-monospace`, `SF Mono`, `Menlo`, `Consolas`, `monospace`).

## Layout & Components

- **Cards:** Structured blocks with `.card` and one of:
  - `.card-stone`: Stone background (`--deck-stone`), ink text.
  - `.card-ink`: Ink background (`--deck-ink`), ivory text, gold eyebrows/markers.
  - `.card-outline`: Gold border (`--deck-gold`), transparent background.
- **Grids:** `.card-grid` paired with `.card-grid-2`, `.card-grid-3`, or `.card-grid-4`.
- **Eyebrows & Ledes:** `.eyebrow` for tracked, uppercase category labels in deep gold; `.lede` for introductory sentences under headings in muted ink.
- **Tables:** Contained within `.table-card` on stone backgrounds with uppercase gold-deep headers and gold dividers.
- **Code Blocks:** Display code inside stone blocks with `.code-with-filename` tabs in ink with gold labels. Syntax highlighting uses the palette tokens.
- **Illustrations:** Framed with `.illustration` using a gold border, 6px padding on ivory, and square corners. Artwork follows the restrained editorial style of `media/devex-agentex.webp`, `media/one-command-setup.webp`, `media/session-hygiene.webp`, and `media/know-thy-tools.webp`: bright ivory backgrounds, pale warm-stone panels, fine near-black linework, simple friendly figures, sparse shading, and restrained gold accents. Keep the overall value light and reserve near-black for linework and text; avoid brown-dominant fills and dense shadows. Avoid painterly or photoreal scenes, saturated colour, and decorative green checks.

## Do's and Don'ts

- **Do** use predefined CSS classes from `style.css` rather than ad-hoc inline styles.
- **Do** maintain WCAG AA contrast by using `--deck-gold-deep` for text on ivory/stone backgrounds.
- **Do** preserve 10px rounded corners for cards and code containers, but keep hairlines, tabs, and illustration frames square.
- **Don't** hard-code hex colours or novel font families in `index.qmd`.
- **Don't** use gold (`#dac284`) for text on light backgrounds.
- **Don't** use emoji in UI chrome or diagram text; use typographic or SVG equivalents.
