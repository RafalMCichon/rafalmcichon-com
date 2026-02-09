# rafalmcichon.com

Personal portfolio and technical blog built with Jekyll. Clean HTML, single CSS file, strong accessibility and SEO.

## Tech Stack
- **Jekyll** (GitHub Pages compatible)
- **Ruby** 3.3.x (pinned via `.ruby-version` and `Gemfile`)
- **Deployment**: GitHub Actions → GitHub Pages
- **Custom domain**: rafalmcichon.com

## Local Development

### Setup
```bash
# Optional: Install system dependencies (macOS)
brew bundle

# Install Ruby gems
bundle install
```

### Run Local Server
```bash
# With live reload (recommended)
./scripts/serve-livereload.sh

# Or manually
bundle exec jekyll serve --livereload

# Without live reload
./scripts/serve.sh
```

### Custom Ports
```bash
# Change server port
PORT=4002 ./scripts/serve.sh

# Change both server and LiveReload ports
PORT=4002 LR_PORT=35731 ./scripts/serve-livereload.sh
```

Default URLs:
- Server: http://127.0.0.1:4000/
- LiveReload: port 35729

### Validation
```bash
chmod +x scripts/self-check.sh
./scripts/self-check.sh
```

Checks:
- Layouts contain `{{ content }}`
- `llms.txt` is UTF-8 (no mojibake)
- Markdown files have `title:` and `description:` front matter

## Deployment

Automatic deployment via GitHub Actions on push to `main`:
1. Builds Jekyll site with Ruby 3.3.x
2. Deploys to GitHub Pages
3. Serves at https://rafalmcichon.com

### Multi-Platform Support
`Gemfile.lock` includes both:
- `arm64-darwin` (macOS Apple Silicon)
- `x86_64-linux` (GitHub Actions runners)

To add platforms: `bundle lock --add-platform PLATFORM`

## Project Structure
- `_posts/` - Blog posts (date-prefixed)
- `projects/` - Case studies
- `notes/` - Technical notes
- `log/` - Wins, losses, lessons
- `_layouts/` - Jekyll templates
- `_includes/` - Reusable partials
- `assets/` - CSS, images, icons
- `scripts/` - Development helpers
