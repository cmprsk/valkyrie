---
layout: post
comments: true
title:  "VALQUIRIA agora em inglês"
date:   2016-07-01 16:03:45 -0300
categories: valquiria
ref: multilingual
lang: pt
permalink: /versao-ingles/
doi: 10.6084/m9.figshare.3489971.v1
tags: pediatric cancer, brain tumors, diffuse intrinsic pontine glioma, clinical trial, multilingual, jekyll
---

Esta semana começarei a publicar uma versão do site em inglês, além da versão em português que já existia. Graças às excelentes contribuições de [Sylvain Durand][jekyll-multilingual], pude criar e configurar uma página multilíngue no Jekyll, basicamente adicionando estas linhas na minha YAML [frontmatter][jekyll-frontmatter] das postagens (e alguns outros arquivos, como o _index.html_):

```
---
lang: # a string as 'en' or 'pt'
ref: # an unique identifier for the post
---
```

Adicionei esta linha ao arquivo _index.html_ (bem como a um arquivo alternativo _index-pt.html_):

{% highlight liquid %}
 {{ "{% assign posts=site.posts | where:"lang", page.lang %}" }}
{% endhighlight %}

E estas linha ao arquivo _head.html_ na minha pasta **_includes** para mostrar apenas as postagens com a língua correta:

{% highlight html %}
{% raw %}
 {% assign posts=site.posts | where:"ref", page.ref | sort: 'lang' %}{% for post in posts %}
 <link rel="alternate" hreflang="{{ post.lang }}" href="{{ post.url }}" />{% endfor %}
 {% assign pages=site.pages | where:"ref", page.ref | sort: 'lang' %}{% for page in pages %}
 <link rel="alternate" hreflang="{{ page.lang }}" href="{{ page.url }}" />{% endfor %}
 <link rel="alternate" type="application/rss+xml" title="{{ site.title[page.lang] }}" href="{{ site.feed[page.lang] | prepend: site.github.url }}">
{% endraw %}
{% endhighlight %}

E também estas linhas no arquivo _header.html_ na pasta **_includes** para configurar as visualizações por língua e outras mudanças:

{% highlight html %}
{% raw %}
a class="site-title" href="{{ site.github.url }}/{{ site.index[page.lang] }}">{{ site.title[page.lang] }}</a>
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
  {% for post in posts %} <a href="{{ post.url | prepend: site.github.url }}" class="{{ post.lang }}">{{ post.lang }}}</a> {% endfor %}

  {% assign pages=site.pages | where:"ref", page.ref | sort: 'lang' %}
  {% for page in pages %} <a href="{{ page.url | prepend: site.github.url }}" class="{{ page.lang }}">{{ page.lang }}</a> {% endfor %}
</div>
{% endraw %}
{% endhighlight %}

Não poderia esquecer do arquivo _footer.html_:

{% highlight html %}
{% raw %}
 <h2 class="footer-heading">{{ site.title[page.lang] }}</h2>
 ...
 <li>{{ site.title[page.lang] }}</li>
 ...
 <p>{{ site.description[page.lang] }}</p>
{% endraw %}
{% endhighlight %}

Na tentativa de incluir links para postagens prévia e próxima, encontrei este [script][prevnext] descrito por [Myriam](https://github.com/mynimi).

Para tentar configurar da mesma forma seu site Jekyll, recomendo a leitura da documentação de [Silvain Durand][jekyll-multilingual] e dar uma olhada em [Myriam][prevnext] e nos arquivos em meu [repo](https://github.com/fhcflx/valkyrie).

### Referências:

- [Jekyll, Making Jekyll multilingual][jekyll-multilingual]
- [Jekyll, Frontmatter][jekyll-frontmatter]
- [Jekyll, Previous and next links within Jekyll collections][prevnext]

[jekyll-frontmatter]: https://jekyllrb.com/docs/frontmatter/
[jekyll-multilingual]: https://www.sylvaindurand.org/making-jekyll-multilingual/
[prevnext]: http://halfapx.com/en/previous-and-next-links-within-jekyll-collections/
