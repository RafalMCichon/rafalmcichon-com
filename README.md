# rafalmcichon.com (minimal Jekyll)

Goal: clean HTML + 1 CSS, strong accessibility, strong SEO basics, content in Markdown.

## Local preview (macOS)
This repo pins Ruby via:
- `.ruby-version` (3.3.10)
- `.tool-versions` (asdf/mise)
- `Gemfile` (uses `github-pages` gem for parity with GitHub Pages)

Install:
- optional: `brew bundle` (Brewfile)
- `bundle install`

Run:
- `bundle exec jekyll serve --livereload`

Self-check:
- `chmod +x scripts/self-check.sh`
- `./scripts/self-check.sh`
## Ports
- Default: http://127.0.0.1:4000/
- LiveReload port: 35729
- Override (example): `PORT=4002 ./scripts/serve.sh`
- Override LiveReload: `PORT=4002 LR_PORT=35731 ./scripts/serve-livereload.sh`
