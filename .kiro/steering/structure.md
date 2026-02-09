# Project Structure

## Content Organization

### Root Level
- `index.md` - Homepage
- `about.md`, `contact.md` - Static pages
- `404.md` - Error page
- `llms.txt` - LLM-friendly site summary

### Content Directories
- `_posts/` - Blog posts (date-prefixed: `YYYY-MM-DD-title.md`)
- `projects/` - Case studies and project write-ups
- `notes/` - Technical notes and short articles
- `log/` - Wins, losses, lessons learned
- `experience/`, `resume/`, `skills/` - Professional background
- `hobby/`, `site/` - Additional content sections
- `_drafts/` - Unpublished content

### Templates & Includes
- `_layouts/` - Jekyll layout templates
  - `default.html` - Base layout
  - `page.html` - Standard page layout
  - `post.html` - Blog post layout
- `_includes/` - Reusable HTML partials
  - `header.html`, `footer.html`, `head.html`
  - `schema-*.jsonld` - Structured data templates

### Assets
- `assets/site.css` - Single stylesheet for entire site
- `assets/img/` - Images (multiple formats and sizes for responsive images)
- `assets/og-default.png` - Default Open Graph image
- `favicon.ico`, `favicon.svg`, `apple-touch-icon.png` - Site icons

### Configuration & Scripts
- `_config.yml` - Jekyll configuration
- `Gemfile` - Ruby dependencies
- `.ruby-version`, `.tool-versions` - Ruby version pinning
- `scripts/` - Helper scripts (serve, self-check)
- `Brewfile` - macOS dependencies

## Content Conventions

### Front Matter (Required)
All markdown files should include:
```yaml
---
layout: page|post
title: "Page Title"
description: "SEO description"
permalink: /custom-url/
---
```

### Posts Front Matter
```yaml
---
layout: post
title: "Post Title"
description: "Post description"
date: YYYY-MM-DD HH:MM:SS -0500
categories: [notes]
permalink: /notes/post-slug/
---
```

### File Naming
- Posts: `YYYY-MM-DD-slug.md` in `_posts/`
- Pages: `slug.md` or `directory/index.md`
- Use kebab-case for slugs

## Validation Rules

The `scripts/self-check.sh` enforces:
1. All layouts must contain `{{ content }}`
2. `llms.txt` must be UTF-8 (no mojibake)
3. All markdown files should have `title:` and `description:` front matter (except 404.md)

## Excluded from Build
- `README.md`
- `.github/`
- `vendor/`
- `Gemfile.lock`
- `_site/` (build output)
