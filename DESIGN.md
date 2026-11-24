---
version: alpha
name: Golden Rules for Agentic Engineering
description: >-
  Rossini Caviar-inspired visual identity for the agentic engineering slides:
  ivory page, warm stone panels, near-black ink, gold reserved for hairlines and
  rims, high-contrast Bodoni Moda headings, small tracked Montserrat labels,
  softly rounded panels, and one fixed slide anatomy on a 16:10 canvas.
canvas:
  width: 1280px
  height: 800px
  aspectRatio: "16:10"
  margin: 0.04
  sidePadding: 40px
  footerBand: 56px
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
    fontSize: 3.2em
    fontWeight: 500
    letterSpacing: -0.01em
    lineHeight: 1
  section:
    fontFamily: Bodoni Moda, Didot, Bodoni 72, Georgia, serif
    fontSize: 2.6em
    fontStyle: italic
    fontWeight: 500
  heading:
    fontFamily: Bodoni Moda, Didot, Bodoni 72, Georgia, serif
    fontSize: 1.2em
    fontWeight: 500
    letterSpacing: -0.01em
    lineHeight: 1.1
  kicker:
    fontFamily: Montserrat, Helvetica Neue, Arial, sans-serif
    fontSize: 0.34em
    fontWeight: 600
    letterSpacing: 0.18em
  lede:
    fontFamily: Montserrat, Helvetica Neue, Arial, sans-serif
    fontSize: 0.54em
    fontWeight: 300
    lineHeight: 1.45
  source:
    fontFamily: Montserrat, Helvetica Neue, Arial, sans-serif
    fontSize: 0.36em
    fontWeight: 400
  body:
    fontFamily: Montserrat, Helvetica Neue, Arial, sans-serif
    fontSize: 1rem
    fontWeight: 400
    lineHeight: 1.5
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
  prompt-example:
    backgroundColor: "{colors.stone}"
    rounded: "{rounded.panel}"
  illustration:
    rounded: "{rounded.frame}"
---

# DESIGN.md

The visual design specification of the Golden Rules for Agentic Engineering presentation deck.

## Overview

The visual design is inspired by [Rossini Caviar](https://rossinicaviar.com/): an ivory page (`#fdfaf3`), warm stone panels (`#e9e5db`), near-black ink (`#141414`), and gold (`#dac284`) used only for hairlines and borders, never for text on light backgrounds (where `--deck-gold-deep` is used instead).

Headings use Bodoni Moda at a fixed 28pt optical size; body text and tracked uppercase labels use Montserrat. Boxed text panels (cards and the prompt example) have softly rounded corners (10px); hairline rules and tabs remain strictly square.

The theme format is Quarto RevealJS (`theme: simple`). Tokens live as CSS custom properties under `:root` in `style.css` and are mirrored in the front matter above.

## Canvas

The deck renders on a 1280 × 800 (16:10) canvas with a 4% outer margin. The front matter sets `center: false` and `display: flex`, so every slide is a full-height flex column and each region lands in the same place on every slide. The 16:10 ratio leaves enough height for a full-width illustration beneath a three-line header.

## Slide anatomy

Every content (`##`) slide follows the same schema, top to bottom:

| Region | Markup                                                        | Style                                                                                 |
| ------ | ------------------------------------------------------------- | ------------------------------------------------------------------------------------- |
| Kicker | `data-kicker="…"` on the heading                              | Tracked uppercase Montserrat in deep gold, rendered by `section[data-kicker]::before` |
| Title  | `## Title`                                                    | Bodoni Moda at `1.2em`, one line, the same size on every slide                        |
| Lede   | `[…]{.lede}`                                                  | One line of light Montserrat in muted ink                                             |
| Stage  | one illustration, the `.stack-tabs` tabset, or a `.card-grid` | Fills the remaining height; content is scaled to fit and centred                      |
| Footer | `::: {.source}`                                               | Pinned in a reserved 56px band; the band stays empty when a slide has no source       |

Kickers name the slide's place in the talk:

- Golden rules: `Rule NN`, and `Rule NN · In practice` for the follow-up slide, which repeats the rule title.

- Other slides: the section name (`Before we start`, `The reward`).

Section (`#`) slides centre an italic lowercase title, a short gold hairline, and one `.lede` line. The closing slide adds a `.closing-links` block. The title slide is a centred `.hero` wordmark with the repository note in the standard `.source` footer.

## Colours

- **Ivory (`--deck-ivory` / `#fdfaf3`):** Canvas background for slides and illustration backdrops.
- **Stone (`--deck-stone` / `#e9e5db`):** Soft, warm neutral used for card panels, the prompt example, and active tabs.
- **Ink (`--deck-ink` / `#141414`):** Near-black ink used for body text, headings, and inverted `card-ink` backgrounds.
- **Gold (`--deck-gold` / `#dac284`):** Ornamental metallic hue reserved for hairline dividers, tab rules, the section-title hairline, eyebrows on ink cards, and text selection highlights. Never used for text on light backgrounds due to contrast requirements.
- **Deep Gold (`--deck-gold-deep` / `#7d6020`):** Darker gold meeting WCAG AA contrast (>= 4.5:1) against ivory and stone. Used for kickers, eyebrows, the prompt label, link underlines, and link hovers.
- **Muted Ink (`--deck-muted` / `#5c574d`):** Medium grey-brown used for `.lede` lines, `.source` footers, and the slide number.

## Typography

- **Display and headings:** `Bodoni Moda` (with fallbacks `Didot`, `Bodoni 72`, `Georgia`, `serif`). Font variation setting `opsz: 28`, weight `500`. Italic variants are used for section titles, card titles, and the hero's second line.
- **Body and labels:** `Montserrat` (with fallbacks `Helvetica Neue`, `Arial`, `sans-serif`). Weight `400` for body, `300` for ledes, and `600` for strong text, kickers, and eyebrows.

## Components

- **Cards:** `.card` with `.card-stone` (stone background, ink text) or `.card-ink` (ink background, ivory text, gold eyebrow), placed in a `.card-grid .card-grid-2` stage. Each card opens with an `.eyebrow` and a `.card-title`.
- **Prompt example:** `.prompt-example` with a `.prompt-label` quotes a prompt beneath an illustration, between the stage and the footer.
- **Tabset:** `.stack-tabs` on a Quarto `.panel-tabset` places square tabs above the stage; each tab pane carries its own illustration and `.source`.
- **Icons:** `.deck-icon` mask spans, linked through `.deck-icon-link` in `.closing-links`.

## Illustrations

- Use `.illustration` without a surrounding frame or padding. The stage scales each image with `object-fit: contain`, so its width and height attributes only need to match the file's pixel size.
- Generate artwork on a landscape canvas of 16:9 or wider, composed to fill it. Then run `just trim-art media/<name>.webp`, which trims blank canvas from the WebP file to a small even margin and syncs the image's `width` and `height` in `index.qmd`, so every illustration fills the stage at the same visual weight. Do not crop in CSS.
- The step-by-step checklist for generating or changing artwork lives in [media/README.md](media/README.md).
- Artwork follows the restrained editorial style of `media/devex-agentex.webp`, `media/one-command-setup.webp`, `media/session-hygiene.webp`, and `media/know-thy-tools.webp`; use `media/agent-autonomy.webp` as the palette reference for canvas and panel brightness. Use a bright ivory (`#fdfaf3`) canvas and very pale warm-stone (`#e9e5db`) panels, with subtle contrast between them.
- Keep every canvas and large panel background light so the artwork pops against the slide; use no dark or brown-dominant backgrounds. Keep the overall value light and reserve near-black for linework and text; avoid dense shadows. Avoid painterly or photoreal scenes, saturated colour, and decorative green checks.
- Wide artwork (around 2:1 or wider) suits the stage best; anything narrower than 16:9 leaves empty space at the sides.

## Do's and Don'ts

- **Do** use predefined CSS classes from `style.css` rather than ad hoc inline styles.
- **Do** keep every title and lede to one line so the stage starts at the same height on every slide.
- **Do** maintain WCAG AA contrast by using `--deck-gold-deep` for text on ivory and stone backgrounds.
- **Don't** change title or lede sizes on individual slides, or bring back `{.smaller}`.
- **Don't** hard-code hex colours or novel font families in `index.qmd`.
- **Don't** use gold (`#dac284`) for text on light backgrounds.
- **Don't** give cards or callouts coloured edges or accent bars; use the stone or ink fills.
- **Don't** use emoji in UI chrome or diagram text; use typographic or SVG equivalents.
