---
layout: post
comments: true
title:  "Comentários na página via Disqus"
date:   2016-06-22 16:03:45 -0300
categories: valquiria
---

A partir de hoje, configurei o sistema de comentários nas postagens do ensaio VALQUIRIA. Usando as instruções encontradas [aqui](https://help.disqus.com/customer/portal/articles/472138-jekyll-installation-instructions), criei e configurei uma conta no Disqus e acrescentei o seguinte código num arquivo _disqus.html_, salvo na pasta **\_includes**:

```
{% if page.comments %}
<div id="disqus_thread"></div>
<script>
    /**
     *  RECOMMENDED CONFIGURATION VARIABLES: EDIT AND UNCOMMENT THE SECTION BELOW TO INSERT DYNAMIC VALUES FROM YOUR PLATFORM OR CMS.
     *  LEARN WHY DEFINING THESE VARIABLES IS IMPORTANT: https://disqus.com/admin/universalcode/#configuration-variables
     */
    /*
    var disqus_config = function () {
        this.page.url = PAGE_URL;  // Replace PAGE_URL with your page's canonical URL variable
        this.page.identifier = PAGE_IDENTIFIER; // Replace PAGE_IDENTIFIER with your page's unique identifier variable
    };
    */
    (function() {  // REQUIRED CONFIGURATION VARIABLE: EDIT THE SHORTNAME BELOW
        var d = document, s = d.createElement('script');

        s.src = '//EXAMPLE.disqus.com/embed.js';  // IMPORTANT: Replace EXAMPLE with your forum shortname!

        s.setAttribute('data-timestamp', +new Date());
        (d.head || d.body).appendChild(s);
    })();
</script>
<noscript>Please enable JavaScript to view the <a href="https://disqus.com/?ref_noscript" rel="nofollow">comments powered by Disqus.</a></noscript>
{% endif %}
```
E adicionando a seguinte tag liquid no modelo post.html:

```
{% include  disqus.html %}
```
Os comentários podem ser moderados, respondidos e curados no Disqus, e o histórico de comentários vai ficar na página da postagem. Todos os leitores da página do VALQUIRIA são convidados a opinar, criticar, sugerir ou apenas comentar e acrescentar sua experiência e idéias. Todas as contribuições são bem-vindas!

``` Francisco H. C. Félix (Cancerologista Pediátrico, idealizador do projeto)```
