# SEO To-Do — Frontier Structural Engineering
_Audit date: March 2026_

---

## Quick Wins (do this week)

- [ ] **Fix empty Articles section** — open any 4 articles in `content/articles/` and add `featured: true` to their front matter. The homepage Articles section currently renders blank for every visitor.

- [ ] **Fix site title** — in `config.toml`, change:
  ```
  title = "Frontier Structural Engineering | Serving Colorado and California"
  ```
  to:
  ```
  title = "Structural Engineer Colorado Springs | Frontier Structural Engineering"
  ```

- [ ] **Fix meta description** — in `config.toml`, update the `description` param to include location + services + CTA:
  ```
  description = "Frontier Structural Engineering — Colorado Springs structural engineers serving architects, contractors, and homeowners. Commercial design, forensic, expert witness, adaptive reuse."
  ```

- [ ] **Claim Google Business Profile** — go to https://business.google.com, claim "Frontier Structural Engineering," add address, phone, hours, and photos. Select **"Structural Engineer"** as the primary category. This is the #1 local ranking factor and will immediately improve visibility for "structural engineer Colorado Springs" searches.

- [ ] **Submit sitemap to Google Search Console** — go to https://search.google.com/search-console, add `frontierstructural.com`, verify ownership via DNS TXT record in Cloudflare, then submit `https://frontierstructural.com/sitemap.xml`.

---

## Strategic (this quarter)

- [ ] **Create a Colorado Springs landing page** — add a dedicated page at `/structural-engineer-colorado-springs/` with keyword-targeted copy, full service list, address, phone, and a contact CTA. This is the exact page format that Level Engineering uses to rank #1 locally.

- [ ] **Add a Residential Engineering service page** — write a page targeting homeowners searching for deck permits, home additions, remodel sign-offs, and structural letters. Large local search segment that competitors (ProStruct, Timberland, Level) are winning.

- [ ] **Write "Do I Need a Structural Engineer?" blog post** — question-based keyword with high homeowner search volume; also good for Google AI Overview placement.

- [ ] **Write "Structural Engineer for Home Addition Colorado Springs"** — transactional long-tail with low competition and high hire-intent.

- [ ] **Write "Structural Letter / Report for Building Permit Colorado"** — searched by homeowners and contractors constantly; low competition.

- [ ] **Add location names to all project posts** — ensure every file in `content/projects/` has `location:` in front matter and mentions the city in the body. City names in indexed project pages contribute to local relevance signals.

- [ ] **Build internal links between articles** — articles don't currently link to each other. Add contextual links where topics overlap (e.g., snow loads article → lateral systems article, commercial design → construction admin). Builds topical authority.

- [ ] **Add a California landing page** — site header says "Serving Colorado and California" but there is no California-specific content. Add `/structural-engineer-california/` to capture that market.

---

## Technical

- [ ] **Replace Tailwind CDN with compiled CSS** — `<script src="https://cdn.tailwindcss.com">` loads a 3MB+ runtime on every page visit. Set up a Tailwind PostCSS build step and compile a static CSS file at Hugo build time. Will meaningfully improve Core Web Vitals / page speed scores.

- [ ] **Add `aria-label` to background image divs** — the `.mat-card-bg` and `.tile-bg` divs use CSS `data-bg` backgrounds instead of `<img>` tags, so they have no accessible alt text. Add `role="img"` and `aria-label` attributes.

- [ ] **Add JSON-LD schema to service and project pages** — homepage and articles have schema; service list and individual project pages do not. Add `Service` schema to service pages and `CreativeWork` or custom schema to project pages.

- [ ] **Verify NAP consistency** — the phone number `+17192472928` is in the homepage JSON-LD. Confirm this exact format matches everywhere the number appears online (GBP, directories, footer, etc.).

---

## Notes

- Site is already indexed and appearing in Google for specialty queries (forensic SE, expert witness CO).
- 29 articles is more content depth than all local competitors combined — leverage this.
- Biggest gap vs. competitors: no local/transactional landing pages. Level Engineering ranks for "structural engineer Colorado Springs" purely because they have a dedicated URL for it.
- GBP + site title fix + sitemap submission are the three highest-ROI actions available right now.
