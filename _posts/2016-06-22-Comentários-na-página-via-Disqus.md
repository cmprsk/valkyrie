---
layout: post
comments: true
title:  "Comentários na página via Disqus"
date:   2016-06-22 16:03:45 -0300
categories: valquiria
ref: disqus
lang: pt
permalink: /disqus/
doi: 10.6084/m9.figshare.3489968.v1
tags: pediatric cancer, brain tumors, diffuse intrinsic pontine glioma, clinical trial, disqus, jekyll
---

A partir de hoje, configurei o sistema de comentários nas postagens do ensaio VALQUIRIA. Usando as instruções encontradas [aqui][disqus-jekyll-install] e também [aqui][disqus-jekyll], criei e configurei uma conta no [Disqus][disqus] e acrescentei o seguinte código num arquivo _disqus.html_, salvo na pasta **\_includes**:

{% highlight html %}
  {{ "{% if page.comments " }}%}
  {% include  disqus.html %}
  {{ "{% endif " }}%}
{% endhighlight %}

E adicionando a seguinte _tag_ [Liquid][liquid] no modelo _post.html_:

{% highlight liquid %}
  {{ "{% include  disqus.html " }}%}
{% endhighlight %}


Para adicionar os comentários do Disqus a um outro blog [Jekyll][jekyll], sugiro utilizar o [código universal][disqus-embed] fornecido por ele.
Os comentários podem ser moderados, respondidos e curados no Disqus, e o histórico de comentários vai ficar na página da postagem. Todos os leitores da página do VALQUIRIA são convidados a opinar, criticar, sugerir ou apenas comentar e acrescentar sua experiência e idéias. Todas as contribuições são bem-vindas!

### Referências:

- [Jekyll][jekyll]
- [Disqus][disqus]
- [Disqus, Universal Embed Code][disqus-embed]
- [Disqus, Jekyll Installation Instructions][disqus-jekyll-install]
- [Disqus, Adding Disqus to a Jekyll blog][disqus-jekyll]
- [Liquid, Liquid for designers][liquid]

[jekyll]: https://jekyllrb.com
[disqus]: https://disqus.com
[disqus-embed]: https://disqus.com/admin/universalcode/
[disqus-jekyll-install]: https://help.disqus.com/customer/portal/articles/472138-jekyll-installation-instructions
[disqus-jekyll]: http://sgeos.github.io/jekyll/disqus/2016/02/14/adding-disqus-to-a-jekyll-blog.html
[liquid]: https://github.com/Shopify/liquid/wiki/liquid-for-designers
