---
layout: page
ref: experimental
lang: pt
title: Desenho experimental
---

{% assign designs=site.design | where:"lang", page.lang %}

{% for item in designs %}
  <h3><a href="{{ item.url | prepend: site.baseurl }}">{{ item.title }}</a></h3>
  <p>{{ item.description }}</p>

{% endfor %}
