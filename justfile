# Default recipe - install, render, and open slides
default: install preview

# Show help
help:
    @echo "Available recipes:"
    @echo "  just install       - Install Python dependencies and Quarto extensions"
    @echo "  just sync          - Alias for install"
    @echo "  just update        - Update Python dependencies"
    @echo "  just render        - Render the Quarto slides to HTML"
    @echo "  just preview       - Start Quarto preview with live reload"
    @echo "  just open          - Alias for preview (live-reload dev server)"
    @echo "  just clean         - Remove generated files and caches"
    @echo "  just check         - Check Quarto and Python setup"
    @echo "  just axe           - Preview with the axe accessibility checker enabled"
    @echo "  just trim-art      - Trim blank canvas from illustrations and sync their sizes"
    @echo "  just (default)     - Install dependencies and start live-reload preview"

# Install/sync dependencies
install:
    uv sync --no-install-project
    quarto add mcanouil/quarto-revealjs-a11y --no-prompt
    quarto add IndrajeetPatil/quarto-read-aloud --no-prompt

# Alias for install
alias sync := install

# Update all dependencies
update:
    @echo "Updating Python dependencies..."
    uv lock --upgrade
    uv sync --no-install-project
    @echo "All dependencies updated!"

# Render slides
render:
    uv run quarto render index.qmd

# Preview with live reload
preview:
    uv run quarto preview index.qmd

# Alias for preview (live-reload dev server)
alias open := preview

# Clean generated files
clean:
    rm -rf .quarto/
    rm -rf _site/
    rm -rf _extensions/
    rm -f index.html
    rm -rf index_files/
    rm -rf .ipynb_checkpoints/
    rm -f README.html

# Check Quarto and Python setup
check:
    uv run quarto check

# Audit accessibility with axe-core, appending a violations report slide to the deck.
# Uses the a11y profile because `-M axe:true` cannot override the format block in index.qmd.
[positional-arguments]
axe *args:
    QUARTO_PROFILE=a11y uv run quarto preview index.qmd "$@"

# Trim blank canvas from illustrations (all, or the named media/*.webp files),
# leaving an even margin, then sync their width and height attributes in index.qmd.
# Idempotent: files already within a few pixels of the target margin are left untouched.
[positional-arguments]
trim-art *files:
    #!/usr/bin/env -S uv run --no-project --with pillow python
    import glob, re, sys
    from PIL import Image, ImageChops
    # PAD: margin kept around the artwork. THRESHOLD: colour difference from the
    # corner pixel that counts as artwork. TOLERANCE: ignore trims this small, so
    # re-running never re-encodes an already-trimmed file.
    PAD, THRESHOLD, TOLERANCE = 14, 5, 6
    files = sys.argv[1:] or sorted(glob.glob("media/*.webp"))
    for path in files:
        if "social-media-card" in path:
            continue
        image = Image.open(path).convert("RGB")
        width, height = image.size
        canvas = Image.new("RGB", image.size, image.getpixel((3, 3)))
        mask = ImageChops.difference(image, canvas).convert("L").point(lambda v: 255 if v > THRESHOLD else 0)
        left, top, right, bottom = mask.getbbox()
        box = (max(0, left - PAD), max(0, top - PAD), min(width, right + PAD), min(height, bottom + PAD))
        excess = max(box[0], box[1], width - box[2], height - box[3])
        if excess > TOLERANCE:
            image.crop(box).save(path, "WEBP", quality=90, method=6)
            print(f"trimmed {path}: {width}x{height} -> {box[2] - box[0]}x{box[3] - box[1]}")
    qmd = open("index.qmd").read()
    def sync(match):
        w, h = Image.open(match.group(2)).size
        return match.group(1) + f'width="{w}" height="{h}"'
    qmd = re.sub(r'(!\[\]\((media/[^)]+\.webp)\)[^\n]*?)width="\d+" height="\d+"', sync, qmd)
    open("index.qmd", "w").write(qmd)
