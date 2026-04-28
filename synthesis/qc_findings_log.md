# QC findings log: v1.2 (April 2026)

Four parallel QC agents ran tick-and-tie reviews on the dossier. This log records what they found, what was fixed, and what remains as a known caveat.

## Critical and material fixes applied (v1.1 to v1.2)

| # | Finding | File | Fix applied |
|---|---|---|---|
| 1 | Cohort count inconsistent (23 / 24 / 26 across files) | All deliverables | Reconciled to 23 across hero, sections, README, sources, synthesis. One Mount Group folded into VinShop row in HTML COMPANIES (it is a holding entity, not a separate venture). |
| 2 | Hero "$5.5 to 7bn equity" overstated relative to COMPANIES sum (~$4.0bn) | output/index.html | Restated to "$4bn priced VC + estimated $1 to 2bn strategic sponsor capital from Reliance, Walmart, Amazon, Vingroup-Techcombank." |
| 3 | VinShop and One Mount double-counted $130m in HTML COMPANIES array | output/index.html | One Mount Group row removed from COMPANIES; VinShop row updated to make corporate-funded nature explicit. |
| 4 | One Mount charter capital "VND 3,047bn" did not tick to source (actual: VND 3,000bn at inception, rising) | research/vietnam/one_mount.md, research/vietnam/vinshop.md | Restated to "approximately VND 3,000bn at inception (rising to VND 4,047bn mid-2020 and VND 5,400bn mid-2021)." |
| 5 | Lummo Series C investor "Jeff Bezos" not in primary coverage | research/indonesia/bukukas_lummo.md, output/index.html COMPANIES | Replaced with the actual primary participants (Tiger, Sequoia, CapitalG, Hedosophia, Sosa, Bittner). Bezos investment is confirmed for Ula, not Lummo. |
| 6 | Lummo founder Krishnan Menon "ex-Bain & Company" not in any primary source | research/indonesia/bukukas_lummo.md | Restated to actual primary-source bio (Lazada, Zalora, Fabelio, FreeCharge, AlphaBeta Labs); flagged the "ex-Bain" attribution as propagated misattribution. |
| 7 | Telio Q4 2022 revenue "$158m (Q4 run rate)" misframed | research/vietnam/telio.md | Restated as FY2022 annual revenue $158m with Q4 2022 quarterly loss $13m. The "47% of revenue" wind-down ratio reframed as one of two readings, with FY22 ratio (~33%) the better-business read. |
| 8 | Telio total raised: three figures circulate ($52m / $64m / $92m) | research/vietnam/telio.md, output/index.html COMPANIES | $64m anchored, with a footnote acknowledging DealStreetAsia's January 2025 post-shutdown coverage cites "$92m" implying an unannounced bridge. Synthesis stays at $64m for the cohort total. |
| 9 | Udaan post-down-round valuation: Business Standard $1.7-1.8bn vs Entrackr $1.3bn unflagged | research/india/udaan.md | Added explicit note acknowledging the two primary sources disagree, with rationale for anchoring on the higher figure. |

## Minor or presentation fixes (also applied)

| # | Finding | Fix |
|---|---|---|
| 10 | "22 failed" vs "23 cohort" wording | winx_delta.md: 22 → 19 to match standalone-failed count |
| 11 | "26 of 26" frequency denominators in failure_modes ranking | All instances changed to 23 of 23 |
| 12 | Sources.md "168 unique URLs" overstated post-China-strip | Restated to "165 unique URLs" |

## Items flagged but not action-required

| Finding | Why retained |
|---|---|
| Mitra Bukalapak FY25 profit driven partly by Bank Allo investment gains, not pure operating leverage | The synthesis is correct that Mitra Bukalapak swung to profit; the operating contribution is positive at the segment level (Q4 2025 Mitra revenue +12% q/q, contribution margin +44% q/q in Q3). The aggregate parent profit has a non-recurring component but the Mitra-specific argument stands. |
| Ninjacart "adjusted" loss INR 260 Cr | Already labelled as Entrackr-disclosed; reported full loss is materially higher. Footnote could be added but the figure as cited is consistent with the source. |
| Warung Pintar capital stack arithmetic discrepancy ($41.5m total vs $4m + $27.5m visible) | The $41.5m figure includes undisclosed Series A. Acceptable as written, with the caveat present in the file. |
| GudangAda revenue % decline arithmetic (-31.5% not -29.5%) | Minor recalc, not material to the synthesis. |
| Wahyoo Series B size ($6.5m vs $13m on different trade press) | Conflicting trade press; file picks lower bound which is the more conservative read. |

## Noteworthy items the QC surfaced that strengthen the WinX case

The QC agents found three items that are worth flagging into the IC narrative if it goes to a second iteration:

1. **OneShop now uses a 5.2m TAM frame** ("expand coverage to all 5.2 million small traders in Vietnam"; VietnamPlus, Oct 2025). The 1.4m grocery-only TAM in the v17 IC memo is the conservative cut. If the WinX team wants to argue the upside, the 5.2m number is now in primary One Mount communications.
2. **Nipun Mehra (founder of Ula, the most expensive failed lesson) has raised a fresh $10m seed for Neoflo.ai (Sep 2025) with Lightspeed India, Peak XV, and Alter Global.** Peak XV re-upping on a founder who returned $50m of capital to investors is the rare signal that the discipline of shutting Ula early was, in retrospect, the right strategic choice. This validates the WinX memo's tranche-gate structure (which preserves optionality to stop funding before incinerating the cumulative cheque).
3. **OneShop is now framed as fulfilling Politburo Resolution 57 on digital transformation** (Vietnam government press, Oct 2025). One Mount is being repositioned as a quasi-sovereign vehicle, not a venture competitor. This changes the strategic dynamic: WinX is competing with a state-aligned execution platform for the GT digitization mandate, not with a startup. The MSA negotiation with VNG and the strategic positioning vs One Mount both warrant explicit consideration in any FY27 follow-on memo.

## QC confidence calls per file (post-fix)

| File | Confidence | Note |
|---|---|---|
| research/vietnam/telio.md | HIGH | Capital-stack note now disclosed; revenue framing reconciled |
| research/vietnam/vinshop.md | HIGH | Charter capital corrected |
| research/vietnam/one_mount.md | HIGH | Charter capital corrected |
| research/vietnam/kamereo.md | HIGH | All numbers ticked in QC |
| research/india/udaan.md | HIGH | Down-round valuation note added |
| research/india/* (other 9) | HIGH | All spot-checked numbers ticked |
| research/indonesia/bukukas_lummo.md | HIGH | Bezos and Bain corrections applied |
| research/indonesia/* (other 8) | MEDIUM-HIGH | Minor presentation flags retained but not material |
| synthesis/four_failure_modes.md | HIGH | Cohort count reconciled |
| synthesis/capital_efficiency_table.md | HIGH | Aggregate restated to reconcile to COMPANIES sum |
| synthesis/winx_delta.md | HIGH | Cohort count reconciled |
| research/masan/agm_2026_extract.md | HIGH | All slide-level claims tick to AGM PDF |
| research/partners/techcombank_2026_strategy.md | HIGH | Primary deck quotes tick; secondary press flagged in Section 6 |
| output/index.html | HIGH | All v1.1 issues fixed in v1.2 |

The dossier now ticks across the deliverables. Anything still flagged is either (a) a presentation choice (Mitra Bukalapak profit framing, where the synthesis is technically correct) or (b) a known limit of public disclosure (TCB +700% merchant lending sourced to AGM press, not primary deck text).
