# GT digitization graveyard: 23-company market research dossier

A research dossier on the venture cohort that attempted to digitise general-trade (GT) retail across India, Indonesia, and Vietnam between 2016 and 2025. Twenty-three companies. Approximately $4bn of priced venture capital. Plus an estimated $1bn to $2bn of strategic corporate capital. Most of it is gone.

## What this is

The dossier covers 23 ventures across three Asian markets that attempted to wire mom-and-pop stores into wholesale ordering platforms, payments, ledger apps, working-capital credit, or some combination. The deliverable is a single self-contained HTML page with WebGL, intended for desktop reading.

The thesis tested across the cohort is whether closed-loop POS attribution at GT scale is achievable as a venture-return business. The cohort data does not support it. No platform achieved closed-loop attribution at GT scale, retail media never monetised at the rates the original investment theses required, and wholesale take rates of 3 to 5% could not amortise merchant CAC. The two profitable warung programmes in the cohort (Mitra Bukalapak in Indonesia, JioMart partner programme in India) are platform-embedded, not standalone, and reach profitability only after the parent kills the adjacent marketplace burn.

## What to look at first

1. **`docs/index.html`** &rarr; open in any modern browser. The full presentation. Press P for presenter mode, J/K to jump sections, F for fullscreen.
2. **`synthesis/four_failure_modes.md`** &rarr; ten structural failure modes ranked by frequency, with the closed-loop POS hypothesis tested against the cohort data.
3. **`synthesis/capital_efficiency_table.md`** &rarr; the dollars-in-vs-dollars-produced arithmetic. The graveyard zone is below the y=x line.
4. **`research/vietnam/telio.md`** &rarr; the deepest forensic file. Surfaces the OnOnPay litigation that materially weakened Telio's cap table from inception, plus the operational wind-down detail.
5. **`research/vietnam/vinshop.md`** &rarr; documents the VinID and VinShop systems split that prevented closed-loop attribution inside One Mount for five years; explains why the October 2025 OneShop rebrand added POS functionality five years late.

## Folder structure

```
+- README.md                                  this file
+- research/
|  +- vietnam/         Telio, VinShop, One Mount, Kamereo, others
|  +- india/           Udaan, ShopX, Jumbotail, StoreKing, Ninjacart, Dunzo Daily, Amazon Easy, Flipkart Wholesale, JioMart, Reliance Mitra
|  +- indonesia/       BukuWarung, Lummo, Warung Pintar, GudangAda, Ula, Wahyoo, Dagangan, Mitra Bukalapak, GoTo Mitra Tokopedia
+- synthesis/
|  +- four_failure_modes.md                   ranked failure modes, hypothesis test
|  +- capital_efficiency_table.md             $ raised vs $ revenue, $ per merchant
+- design/
|  +- wireframes.md                           section structure, library choices, presenter mode design
+- docs/
   +- index.html                              the deliverable: single-page WebGL artifact
   +- companies.json                          structured data driving the cohort drilldown
   +- companies.js                            same data as window.COMPANY_DATA
   +- sources.md                              master bibliography, 165 unique URLs
   +- logos/                                  brand and investor logos
```

## Scope

### Shipped

- 23 company post-mortems, every claim sourced inline.
- Two cross-cohort synthesis documents: failure modes, capital efficiency.
- Single self-contained HTML page with WebGL hero, 3D graveyard scene with hover tooltips, D3 sankey for capital flow, failure-mode matrix, four-assets dot grid, geographic map, voice quotes.
- Presenter mode: keyboard P toggle, J/K section jump, F fullscreen, font size up, footnotes hidden.
- Mobile responsive layout.
- prefers-reduced-motion handler that freezes WebGL.
- 165 unique source URLs, fully indexed in `docs/sources.md`.

### Out of scope deliberately

- **Latam and Africa** (Stone, Mercado Pago, TradeDepot, MaxAB, Wasoko, MarketForce). Too far from the Asian cases to repay deep research. Excluded.
- **Per-company Indonesia and India deep dives** beyond ~800 to 900 words. Some files came in shorter than the 800 to 1,500 word target due to thinner public coverage of mid-tier players (Wahyoo, Dagangan, StoreKing). Flagged in each file.
- **Per-merchant retention curves at 24 months** for most companies. Public disclosure does not exist for the venture cohort; the synthesis flags where the closest sourced estimate was used.

### Known thin-research areas

- Telio creditor recovery rate at December 2024 dissolution: not in public record. Vietnam has no equivalent to UK Companies House for free public access.
- VinShop standalone GMV, P&L, merchant churn rate: never disclosed.
- One Mount Group consolidated P&L at parent level: never disclosed.
- BukuWarung peak revenue $1.7m: triangulated from Indonesian-language press; no audited financial.
- Lummo peak revenue: never publicly disclosed; voluntary-liquidation framing implies it did not meaningfully grow against $140m raised.
- StoreKing post-2021: sparse English-language coverage.
- Reliance Mitra: not separately disclosed by Reliance Industries.

## How to read

### Solo on a 16-inch laptop

Open `docs/index.html` in Chrome, Safari, or Firefox. Scroll through the sections. The graveyard scene responds to hover. Click marker tooltips for the per-company post-mortem teaser and a link to the deeper research file.

### Live presentation

Press **P** to toggle presenter mode. Type sizes increase, footnotes hide, top-right shows section indicator. Press **J** or down-arrow with shift to jump to next section, **K** or up-arrow with shift to go back. Press **F** to enter browser fullscreen. The WebGL keeps running in the background but motion is reduced for room readability.

The voice section is the most important during a live read. It carries the falsifiable evidence in the founders' and journalists' own words.

## Writing discipline

No em-dashes, no superlatives, no rhetorical questions, no triads for their own sake. Tables for comparative data, prose only for interpretation. Every claim carries a number, date, source, or named owner. Where a number could not be verified to a primary source, the closest sourced estimate is flagged.
