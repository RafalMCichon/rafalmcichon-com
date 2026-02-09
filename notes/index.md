---
layout: page
title: "Notes"
description: "Short technical notes and experiments."
permalink: /notes/
---

# Notes

{% assign notes = site.posts | where_exp: "p", "p.categories contains 'notes'" %}
{% if notes.size == 0 %}
No notes yet - coming soon.
{% else %}
<ul>
  {% for post in notes %}
    <li>
      <a href="{{ post.url }}">{{ post.title }}</a>
      <span class="muted"> - {{ post.date | date: "%Y-%m-%d" }}</span>
    </li>
  {% endfor %}
</ul>
{% endif %}
