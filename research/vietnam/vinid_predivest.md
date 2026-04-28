# VinID before VinCommerce was sold to Masan

Reference period: November 2016 (VinID launch) to December 2019 (VinCommerce / VinEco transferred to Masan). Built for the WinX IC memo. The IC memo treats VinID and OneU as a footnote on the One Mount story. This file isolates the pre-divest period because it is the closest historical precedent inside the Masan estate for a closed-loop GT / MT digitization play.

## 1. Origin of VinID inside Vingroup

VinID was launched in November 2016 as Vingroup's group-wide loyalty card and digital wallet, sitting underneath VinCommerce (the supermarket arm running VinMart and VinMart+). The card and the underlying wallet, VinID Pay, accumulated points across the entire Vingroup ecosystem: VinMart and VinMart+ supermarkets, Vinpearl resorts, VinFast vehicles, Vincom Retail malls, and Vinhomes properties [source: MyTour blog, "What is VinID and how to register for benefits?", https://mytour.vn/en/blog/bai-viet/understanding-vinid-what-is-it-and-how-to-register-for-benefits.html].

Vingroup itself had begun retail consolidation in October 2014, when it bought OceanMart from Ocean Group and rebranded the chain as VinMart [source: Wikipedia, Vingroup, https://en.wikipedia.org/wiki/Vingroup; reproduced in Mark Ashwill, "Vinmart to Win-Mart", 2022, https://markashwill.com/2022/05/10/vinmart-to-win-mart/]. By 2019 VinCommerce ran a network of more than 2,600 VinMart and VinMart+ stores across 50 of Vietnam's 63 provinces, and 14 VinEco high-tech farms [source: TuoiTre, "Vingroup nhuong mang Vincommerce va VinEco cho Masan", 3 Dec 2019, https://tuoitre.vn/vingroup-nhuong-mang-vincommerce-va-vineco-cho-masan-20191203104021049.htm; TuoiTre follow-up, 4 Dec 2019, https://tuoitre.vn/vingroup-chuyen-giao-vineco-va-vincommerce-cho-masan-hai-ben-cam-ket-gi-20191204075832991.htm].

## 2. The pre-divest VinID stack

| Layer | Function | Status by Dec 2019 |
|---|---|---|
| VinID card | Group-wide loyalty account | ~7m users by 2019 [source: VinID official communications, reproduced in MyTour] |
| VinID Pay | E-wallet integrated into the card | Active; PCI DSS-compliant; free transfers [source: VinID app pages] |
| Earn rate | 1,000 VND per transaction at VinMart / VinMart+ | Active |
| Partner network | VinMart, VinMart+, Vinpearl, VinFast, Vincom Retail, Vinhomes, plus external travel partners (Vietnam Airlines Lotusmiles cross-redemption added 2021) | Closed-loop within Vingroup; partial extension externally |

User-base trajectory (as disclosed):

- 2018: ~5m users
- 2019: ~7m users
- 2024 (under OneU): ~12m users

[Sources: VinID press releases reproduced in Vietnamese press; OneU upgrade communication, https://vinid.net/tin-tong-hop/vinid-nang-cap-thanh-oneu/]

## 3. The December 2019 transfer to Masan

The decisive event in the VinID story is the December 2019 Vingroup-Masan transaction:

- 3 December 2019: Vingroup and Masan agreed in principle to swap shares of VinCommerce and VinEco into a new merged company in exchange for Masan equity [source: TuoiTre, 3 Dec 2019, op cit].
- The transaction completed in two steps; the new entity came under Masan operational control through 2020 and was rebranded WinCommerce (WinMart and WinMart+) in 2021 [source: MarkAshwill, "Vinmart to Win-Mart", 2022, op cit].
- TheInvestor: the transaction was the largest Vietnamese M&A deal of the 2009-2023 period [source: TheInvestor, "Masan's acquisition of VinCommerce, VinEco tops M&A deals in Vietnam in 2009-2023", https://theinvestor.vn/masans-acquisition-of-vincommerce-vineco-tops-ma-deals-in-vietnam-in-2009-2023-d7619.html].
- VinID itself did not transfer. The card, the wallet, and the loyalty programme remained inside Vingroup, which subsequently moved them into One Mount Group [source: InfoNet, "Masan tiep quan VinMart, quyen loi chu the VinID nhu the nao?", https://infonet.vietnamnet.vn/thi-truong/masan-tiep-quan-vinmart-quyen-loi-chu-the-vinid-nhu-the-nao-19238.html].

The structural consequence for closed-loop data. From December 2019 onwards, the supermarket POS data sat inside Masan / WinCommerce; the loyalty card data sat inside Vingroup (and later One Mount). Any VinID member shopping at a WinMart store generated points on a card whose data lake belonged to a separate group. The two estates never re-integrated the data flow.

## 4. What the pre-divest VinID actually was

In the November 2016 to December 2019 window, before the divest, VinID had four properties that no Vietnamese consumer franchise has put together since:

1. **Closed-loop transaction capture inside an integrated retailer.** The VinMart cashier scanned the VinID card; the redemption rule and the data attribution were both inside Vingroup.
2. **A working e-wallet (VinID Pay).** Bank-rail integration, free transfers, and a small but real merchant payment footprint at Vingroup-owned outlets.
3. **A multi-property earn surface.** Points earned at the supermarket spent at the resort or the mall: Vincom retail tenants accepted VinID Pay.
4. **A first-party data feed for FMCG brands selling into VinMart.** Brands paying for shelf space could access shopper-cohort signal; this was monetisable as trade marketing data.

The combination of those four properties was the strongest closed-loop GT/MT proposition in Vietnam at the time, by a margin. The 2019 transfer broke the first three: VinMart became a Masan asset; the Vingroup-Masan partnership preserved customer benefits as a contractual courtesy but not as a single data asset.

## 5. What broke after the divest

- The VinMart POS feed went to Masan; VinID lost first-party shopper-cohort signal at the supermarket.
- The VinID Pay wallet kept running at Vingroup-controlled merchants but lost the supermarket as the primary use case. It limped on inside One Mount until being formally discontinued in May 2025 under the OneU rebrand [source: VietnamBiz, "OneU dung dich vu vi dien tu VinID Pay", 26 May 2025, https://vietnambiz.vn/oneu-dung-dich-vu-vi-dien-tu-vinid-pay-2025526152928408.htm].
- Cross-property earn-and-burn weakened as Vingroup's retail and food-and-beverage footprint contracted (VinPro electronics chain closed, Vinpearl restructured, Vincom Retail demerged on the public market).
- VinID was repositioned in September 2024 as OneU, framed as a "lifestyle platform" with 300+ partner brands, no longer as Vingroup's first-party closed-loop programme [source: Dan Tri, "VinID nang cap thanh OneU", 7 Sep 2024, https://dantri.com.vn/kinh-doanh/vinid-nang-cap-thanh-oneu-nen-tang-phong-cach-song-chat-luong-20240907143652496.htm].

## 6. What the pre-divest VinID era proves

| Lesson | What it implies for WinX |
|---|---|
| The integrated retail-plus-loyalty stack is the most valuable asset in the Vietnamese consumer landscape | The 2019 transfer of WinCommerce to Masan placed that asset inside the group. WinX inherits the supermarket data feed; it does not need to rebuild it. |
| The wallet leg is harder to maintain than the loyalty card leg | VinID Pay was discontinued in May 2025. The replacement wallet for a Masan stack should not assume a captive wallet works without bank-rail or super-app distribution. |
| Cross-property earn-and-burn collapses when the property network contracts | WinCommerce + WinMart + WinMart+ + Phuc Long + Reddi (former Mobicast) is a tighter network than late-Vingroup's. The earn-and-burn loop is more defensible. |
| The group that owns the supermarket POS data wins | Masan won this when the Dec 2019 deal closed. The data asset has been compounding inside WinCommerce since. |

## 7. Voice and external commentary

- **TuoiTre (3 Dec 2019)**: "Vingroup transferred VinCommerce and VinEco to Masan." The framing was practical: the two parties are jointly committed; benefits to VinID cardholders preserved [source: TuoiTre, op cit].
- **InfoNet** (post-deal): "Masan takes over VinMart; how do VinID cardholder rights stand?" The article confirmed the contractual continuity of point earning at the merged supermarket chain in the immediate aftermath of the deal.
- **TheInvestor** (retrospective, 2024): the 2019 swap was the deal of the post-WTO era for Vietnam.
- **Mark Ashwill** (2022): a foreign-resident perspective on the VinMart-to-WinMart rebrand documented the day-to-day continuity at store level [source: MarkAshwill, op cit].

## 8. Read-across for WinX

1. **WinX should treat WinCommerce POS as the asset the broader Vietnamese ecosystem tried and failed to replicate.** Telio never had it; VinShop never linked to it; OneU has lost its connection to it. WinX has it.
2. **The 2019 transfer is the historical event that made the 2026 WinX opportunity possible.** Without that deal, the supermarket POS data would still sit inside Vingroup / One Mount; with it, the data is inside Masan and available to a GT-side platform Masan builds.
3. **A wallet is not a precondition; a card and a POS feed are.** VinID Pay survived eight years and was retired. The card-and-POS combination is the durable asset.
4. **The loyalty programme is a defensive moat, not a growth engine.** WinX should treat any WinX-branded loyalty layer as protective of WinCommerce sell-through, not as a standalone P&L.

## 9. Thin-research flags

- VinID Pay GMV at peak: never publicly disclosed.
- VinID first-party data licensing revenue from FMCG brands: never publicly disclosed.
- Specific VinID user-base growth by year between 2017 and 2019: only year-end snapshots.
- The exact fence-line on data and customer rights between Vingroup and Masan post-2019: contractual terms not public.
- Cross-property earn-and-burn redemption rates pre- and post-deal: not publicly disclosed.

## 10. Source ledger

- Wikipedia, Vingroup, https://en.wikipedia.org/wiki/Vingroup
- MyTour, "What is VinID and how to register for benefits?", https://mytour.vn/en/blog/bai-viet/understanding-vinid-what-is-it-and-how-to-register-for-benefits.html
- VinID, "VinID nang cap thanh OneU", Sep 2024, https://vinid.net/tin-tong-hop/vinid-nang-cap-thanh-oneu/
- Dan Tri, "VinID nang cap thanh OneU - nen tang phong cach song chat luong", 7 Sep 2024, https://dantri.com.vn/kinh-doanh/vinid-nang-cap-thanh-oneu-nen-tang-phong-cach-song-chat-luong-20240907143652496.htm
- VietnamBiz, "OneU dung dich vu vi dien tu VinID Pay", 26 May 2025, https://vietnambiz.vn/oneu-dung-dich-vu-vi-dien-tu-vinid-pay-2025526152928408.htm
- Vietnam Airlines newsroom, "More Privileges Added for Lotusmiles, VinID Members", 2021, https://enews.vietnamairlines.com/2021/10/more-privileges-added-for-lotusmiles-vinid-members/
- Tuoi Tre, "Vingroup nhuong mang Vincommerce va VinEco cho Masan", 3 Dec 2019, https://tuoitre.vn/vingroup-nhuong-mang-vincommerce-va-vineco-cho-masan-20191203104021049.htm
- Tuoi Tre, "Vingroup chuyen giao VinEco va VinCommerce cho Masan: Hai ben cam ket gi?", 4 Dec 2019, https://tuoitre.vn/vingroup-chuyen-giao-vineco-va-vincommerce-cho-masan-hai-ben-cam-ket-gi-20191204075832991.htm
- TheInvestor, "Masan's acquisition of VinCommerce, VinEco tops M&A deals in Vietnam in 2009-2023", https://theinvestor.vn/masans-acquisition-of-vincommerce-vineco-tops-ma-deals-in-vietnam-in-2009-2023-d7619.html
- VnExpress, "Tu lo nghin ty den cu 'nguoc dong' cua ong lon ban le Viet", https://vnexpress.net/tu-lo-nghin-ty-den-cu-nguoc-dong-cua-ong-lon-ban-le-viet-4786150.html
- Vietnam News, "Masan reaps success in WinCommerce retail business", https://vietnamnews.vn/economy/1661933/masan-reaps-success-in-wincommerce-retail-business.html
- Mark Ashwill, "Vinmart to Win-Mart", 2022, https://markashwill.com/2022/05/10/vinmart-to-win-mart/
- InfoNet, "Masan tiep quan VinMart, quyen loi chu the VinID nhu the nao?", https://infonet.vietnamnet.vn/thi-truong/masan-tiep-quan-vinmart-quyen-loi-chu-the-vinid-nhu-the-nao-19238.html
- Vingroup IR, https://vingroup.net/en/investor-relations/annual-report
