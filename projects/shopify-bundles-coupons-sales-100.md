---
layout: page
title: "Bundles + coupons in cart (~100% sales lift)"
description: "Surfacing bundles and coupon clarity earlier in the journey to increase sales (~100%, anonymized)."
permalink: /projects/shopify-bundles-coupons-sales-100/
---

# Bundles + coupons in cart (~100% sales lift)

> **Note:** This case study is intentionally anonymized. Numbers are shared as approximate ranges. Company, SKU names, and internal links are omitted.

## TL;DR
The store had promotions and bundle value, but customers didn’t reliably *see* it at the right time.  
By improving **bundle presentation** and **coupon visibility** inside the cart (not only at checkout), we reduced confusion and increased purchase intent - resulting in an **~100% sales lift** during the measured period.

## Context
- Platform: Shopify
- Constraint: keep changes lightweight and theme-friendly
- Risk: promotions can increase revenue but also introduce margin and abuse risk
- Goal: increase conversion/AOV by making value obvious *before* checkout

## The problem
Two common ecommerce problems were present:

1) **Bundles exist, but are invisible.**  
Users don’t discover the offer, so they never evaluate it.

2) **Coupons feel uncertain.**  
When customers don’t know if a discount will apply, they hesitate (or abandon).

## Hypothesis
If we surface “value” earlier and make the discount behavior predictable:
- more customers will complete checkout
- more customers will add complementary items (AOV lift)
- fewer customers will abandon due to uncertainty

## What I changed
### 1) Bundle visibility in cart
- added a cart-level bundle message (clear, scannable, not salesy)
- surfaced “add the bundle” options at the moment intent is highest
- kept the interaction simple and fast (minimal extra scripts)

### 2) Coupon clarity
- improved messaging around discounts (when it applies, where to enter, what to expect)
- removed ambiguity and reduced “trial-and-error” behavior at checkout

### 3) Guardrails
- monitored discount usage and obvious abuse patterns
- kept the system simple enough to maintain (no fragile logic)
## Promotion hygiene (keeping it clear)
Revenue lift is great, but promotions can become confusing fast. To keep the user experience clear and maintainable, I:
- Disabled several legacy/overlapping discounts that no longer served a purpose
- Renamed remaining offers so the rules are obvious to customers
- Consolidated active promotions into a few clear offers (e.g., **case discount**, **gluten-free case discount**, **mix & match**)
- Implemented a cart view that surfaces the right coupon/value message based on what’s in the cart, including a clear CTA (e.g., “Get 15% off”)

This reduced ambiguity and helped customers feel confident that they were getting the intended deal.

## Measurement
I measured impact using:
- sales and conversion trends across comparable windows
- cart behavior (add/remove patterns)
- supporting signals (discount usage, checkout initiation)

## Results
- Total sales increased by **~100%** in the measured period (relative lift).
- The biggest improvement came from reduced uncertainty at the cart/checkout boundary.

## Lessons learned
- “Value” needs to appear *where intent happens* (cart), not only in marketing or checkout.
- Discount UX is trust UX: clear rules beat hidden fields.
- Keep promotional systems maintainable, or you’ll create long-term ops debt.

## Related notes
- [Cart & checkout patterns: bundles + coupon visibility](/notes/cart-checkout-bundles-coupons/)

## What I'd do next

- Validate the profit side: track margin impact per promotion and define guardrails (minimum AOV, exclusions, stacking rules).
- Run a small set of tests: cart messaging variants, bundle placement, and discount visibility patterns.
- Align promo + inventory: ensure promotions don’t push velocity-high SKUs into stockout risk.
- Create a “promo hygiene” checklist: naming conventions, user-facing clarity, and a monthly audit of active discounts.
