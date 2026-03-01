# Frontier Structural Engineering — Hugo Site

## How to add a new Featured Article

1. Create a new file in `content/articles/` — name it anything, e.g. `my-new-article.md`
2. Paste this template and fill it in:

```
---
title: "Your Article Title"
date: 2026-03-01
featured: true
categories: ["Articles"]
thumbnail: "https://link-to-your-image.jpg"
summary: "One or two sentences shown in the article list on the home page."
---

Your full article text goes here. Write as much as you want.
You can use **bold**, *italic*, and [links](https://example.com).
```

3. Save → commit → push to GitHub → Netlify rebuilds in ~30 seconds.

**To NOT show it on the home page:** set `featured: false`

---

## How to add a new Project

Same process, but create the file in `content/projects/` instead.

---

## How to change the site URL (when ready for custom domain)

Open `config.toml` and change:
```
baseURL = "https://your-site.netlify.app/"
```
to your real domain:
```
baseURL = "https://frontierstructural.com/"
```

---

## Placeholder images to fix later

Two service tiles have placeholder images. To fix them:
1. Go to your WordPress Media Library
2. Find the images for "Construction Administration" and "Adaptive Reuse"
3. Copy the full image URL
4. Open `layouts/index.html`
5. Find `PLACEHOLDER_construction_admin.jpg` and `PLACEHOLDER_adaptive_reuse.jpg`
6. Replace each with the real URL

---

## Deploy to Netlify

Connect this GitHub repo to Netlify.
Netlify reads `netlify.toml` and runs `hugo --minify` automatically.
No other configuration needed.
