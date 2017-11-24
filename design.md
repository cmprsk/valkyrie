---
layout: page
ref: experimental
lang: en
title: Experimental design
---

{% assign designs=site.design | where:"lang", page.lang %}

{% for item in designs %}

  <p><a href="{{ item.url | prepend: site.baseurl }}">{{ item.title }}</a></p>
  <p>{{ item.description }}</p>
  

{% endfor %}
