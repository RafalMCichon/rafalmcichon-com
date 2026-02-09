---
layout: page
title: "Site"
description: "Human-readable site index (navigation + crawlability)."
permalink: /site/
---

# Site

## Main
- [Home](/)
- [Projects](/projects/)
- [Notes](/notes/)
- [Log](/log/)
- [Resume](/resume/)
- [About](/about/)
- [Contact](/contact/)

## Projects
- [Shopify UX improvements (~50% conversion lift)](/projects/shopify-ux-conversion-50/)
- [Bundles + coupons in cart (~100% sales lift)](/projects/shopify-bundles-coupons-sales-100/)
- [WebGL deep compositing (patent)](/projects/webgl-deep-compositing-patent/)
- [Estimate tool simplification (+300% completions)](/projects/estimate-tool-300-percent/)

## Latest notes
{% assign notes = site.posts | where_exp: "p", "p.categories contains 'notes'" | slice: 0, 10 %}
{% if notes.size > 0 %}
<ul>
  {% for post in notes %}
    <li><a href="{{ post.url }}">{{ post.title }}</a> <span class="muted">- {{ post.date | date: "%Y-%m-%d" }}</span></li>
  {% endfor %}
</ul>
{% else %}
No notes yet.
{% endif %}

## Latest log entries
{% assign logs = site.posts | where_exp: "p", "p.categories contains 'log'" | slice: 0, 10 %}
{% if logs.size > 0 %}
<ul>
  {% for post in logs %}
    <li><a href="{{ post.url }}">{{ post.title }}</a> <span class="muted">- {{ post.date | date: "%Y-%m-%d" }}</span></li>
  {% endfor %}
</ul>
{% else %}
No log entries yet.
{% endif %}

## Recommended reads
- [Inventory stability is a growth lever](/notes/inventory-stability-is-a-growth-lever/)
- [Human-in-the-loop automation for ecommerce](/notes/human-in-the-loop-automation-for-ecommerce/)
- [Shopify UX: a friction-first checklist](/notes/shopify-ux-friction-checklist/)
- [Measuring Shopify UX changes](/notes/measuring-shopify-ux-changes/)
- [Bundles + coupon visibility (patterns that lift revenue)](/notes/cart-checkout-bundles-coupons/)

## Projects (content strategy)
- [SEO content hubs on Shopify (guides → ovens → recipes)](/projects/seo-content-hubs-shopify/)

