# To-Do
- pics to zoom 10%: everything but hero.  logo, portrait, map, anything that clicking will follow link
- I've noticed that hero slides have a hard to read title, fix, maybe add shadow in banner text background
- at the end of a video on the hero slide when the end freezes the video, give the slide a bump slide preview as a prompt for the viewer that there is more content on the next slide, maybe by moving the slide over 50px
- center the header on screen, don't account for cta off to the side
- const mat title & separator white
- articles title match style of other section titles (center, larger, with separator, orange color)
- articles list page, if md has no pic remove pic box from card and center
- mobile carousel drag scrolls 3x speed and highlights the "click for more" in the header
- change orange section header titles and separators to white when on blue background, apply to list pages too 

## Backlog
- [ ] Set up a call bot: discuss new projects, give estimate range/timeline, update ERPNext
- [ ] Google Business Profile: claim, add address/phone/hours/photos, set "Structural Engineer" category
- [ ] Google Search Console: verify ownership, submit sitemap
- [ ] Directory listings: ASCE member profile, ACEC Colorado, Yelp, Angi, BBB (NAP must match schema)

## Done
- [x] Profile photo circle: enlarged to 220px, shifted up (`object-position:50% -20px`) to show full face/chin
- [x] Contact section: two-column layout — Start Your Project left, About card right; cta-top spanning full width above both
- [x] About page: Google Maps button added (maps?hl=en&q=Frontier+Structural+Engineering)
- [x] Sitemap: added `[sitemap]` config to config.toml; Hugo auto-generates /sitemap.xml
- [x] About/Team page: Jon Talley SE/PE profile, licenses, history, memberships, Person JSON-LD schema at /about/
- [x] Hero slides: removed auto-advance, video restarts on each visit, pauses at last frame
- [x] LinkedIn footer URL updated to https://www.linkedin.com/company/frontier-structural-engineering/
- [x] Video optimization: noted 13MB — re-encode locally with ffmpeg when ready
