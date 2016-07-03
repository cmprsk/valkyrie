---
layout: post
comments: true
title:  "VALKYRIE site is now multilingual"
date:   2016-06-30 16:03:45 -0300
categories: valquiria
ref: multilingual
lang: en
---

This week we are going to begin publishing this site in more than one language. Thanks to the excellent contributions of [Sylvain Durand][jekyll-multilingual], I created and configured a multilingual jekyll build, basically by adding these lines to the YAML [frontmatter][jekyll-frontmatter] of my posts (and some other files, like _index.html_):

```
---
lang: # a string as 'en' or 'pt
ref: # an unique identifier for the post
---
```

And also adding this line to the _index.html_ file (as well as to an alternative _index-pt.html_ file):

```
{% assign posts=site.posts | where:"lang", page.lang %}
```

And these lines to _head.html_ at my **_includes** folder to only show the right language posts:

```
{% assign posts=site.posts | where:"ref", page.ref | sort: 'lang' %}{% for post in posts %}
<link rel="alternate" hreflang="{{ post.lang }}" href="{{ post.url }}" />{% endfor %}
{% assign pages=site.pages | where:"ref", page.ref | sort: 'lang' %}{% for page in pages %}
<link rel="alternate" hreflang="{{ page.lang }}" href="{{ page.url }}" />{% endfor %}
<link rel="alternate" type="application/rss+xml" title="{{ site.title[page.lang] }}" href="{{ site.feed[page.lang] | prepend: site.github.url }}">
```

And also these lines to _header.html_ in **_includes** folder to create links to change language view and some other tweaks:

```
<a class="site-title" href="{{ site.github.url }}/{{ site.index[page.lang] }}">{{ site.title[page.lang] }}</a>
...
<div class="trigger">
  {% assign pages=site.pages | where:"lang", page.lang %}
 {% for my_page in pages %}
   {% if my_page.title %}
   <a class="page-link" href="{{ my_page.url | prepend: site.github.url }}">{{ my_page.title }}</a>
   {% endif %}
 {% endfor %}
</div>
...
<div class="wrapper" style="text-align: right; line-height: 2em">
  {% assign posts=site.posts | where:"ref", page.ref | sort: 'lang' %}
  {% for post in posts %} <a href="{{ post.url | prepend: site.github.url }}" class="{{ post.lang }}">{{ post.lang }}</a> {% endfor %}

  {% assign pages=site.pages | where:"ref", page.ref | sort: 'lang' %}
  {% for page in pages %} <a href="{{ page.url | prepend: site.github.url }}" class="{{ page.lang }}">{{ page.lang }}</a> {% endfor %}
</div>

```

We must not forget tweaks in the _footer.html_ file as well:

```
<h2 class="footer-heading">{{ site.title[page.lang]}}</h2>
...
<li>{{ site.title[page.lang] }}</li>
...
<p>{{ site.description[page.lang] }}</p>
```

One needs to check the documentation of [Silvain Durand][jekyll-multilingual] and the files I changed in my [repo](https://github.com/fhcflx/valkyrie) in order to try the same.

### References:

- [Jekyll, Making Jekyll multilingual][jekyll-multilingual]
- [Jekyll, Frontmatter][jekyll-frontmatter]

[jekyll-frontmatter]: https://jekyllrb.com/docs/frontmatter/
[jekyll-multilingual]: https://www.sylvaindurand.org/making-jekyll-multilingual/
