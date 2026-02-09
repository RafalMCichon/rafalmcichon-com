---
layout: page
title: "Log"
description: "Wins, losses, and reflections."
permalink: /log/
---

# Log

{% assign logs = site.posts | where_exp: "p", "p.categories contains 'log'" %}
{% if logs.size == 0 %}
No log entries yet - coming soon.
{% else %}
<ul>
  {% for post in logs %}
    <li>
      <a href="{{ post.url }}">{{ post.title }}</a>
      <span class="muted"> - {{ post.date | date: "%Y-%m-%d" }}</span>
    </li>
  {% endfor %}
</ul>
{% endif %}
