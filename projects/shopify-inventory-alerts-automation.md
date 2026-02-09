---
layout: page
title: "Shopify inventory alerts + ops automation"
description: "A human-in-the-loop system to prevent stockouts and protect marketing."
permalink: /projects/shopify-inventory-alerts-automation/
---

# Shopify inventory alerts + ops automation

**Goal:** prevent stockouts for high-velocity SKUs, keep campaigns safe, and reduce “surprise” inventory changes.

## What I built
I implemented a velocity-based alerting system in Shopify using simple tiering rules (`high / medium / low`) and thresholds per tier.  
When a SKU crossed its threshold, the system created an alert and generated a **draft message** for a fulfillment contact — but required a human to confirm the quantity before updating inventory (“human-in-the-loop”).

## Why it mattered
Inventory reliability is directly tied to growth: if a top SKU goes out of stock, conversion drops, ads waste spend, email campaigns underperform, and customer trust takes a hit.

## Results (example week, anonymized)
- A high-velocity SKU triggered an alert at **~139 units**, before the weekend.  
- After confirmation, inventory was increased by **+240 units** in Shopify the same day.  
- That SKU had sold **~252 units** the prior week, so the update prevented an imminent stockout and protected ongoing demand.

(Company, SKU name, and contacts are intentionally anonymized.)

## How it works (the loop)
1) Tag SKUs by velocity tier.  
2) Set tier thresholds (high triggers early).  
3) When threshold is crossed: alert + link + pre-filled draft message.  
4) Human confirms “add X” / “pause” / “set to 0”.  
5) Update Shopify inventory and log the outcome.

## Key lesson
The strongest automations don’t try to be fully autonomous — they reduce time-to-action and make the right action easy, while keeping accountability with a human owner.

## What I'd do next

- Add a simple weekly dashboard: alerts fired, time-to-action, changes applied, and stockouts prevented.
- Incorporate lead time into thresholds (not just velocity): high velocity + long lead time should alert earlier.
- Connect fulfillment confirmations to a structured log so inventory updates are auditable.
- Extend the system to marketing: auto-notify when a promoted SKU enters a risk state so campaigns can be adjusted.
