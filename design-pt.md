---
layout: page
ref: design
lang: pt
title: Desenho experimental
permalink: /design/index-pt.html
---

{% assign design.posts=site.design | where:"lang", page.lang %}

{% for item in design.posts %}
  <h2>{{ item.title }}</h2>
  <p>{{ item.description }}</p>
  <p><a href="{{ item.url }}">{{ item.title }}</a></p>
{% endfor %}
