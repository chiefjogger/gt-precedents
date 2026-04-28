# Wireframes: GT digitization graveyard, single-page HTML with WebGL

## Constraints recap
- Single self-contained `index.html`. No build step.
- CDN imports only. Page weight target under 5MB excluding fonts.
- Optimized for 16-inch laptop primary, mobile responsive secondary.
- Dark mode, near-black background, off-white text, single accent (desaturated amber `#d4a574`).
- Typography: IBM Plex Mono for numerics, IBM Plex Sans for body, both via Google Fonts CDN.
- Subtle motion. WebGL elements breathe, do not flash.
- No audio.
- Presenter mode toggle: keyboard shortcuts (J/K to jump sections, P to toggle), hides footnotes and side panels, increases base type size.

## Library choices
- **Three.js r128** via cdnjs (the version Cowork artifacts know works).
- **D3 v7** via jsDelivr for matrix and chord viz.
- No React, no framework. Vanilla JS event listeners.
- IntersectionObserver for scroll-triggered scene changes.

## Section structure (8 sections + presenter mode shell)

### Section 0: Title shell (sticky top bar)
- Left: small caps "WinX // graveyard" + version date.
- Right: section index (Roman numerals I-VIII), presenter mode toggle.
- Drops opacity on scroll into hero, returns at section II.

### Section I: Hero
- Full viewport.
- WebGL particle field: 3 clusters (Vietnam 1.4M, Indonesia 3.5M, Indonesia 13M India). Each merchant is a single particle, total ~25,000 rendered.
- Each cluster slowly rotates on its own axis.
- Title (single sentence, no subtitle): "Approximately $13 to 16 billion of venture capital was deployed across India, Indonesia, and Vietnam to digitise traditional retail. Most of it is gone."
- Below: scrollwheel chevron with "Scroll" in small caps.
- No CTAs.

### Section II: The graveyard
- Left: prose intro (4 sentences). Right: WebGL scene.
- 3D timeline: Z-axis is calendar time (2016 to 2026). For each company, a marker at (x = market, y = capital raised log scale, z = year founded). Marker color: live (white), shut (amber), plateaued (off-white half-tone).
- Markers extrude vertically when scrolled past their dissolution date.
- Hover (or tap on mobile): tooltip with company name, total raised, status.
- Click: side panel slides in with the company's 2-paragraph post-mortem and link to research markdown.
- Scrolling reveals markers chronologically; the "graveyard" is filled in over the section's scroll length.

### Section III: Capital flow
- Sankey diagram (D3): VC firms on left (Tiger, Sequoia/Peak XV, Lightspeed, GGV, Tencent, Sea, Quona, B Capital, Bezos, AC Ventures, etc.), companies in middle, status on right (shut, plateaued, marked-down, profitable).
- Width of flow = $ deployed.
- Color of flow = market (India teal, Indonesia steel, Vietnam amber).
- Static SVG (no animation), but lit on scroll-into-view.

### Section IV: Failure mode matrix
- D3 heatmap. Rows: companies (the cohort sorted by total raised). Columns: 10 failure modes (from `four_failure_modes.md`).
- Cell: filled (yes), empty (no), partial (half-fill). On hover, brief explanation pulled from research file.
- Below the matrix: bar chart, frequency of each mode across the cohort.

### Section V: Four-assets matrix (the central chart)
- Companies on Y axis, four assets on X axis (MT density, GT wedge, first-party FMCG brands, identified POS receipts).
- Dot grid: full dot (yes), half dot (partial), empty (no).
- WinX row at the top, highlighted in amber, shows full dots across all four. The cohort below shows the gaps.
- Annotation arrow: "First Vietnamese platform with all four."

### Section VI: Geographic footprint
- Map of Asia (D3 geographic projection, simple geometry).
- Each company plotted at their HQ city; size of circle = peak merchant count.
- Color: live (white), shut (amber).
- Hover: company name, country, peak metric.
- Note: the map is a side dish, not the entrée. Keep simple.

### Section VII: Voice layer (the most important section)
- Vertical scroll, large pull-quotes.
- Each quote: full text, attribution, date, source link inline.
- Quotes selected for falsifiability and specificity; not for drama.
- At least 8 quotes: Phong (Telio), Mehra (Ula), Menon (Lummo), Gupta (Udaan), VnExpress on VinShop, ex-Telio LinkedIn, journalist commentary, Mehra's "letting go" line.
- Subtle animation: quote fades in as it enters viewport, holds, fades on exit.

### Section VIII: WinX delta (thesis-supportive)
- Left column: 5 bullets of structural differentiators (compliance forcing function, Zalo-native channel, captive demand, partner-bank credit, attribution-first design).
- Right column: the four-assets matrix WinX row (visual emphasis).
- Below: 4 open operational questions (the EOY FY26 review gates).
- Final line: "The graveyard is the strongest argument for WinX, not against it."

### Section IX (presenter mode only): IC summary
- One-screen TL;DR appears only when presenter mode is on.
- 5 numbers, 5 sentences, recommendation.

## Presenter mode behaviour
- Keyboard: P toggles, J/K next/prev section, F fullscreen.
- Hides: footnotes, side panels, source links inline (replaced with tooltips).
- Increases base font size from 16px to 20px.
- Adds visible section indicator (top right "VII / IX").
- WebGL keeps running but motion is reduced.

## Accessibility
- prefers-reduced-motion media query: WebGL particles freeze, scroll-tied animations disable.
- All charts have textual fallback inline (the prose alongside the visual).
- Keyboard navigation works in standard mode (Tab, arrow keys to navigate sections).

## Mobile (< 640px)
- WebGL hero stays but particle count drops to ~5,000.
- Multi-column layouts stack.
- Some scenes (graveyard 3D, four-assets matrix) become static SVG instead of WebGL on the smallest viewports.
- Presenter mode disabled below 1024px (stays in standard read mode).

## Footnoting
- Inline citations: small superscript number, hover-tooltip with source title and date.
- Bottom-of-document bibliography (also in `output/sources.md`).
- Every number in the document carries a citation; if not, the number is replaced with a calibrated estimate or removed.

## Build order (for the HTML implementation)
1. Document skeleton, fonts, color palette, section anchors.
2. Hero WebGL particle field (Three.js).
3. Section II graveyard scene (Three.js, second renderer or scene swap).
4. Section III sankey (D3).
5. Sections IV, V matrix and dot grid (D3 or pure SVG).
6. Section VI map (D3 with simple geometry).
7. Section VII voice (HTML, no JS heavy).
8. Section VIII WinX delta (HTML).
9. Presenter mode toggle and shortcuts.
10. Mobile responsive pass.
11. Performance pass (particle count, lazy WebGL init below the fold).
