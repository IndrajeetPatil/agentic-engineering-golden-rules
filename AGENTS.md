# AGENTS.md

A single-page [Quarto](https://quarto.org/) presentation rendered to
[RevealJS](https://revealjs.com/) slides and deployed as a static site via
GitHub Pages.

All slides live in `index.qmd`; the visual design is specified in
[DESIGN.md](DESIGN.md). Run `just render` after every change; the `justfile`
lists the other recipes.

## Key conventions

- **Single-file deck.** All slides live in `index.qmd`; do not split it. Slides
  are separated by `##` headings, and `#` headings open sections. Use Quarto's
  RevealJS dialect: fenced divs (`:::`) and raw HTML blocks (`{=html}`).

- **Slide anatomy.** The canvas is 1280 × 800 (16:10), and every content slide
  follows one schema: a `data-kicker` running head on the heading, a one-line
  title, one `.lede` line, a single stage (an illustration, the tabset, or a
  card grid) that fills the remaining height, and a `.source` footer pinned in
  a reserved band. Never resize titles per slide or add `{.smaller}`; shorten
  the text instead. Section slides (`#`) carry an italic title and one `.lede`
  line. See [DESIGN.md](DESIGN.md) for the full schema.

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

- **Code blocks.** The deck shows no display code, so `style.css` has no code
  styles. Before adding code to a slide, add palette-mapped syntax colours to
  `style.css` rather than relying on Quarto's default highlight colours.

- **Rule slides.** Each golden rule opens on an illustration slide
  (`## Title {data-kicker="Rule NN"}`) whose `.lede` states the rule in one
  line, followed by an "in practice" slide where one exists. The practice
  slide repeats the rule title, takes the kicker `Rule NN · In practice`, and
  sets an explicit `-in-practice` slide ID. Non-rule slides use their section
  name as the kicker. There are no separate rule title slides; keep rule
  names identical to the README and `llms.txt` lists.

- **Images.** Illustrations use `.illustration` without a surrounding frame or
  padding, and the stage scales each to fit. After adding or changing an
  image, run `just trim-art media/<name>.webp`: it trims blank canvas in the
  file (never crop in CSS) and syncs the `width` and `height` attributes in
  `index.qmd`. Images are WebP; convert new PNG or JPEG assets with `cwebp`. The
  artwork follows the illustration style and reference images in
  [DESIGN.md](DESIGN.md); use `media/agent-autonomy.webp` as the palette
  reference for every illustration's bright ivory canvas and very pale panel
  fills, and compare new art with the references at slide size. Keep large
  backgrounds light enough to match that example; retain colour accents only
  for small semantic details.
  The artwork must not repeat the slide title or subtitle verbatim. Keep any
  necessary bottom caption unboxed and free of flanking horizontal rules, at a
  readable size. Use a concise subtitle for the key takeaway and let the
  illustration carry examples and flow; avoid explanatory copy inside the
  artwork when the visual is self-explanatory. The quality-gates example is a
  generated feedback-loop illustration; preserve its fail, fix, retry, pass,
  and human-review steps in the image and speaker notes.

- **Sources.** Every factual claim or borrowed idea has a `.source` div at the
  bottom of its slide. Keep references succinct: hyperlink a short concept,
  author, or organisation label instead of spelling out a paper title unless
  the full title is necessary. Write each footer as `Organisation, [concept](url)`
  items joined by `·`, with no `Source:` prefix and no trailing full stop.

- **Speaker notes.** Most slides carry `::: {.notes}` blocks; keep them in sync
  when changing slide content.

- **Spoken notes.** The read-aloud control speaks the `.notes` content. Write
  complete, audience-facing narration; keep staging cues, private reminders,
  and delivery checklists outside these blocks.

- **Accessibility.** Images must have `fig-alt` text; raw HTML widgets use
  `role="img"` and `aria-label`.

- **Icons.** Icons are HTML spans backed by only the required SVG path data in
  `style.css`; no icon font or Quarto icon extension. When adding one, add only
  its mask data, preserve the source licence attribution, and keep an
  accessible label where the icon conveys meaning.

- **Diagrams.** Use the built-in image-generation tool for diagram artwork and
  follow the checklist at the top of [media/README.md](media/README.md).
  Keep the labels and flow accurate, with equivalent detail in alternative
  text and speaker notes, and record each prompt in that file.

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

## Learn from mistakes

When a check fails, a reviewer raises a finding, or you notice a mistake in
your own work, fix it, then ask what led you to it. If `AGENTS.md`, a skill,
its scripts or templates, a prompt, or a doc gave missing, ambiguous, or
wrong guidance, correct that guidance in the same pull request, stating the
general rule rather than the incident. Never weaken a quality gate instead.

## Pull requests

Follow these rules without relying on any instructions outside this
repository:

- Write every commit message and PR title as a Conventional Commit,
  `type(scope): description`, lowercase and imperative, with an allowed type
  (`build`, `chore`, `ci`, `docs`, `feat`, `fix`, `perf`, `refactor`,
  `revert`, `style`, `test`). Keep the PR title and body in sync with the
  net diff.

- Open every PR ready for review with `gh pr create`, never as a draft.

- Never add agent or tool attribution to commits, PRs, or comments.

- When a PR needs visual evidence (such as slide layout or styling changes),
  use the shared `pr-screenshot` skill to post verified screenshots. Verify the
  uploaded images render in the comment.

- After opening or pushing, wait for hosted CI to finish. Inspect failed jobs,
  fix the cause, run the local checks, push, and repeat. Skipped, queued, or
  failing required checks are not success.

- If an automatic AI review (Codex, for the owner) runs on the PR, wait for
  its result instead of requesting one. Fix merited findings, reply to and
  resolve addressed threads, and continue until the review approves the
  current head with no unresolved findings. Never write `@codex` anywhere in
  a PR, even in backticks: it cancels the automatic review. Say "a Codex
  review request" instead.

- If Codex reports exhausted usage, take no workaround action: leave the PR
  open, do not merge, and report the review limit. CI work can still finish.
  Once usage refreshes, comment `@codex review` once; this is the only case
  that needs the comment.

- Once CI is green and the review gate is met, squash-merge with the owner's
  authenticated `gh` credentials, then verify the merged state. Recheck the
  head, threads, and checks immediately before merging, and never bypass
  branch protections.

- Update a PR branch from `main` only to resolve conflicts or pick up a change
  the PR depends on, never just to bring it up to date.

- Report local validation, hosted CI, review, and merge state separately. If
  an external blocker stops completion, leave the PR open and say so.

# CI/CD

- `.github/workflows/` calls a reusable workflow from `IndrajeetPatil/workflows`:
  pushes to `main` build and deploy to GitHub Pages, pull requests build
  without deploying. Do not inline or modify that workflow here.
- Reference `IndrajeetPatil/workflows` reusable workflows as `@main`, never a
  commit SHA. The owner maintains them and is the only person who can
  contribute to this repository, so there is no external-contributor risk, and
  `@main` keeps it on the latest version. Code scanners (CodeQL
  `actions/unpinned-tag`, zizmor `unpinned-uses`) flag this by design: do not
  report it or propose a pin; dismiss such alerts as "won't fix" with this
  reason.
