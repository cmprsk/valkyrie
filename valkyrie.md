---
layout: page
ref: valkyrie
lang: en
title: VALKYRIE
---

{% assign vposts=site.valkyrie | where:"lang", page.lang %}

{% for item in vposts %}

  <h3><a href="{{ item.url | prepend: site.baseurl }}">{{ item.title }}</a></h3>
  <p>{{ item.description }}</p>
  

{% endfor %}
