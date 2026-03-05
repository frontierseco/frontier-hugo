This to-do list is designed for **Claude** to act as your SEO/Marketing assistant. You can copy/paste this entire block into a new Claude chat to begin the "Co-work" session.

The list is prioritized by **Ease of Implementation** + **E-E-A-T Impact** + **AIO Performance.**

***

# 🏗️ Frontier Structural: Growth & SEO Task List

## 🟢 Part 1: Claude's Action Items (High Impact / Low Effort)
*Claude can generate these for you immediately. You just need to provide the "seed" info.*

- [ ] **Task 1: SEO Meta Title & Description Optimization**
    - **Goal:** Increase CTR (Click-Through Rate) in Google Search Console.
    - **Claude's Job:** Rewrite Meta Titles/Descriptions for Home, Services, and Contact pages focusing on "Structural Engineer Colorado Springs" and "SEAC Member."
    - **Input Needed:** Provide Claude with your current page URLs or a copy-paste of your current headlines.

- [ ] **Task 2: Schema Markup Generation (JSON-LD)**
    - **Goal:** Tell Google and AI (Gemini) that you are a "Professional Service" and a "MemberOf" SEAC/ASCE.
    - **Claude's Job:** Generate the specific code block for `LocalBusiness` and `Organization` schema, including your SEAC membership details.
    - **Outcome:** You paste this code into your website's header.

- [ ] **Task 3: Google Business Profile (GBP) "Update" Posts**
    - **Goal:** Signal to Google that Frontier Structural is active.
    - **Claude's Job:** Write 4 "Local Engineering" posts (1 month of content). Topics: Drainage/Foundations in the Springs, the value of a PE, and the 2024 SEAC guidelines.
    - **Input Needed:** Tell Claude about 2-3 recent project types (e.g., "deck inspection," "cracked foundation").

- [ ] **Task 4: Service Page Content Expansion**
    - **Goal:** Rank for "Long-tail" keywords that homeowners actually search.
    - **Claude's Job:** Draft 300-word descriptions for specific services: *Structural Observation Reports, Foundation Design, and Residential Beam Calculations.*

***

## 🔵 Part 3: Monthly Maintenance (Claude & You)

- [ ] **Task 9: GSC Query Review**
    - **Frequency:** Monthly.
    - **Co-work:** Export your "Queries" from Google Search Console to a CSV. Upload it to Claude. 
    - **Claude's Job:** "Analyze these keywords. Which ones am I ranking #12 for that I could push to #1?"

- [ ] **Task 10: Technical Blog (The "Springs" Authority)**
    - **Frequency:** Monthly.
    - **Co-work:** Tell Claude about a specific structural issue common in Colorado Springs (e.g., expansive soils). 
    - **Claude's Job:** Write a 500-word authoritative blog post that proves you are the local expert.

## Quick Wins (do this week)

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

