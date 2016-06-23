---
layout: post
comments: true
title:  "Comentários na página via Disqus"
date:   2016-06-22 16:03:45 -0300
categories: valquiria
---

A partir de hoje, configurei o sistema de comentários nas postagens do ensaio VALQUIRIA. Usando as instruções encontradas [aqui](https://help.disqus.com/customer/portal/articles/472138-jekyll-installation-instructions) e também [aqui](http://sgeos.github.io/jekyll/disqus/2016/02/14/adding-disqus-to-a-jekyll-blog.html), criei e configurei uma conta no [Disqus](https://disqus.com) e acrescentei o seguinte código num arquivo _disqus.html_, salvo na pasta **\_includes**:

{% highlight html %}
{% raw %}{% if page.comments %}{% endraw %}
{% include  disqus.html %}
{% raw %}{% endif %}{% endraw %}
{% endhighlight %}


E adicionando a seguinte _tag_ [Liquid](https://github.com/Shopify/liquid/wiki/liquid-for-designers) no modelo _post.html_:

{% highlight html %}
{% raw %}{% include  disqus.html %}{% endraw %}
{% endhighlight %}


Os comentários podem ser moderados, respondidos e curados no Disqus, e o histórico de comentários vai ficar na página da postagem. Todos os leitores da página do VALQUIRIA são convidados a opinar, criticar, sugerir ou apenas comentar e acrescentar sua experiência e idéias. Todas as contribuições são bem-vindas!

``` Francisco H. C. Félix (Cancerologista Pediátrico, idealizador do projeto)```
