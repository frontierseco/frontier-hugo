# AI Optimization To-Do — Frontier Structural Engineering
_March 2026 — GEO (Generative Engine Optimization) for ChatGPT, Perplexity, Google AI Overviews, Claude_

---

## Quick Wins (do this week)

- [ ] **Claim Google Business Profile** — go to https://business.google.com. AI-generated local answers (Google AI Overviews, ChatGPT with search) pull directly from GBP. Without it, Frontier is invisible in AI local results. Select **"Structural Engineer"** as primary category. Add photos, hours, phone, address.

- [ ] **Add direct-answer sentences to article openings** — AI systems cite the clearest, most quotable sentence on a page. Each article section should lead with a 1-2 sentence direct answer *before* the explanation. Example for snow loads article: *"Snow drift loads are the governing roof load case on most Colorado mountain buildings, often 2–3× the balanced snow value."* Go through the top 5 articles and front-load each H2 section with a direct answer.

- [ ] **Reformat key article sections as Q&A** — add a short FAQ block at the bottom of the forensic, expert witness, peer review, and consultation articles. Format as real questions people ask ("What does a forensic structural engineer do?" / "When do I need an expert witness?"). This feeds Google's People Also Ask and AI Overview answers directly.

---

## Entity & Credibility (most impactful for AI citations)

- [ ] **Create an About / Team page** — AI systems weight E-E-A-T heavily. A named principal engineer with credentials is far more citable than an anonymous firm. Page should include:
  - Engineer name(s), PE license number(s), states of licensure (CO, CA)
  - Years of experience
  - Education (school, degree)
  - Professional memberships: ASCE, SEAOC, ACEC Colorado
  - Photo
  - Add at `content/about.md` and link from the header nav

- [ ] **Expand homepage JSON-LD schema** — in `layouts/partials/head.html`, add to the existing `ProfessionalService` block:
  ```json
  "founder": {
    "@type": "Person",
    "name": "[Engineer Name]",
    "hasCredential": "Professional Engineer, Colorado",
    "knowsAbout": ["Structural Engineering", "Forensic Engineering", "Adaptive Reuse", "Seismic Design"]
  },
  "memberOf": [
    { "@type": "Organization", "name": "American Society of Civil Engineers" }
  ],
  "sameAs": [
    "https://www.linkedin.com/company/frontier-structural-engineering",
    "https://www.instagram.com/frontierstructuralengineering"
  ]
  ```

- [ ] **Add `FAQPage` JSON-LD to key articles** — add FAQ schema to the forensic, expert witness, consultation, and peer review articles. Each FAQ block should contain 3-5 Q&A pairs matching real search queries. Hugo template approach: add a `faqs:` list param to the article front matter and render schema in `layouts/_default/single.html`.

- [ ] **Add `Service` JSON-LD to service pages** — each service in `content/services/` should have a `Service` schema block with `name`, `description`, `provider`, and `areaServed`. Add to `layouts/services/` single template.

---

## Directory & Citation Building (AI trains on these sources)

- [ ] **ASCE member directory** — ensure the principal engineer's ASCE profile is current and links to frontierstructural.com

- [ ] **ACEC Colorado** — join or verify listing at https://www.acec-co.org — state engineering council directories are authoritative citation sources

- [ ] **LinkedIn Company Page** — verify https://www.linkedin.com/company/frontier-structural-engineering is complete: description with keywords, website URL, location, specialties listed (Structural Engineering, Forensic Engineering, Adaptive Reuse, Expert Witness, Colorado Springs)

- [ ] **Yelp, Angi, Thumbtack** — claim/complete profiles. These directories are heavily indexed and frequently cited in AI answers for "structural engineer near me" queries. NAP must match exactly: same name, address, phone as GBP and website schema.

- [ ] **Colorado PE Board lookup** — ensure license is current and searchable at https://apps2.colorado.gov/dora/licensing/lookup — AI systems cross-reference professional licenses for credibility

- [ ] **BBB listing** — claim or verify at https://www.bbb.org — cited in AI local answers

---

## Content Format Improvements

- [ ] **Write a "Do I Need a Structural Engineer?" FAQ article** — this exact question is high-volume in AI answers. Cover: home additions, decks, remodels, permit letters, foundation concerns, buying an old home. Format as explicit Q&A. This is the single article most likely to be cited in AI-generated answers for homeowners.

- [ ] **Add a glossary or "Structural Engineering Terms" page** — definitional content ("What is a lateral system?", "What is adaptive reuse?", "What is a moment frame?") is heavily cited by AI. Could be a single long-form page at `/articles/structural-engineering-glossary/`.

- [ ] **Add author byline to articles** — articles currently have no visible author. Add `author:` param to front matter and render it in `layouts/_default/single.html`. Schema already has `"author": {"@type": "Organization"}` — upgrade to `"@type": "Person"` with the engineer's name once the About page is live.

- [ ] **Add "Last updated" dates to articles** — AI systems (especially Perplexity) filter for freshness. Articles with a recent `dateModified` in their schema rank higher in AI-generated answers. Hugo already outputs `dateModified` via `.Lastmod` — touch/update the most important articles periodically.

---

## Notes

- The 29-article library is already strong raw material — AI systems reward depth and specificity, both of which Frontier has. The work is mostly structural: wrapping existing content in the right signals.
- The biggest single gap is the absence of a named, credentialed entity behind the content. An About page with PE license numbers and ASCE membership transforms the site from "a website" to "a verified expert" in AI knowledge graphs.
- NAP consistency is critical: name, address, and phone must be **identical** across GBP, website schema, Yelp, Angi, BBB, and every directory listing.
