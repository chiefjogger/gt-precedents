# GT digitization graveyard: research dossier and single-page artifact

Internal research project for WinX Software Holdings IC Memo (v17, April 2026).

## What this is

The IC memo gives one paragraph each on Telio, VinShop, and One Mount in its Precedents section. This dossier goes 100x deeper across 23 companies in three markets (India, Indonesia, Vietnam) to test the v17 thesis against the precedent graveyard. The deliverable is a single self-contained HTML page with WebGL, intended for both solo reading on a 16-inch laptop and live presentation to the IC.

The closed-loop POS attribution hypothesis the brief asked to test (no platform achieved it at GT scale, retail media never monetised, wholesale 3-5% take rates could not amortise merchant CAC) is supported by the cohort data. Every venture that died lacked at least one of the four assets the WinX thesis identifies. WinX is the first Vietnamese platform with all four.

## What to look at first

1. **`output/index.html`** &rarr; open in any modern browser. The full presentation. Press P for presenter mode, J/K to jump sections, F for fullscreen.
2. **`synthesis/winx_delta.md`** &rarr; the thesis-supportive WinX delta read against the cohort.
3. **`synthesis/four_failure_modes.md`** &rarr; ten structural failure modes ranked by frequency, with the closed-loop POS hypothesis tested against the data.
4. **`synthesis/capital_efficiency_table.md`** &rarr; the dollars-in-vs-dollars-produced arithmetic. The graveyard zone is below the y=x line.
5. **`research/vietnam/telio.md`** &rarr; the deepest forensic file. Surfaces the OnOnPay litigation that materially weakened Telio's cap table from inception, plus the operational wind-down detail.
6. **`research/vietnam/vinshop.md`** &rarr; documents the VinID and VinShop systems split that prevented closed-loop attribution inside One Mount for five years; explains why the October 2025 OneShop rebrand added POS functionality five years late.

## Folder structure

```
2.0 WinX GT Digitalization/
+- README.md                                  this file
+- research/
|  +- vietnam/         (6 files)              Telio (3,691 words), VinShop, One Mount, Kamereo, VinID pre-divest, others
|  +- india/           (10 files)             Udaan deep, ShopX, Jumbotail, StoreKing, Ninjacart, Dunzo Daily, Amazon Easy, Flipkart Wholesale, JioMart, Reliance Mitra
|  +- indonesia/       (9 files)              BukuWarung, Lummo, Warung Pintar, GudangAda, Ula, Wahyoo, Dagangan, Mitra Bukalapak, GoTo Mitra Tokopedia
|  +- masan/           (1 file)               MSN AGM 2026 extract
+- synthesis/
|  +- four_failure_modes.md                   ranked failure modes, hypothesis test
|  +- capital_efficiency_table.md             $ raised vs $ revenue, $ per merchant
|  +- winx_delta.md                           thesis-supportive delta read
+- design/
|  +- wireframes.md                           section structure, library choices, presenter mode design
+- output/
|  +- index.html                              the deliverable: single-page WebGL artifact
|  +- sources.md                              master bibliography, 168 unique URLs across 25 files
+- _archive/                                  empty (no prior versions yet)
```

## Scope shipped vs scope cut

### Shipped clean

- 23 company post-mortems, every claim sourced inline.
- Three synthesis documents: failure modes, capital efficiency, WinX delta.
- Single self-contained HTML page (66 KB) with WebGL hero (Three.js particle field across three merchant universes), 3D graveyard scene with hover tooltips, D3 sankey for capital flow, failure-mode matrix, four-assets dot grid, geographic map, voice quotes, WinX delta section.
- Presenter mode: keyboard P toggle, J/K section jump, F fullscreen, font size up, footnotes hidden.
- Mobile responsive layout.
- prefers-reduced-motion handler that freezes WebGL.
- 168 unique source URLs, fully indexed in `output/sources.md`.

### Scope-trimmed deliberately

- **Latam and Africa light triangulation** (Stone, Mercado Pago, TradeDepot, MaxAB, Wasoko, MarketForce). User direction: too far from the Vietnam case to repay deep research. Excluded.
- **Per-company Indonesia and India deep dives** beyond ~800-900 words. Some files came in shorter than the 800-1500 target due to thinner public coverage of mid-tier players (Wahyoo, Dagangan, StoreKing). Flagged in each file.
- **Per-merchant retention curves at 24 months** for most companies. Public disclosure does not exist for the venture cohort; the synthesis flags where the closest sourced estimate was used.

### Known thin-research areas (per agent reports)

- Telio creditor recovery rate at December 2024 dissolution: not in public record. Vietnam has no equivalent to UK Companies House for free public access.
- VinShop standalone GMV, P&L, merchant churn rate: never disclosed.
- One Mount Group consolidated P&L at parent level: never disclosed.
- BukuWarung peak revenue $1.7m: triangulated from Indonesian-language press; no audited financial.
- Lummo peak revenue: never publicly disclosed; voluntary-liquidation framing implies it did not meaningfully grow against $140m raised.
- StoreKing post-2021: sparse English-language coverage.
- Reliance Mitra: not separately disclosed by Reliance Industries.
- Founder destination maps for ex-Telio, ex-Lummo, ex-Ula employees: would require LinkedIn scrape; only directional patterns are captured.

## How to use this with the Committee

The page is built for two reading modes:

### Solo on a 16-inch laptop

Open `output/index.html` in Chrome, Safari, or Firefox. Scroll through the eight sections. The graveyard scene (section II) responds to hover. Click marker tooltips read the per-company post-mortem teaser and link to the deeper research file in the dossier.

### Live presentation to the IC

Press **P** to toggle presenter mode. Type sizes increase, footnotes hide, top-right shows section indicator (I / VIII through VIII / VIII). Press **J** or down-arrow with shift to jump to next section, **K** or up-arrow with shift to go back. Press **F** to enter browser fullscreen. The WebGL keeps running in the background but motion is reduced for room readability.

The voice section (VII) is the most important during a live read. It carries the falsifiable evidence in the founders' and journalists' own words. Stop on Mehra's "letting go" line and Phong's "scale wasn't big enough" line for the strongest emotional anchors.

## Writing voice and discipline

The deliverable was written under the duc-writing-style discipline: no em-dashes, no AI-flavoured filler, no unmeasured superlatives, no "it is not X, it is Y" paired contrasts, no rhetorical questions, no triads for their own sake. Tables for comparative data, prose only for interpretation. Every claim carries a number, date, source, or named owner. Where a number could not be verified to a primary source, the closest sourced estimate is flagged.

QC scan: 0 em-dashes, 0 en-dashes, 0 forbidden words across all deliverables.

## Not done, deferred to next iteration

- Per-merchant LTV cohort curves: would require regulatory filings access we do not have.
- Founder LinkedIn destination map (where ex-Telio, ex-Lummo, ex-Ula people went): directional only, full map would require LinkedIn-side scrape.
- Indonesian and Indian local-language press translation: where Vietnamese-language sources were used, originals are cited and translated; for ID and IN, the agent worked off English coverage primarily.
- The full WebGL-driven scrollytelling per-company drilldown side panel: implemented as tooltip on hover, not yet as full slide-in panel with attached research markdown content.

## Version notes

- v1.0 (April 2026): initial dossier and HTML.
- v1.1 (April 2026): added Section VIII (Strategic alignment) integrating Masan AGM 2026 and Techcombank January 2026 investor deck. 41 brand logos integrated across capital flow, four-assets matrix, alignment, and delta sections. New voice quotes from Jens Lottner (TCB CEO) and Masan AGM. Five Techcombank primary documents archived to `research/partners/`.
- v1.2 (April 2026): China stripped from cohort (Latam/Africa already excluded per scope). Four parallel QC agents ran tick-and-tie on all files; nine material fixes applied (Lummo Bezos misattribution, Telio revenue framing, Udaan valuation discrepancy, One Mount charter capital, hero $5.5bn restated, COMPANIES dedup VinShop/OneMount, cohort count reconciled to 23). QC findings log saved to `synthesis/qc_findings_log.md`. Three OneShop / Mehra / Politburo Resolution 57 noteworthy items surfaced for FY27 follow-on memo.
- v2.0 (April 2026): major restructure. Tone audited and rewritten in measured analytic voice (no advocacy, no first/only claims, no marketing structure). The WinX delta section reorganised around Dr. Quang's six IC clearance gates (Consumer Truth, Product Truth, Equity Transferability, Value Creation Sizing, Competitive Dynamics, Learnability) with explicit cohort-evidence and WinX-read rows for each gate. Display bugs fixed (graveyard tooltip now position-fixed and append-to-body, canvas pointer-events isolated from overlay, sankey margins). New Section VI (the cohort) is a deep per-company drilldown: 23 panels, each with founders and thesis, full capital history table, 4-8 named experiments, pivot ladder, operating arc, voice quotes (founders / investors / employees), customer voice where available, failure mode, aftermath, and a per-company IC clearance read against the six gates. 23 deep research supplements written to `research/{country}/{company}_deep.md`; consolidated to `output/companies.json` (238 KB structured data driving the drilldown panels via `companies.js`). HTML rebuilt to use the JSON via inline JS rendering.

### v2.0 file layout

```
output/
+- index.html          ~88 KB (single-page app, IC-grade tone)
+- companies.js        ~238 KB (window.COMPANY_DATA = {...})
+- companies.json      ~238 KB (raw data, same content)
+- sources.md          master bibliography
+- logos/              41 brand logos (280 KB)
research/
+- masan/              MSN AGM 2026 extract
+- partners/           TCB primary documents (5 PDFs) + strategy memo
+- vietnam/            6 base files + 4 _deep.md supplements
+- india/              10 base files + 10 _deep.md supplements
+- indonesia/          9 base files + 9 _deep.md supplements
synthesis/
+- four_failure_modes.md
+- capital_efficiency_table.md
+- winx_delta.md
+- qc_findings_log.md
```

- v2.1 (April 2026): made the page self-contained for browsers with strong shield settings (Brave, Firefox in strict mode). Inlined the entire 238 KB company JSON into the HTML so the cohort drilldown does not depend on a second file load over file://. Added a sentinel that detects when CDN libraries (Three.js, D3) are blocked and surfaces a small bottom-right popup pointing the reader to the cohort section, with one-click Brave Shields instructions. The page renders the full 23-company drilldown, voice, alignment, and six gates even when the WebGL hero, 3D graveyard, and Sankey chart are blocked by browser shields.
- v2.2 (April 2026): pre-rendered all dynamic content as static HTML. The cohort drilldown (23 panels with founders, capital, experiments, pivots, voice, failure mode, aftermath, six-gate IC read), the voice cross-cohort layer, the failure-mode matrix (24 rows), the four-assets matrix (25 rows including WinX), and the six IC gates are now all static HTML in the file. JavaScript becomes optional for the WebGL hero, the 3D graveyard scene, the Sankey chart, the topbar interactivity, and presenter mode. The substantive dossier renders in any browser configuration including Brave Shields up. File size 420 KB self-contained.

### v2.0 verification points for the IC reader

- Section IX: each of the six IC gates carries cohort evidence and a WinX read; verdicts are conditional pass on Gates 1 and 2, pass on Gates 3, 4, 5, 6.
- Section VI: every company panel has the same six gates filled in for that company. Spot check Telio, Udaan, Ula, VinShop, JioMart, Mitra Bukalapak — these are the load-bearing comparison points.
- Hero stats: 23 companies, ~$4bn priced VC, ~$1-2bn strategic sponsor, 0 closed-loop POS at GT scale, 17.9m stores in scope.
- Sankey: VC firms left, ventures middle, status right. Width = dollars.
- Voice section: 8 cross-cohort quotes, sourced.
- Strategic alignment: TCB and Masan AGM 2026 anchors with primary-source verification.

### What v1.1 adds

- **research/masan/agm_2026_extract.md** (~1,200 words): cOS framework, the WinX-specific AGM language, Retail Supreme detail, the "+1 SKU/order = +VND 370bn" datapoint, MCH portfolio direction.
- **research/partners/techcombank_2026_strategy.md** (~3,500 words): TCB AGM 2026 figures cross-referenced to primary investor deck, the explicit "Start a Shop / VinShop / SME loan" embedded-finance bundle on slide p.27, the 5-year strategy mechanics, the WinX Stream 2 alignment test.
- **research/partners/** PDFs: TCB FY25 Press Release, FY25 Earnings Call deck, Investor Presentation Jan 2026 (the actual AGM-content deck), 6M25 Analyst Presentation, 2026 AGM agenda.
- **output/logos/**: 41 brand logos (28 SVG, 13 PNG) at 280KB total, including all Masan group brands, Techcombank, and the major VC firms in the capital-flow sankey.
- **output/index.html v1.1**: new section VIII (Strategic Alignment), VC logo strip in capital flow, company logos in four-assets matrix rows, Masan brand strip in WinX delta, Masan brand chip in hero, two new quotes in voice section.

## Questions or redirects

If any section needs to be cut, expanded, or reframed before the IC read, the modular structure makes it easy:

- Add or cut companies: edit the COMPANIES array at the top of the data block in `output/index.html` (lines roughly 470-540).
- Reorder sections: change the order of `<section>` blocks in the body and update the navigation array.
- Reframe the WinX delta tone: edit `synthesis/winx_delta.md` and the DIFFERENTIATORS / GATES arrays in the HTML. Currently set to thesis-supportive per the brief.
