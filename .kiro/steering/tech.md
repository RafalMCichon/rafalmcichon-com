# Tech Stack

## Core Technology
- **Static Site Generator**: Jekyll (GitHub Pages compatible)
- **Language**: Ruby 3.3.10
- **Markup**: Markdown for content, HTML for layouts
- **Styling**: Single CSS file (`assets/site.css`)
- **Hosting**: GitHub Pages

## Dependencies
- `github-pages` gem (ensures parity with GitHub Pages environment)
- `webrick` gem (local development server)
- Jekyll plugins: `jekyll-sitemap`, `jekyll-feed`

## Ruby Version Management
The project pins Ruby version via:
- `.ruby-version` (3.3.10)
- `.tool-versions` (asdf/mise compatibility)
- `Gemfile` (explicit Ruby version)

## Common Commands

### Setup
```bash
# Optional: Install system dependencies
brew bundle

# Install Ruby dependencies
bundle install
```

### Development
```bash
# Start local server with live reload
bundle exec jekyll serve --livereload

# Or use convenience scripts
./scripts/serve-livereload.sh

# Custom ports
PORT=4002 ./scripts/serve.sh
PORT=4002 LR_PORT=35731 ./scripts/serve-livereload.sh
```

### Validation
```bash
# Run self-check script
chmod +x scripts/self-check.sh
./scripts/serve-livereload.sh
```

## Default Ports
- Jekyll server: `http://127.0.0.1:4000/`
- LiveReload: `35729`

## Build Output
Jekyll generates static site in `_site/` directory (excluded from git)
