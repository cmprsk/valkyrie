---
layout: page
ref: experimental
lang: pt
title: Desenho experimental
---

{% assign designs=site.design | where:"lang", page.lang %}

{% for item in designs %}
  <h2>{{ item.title }}</h2>
  <p>{{ item.description }}</p>
  <p><a href="{{ item.url | prepend: site.baseurl }}">{{ item.title }}</a></p>
{% endfor %}
