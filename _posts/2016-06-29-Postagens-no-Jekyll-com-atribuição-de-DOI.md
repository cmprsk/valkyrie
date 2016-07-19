---
layout: post
comments: true
title:  "Postagens no Jekyll com atribuição de DOI"
date:   2016-06-29 16:03:45 -0300
categories: valquiria
ref: doi-number
lang: pt
permalink: /identificador-doi/
doi: 10.6084/m9.figshare..v1
tags: pediatric cancer, brain tumors, diffuse intrinsic pontine glioma, clinical trial, figshare, doi, jekyll
---

O próximo passo na publicação deste _caderno aberto de ensaio clínico_ será registrar um _DOI_ (Digital Object Identifier) para cada postagem. DOIs são [identificadores interoperáveis persistentes][id-io], endereços da rede mundial (URL) com a característica de serem persistentes e não sofrerem "quebra de link (link rot)". Isto os torna úteis para identificação e citação acadêmicos. Uma organização sem fins lucrativos, a [International DOI Foundation][doi], constitui o órgão de governança e manutenção para Agências de Registro que são provedoras de DOI.  

Como seria possível implementar esta funcionalidade neste caderno de pesquisa? Cada postagem existe como um único arquivo markdown que é analisado pelo Jekyll e publicado na forma de html na rede. Logo, a forma mais direta seria associar um DOI a cada arquivo markdown. Todavia, cada postagem tem, na verdade, _duas_ versões, uma em português e a outra em inglês, cada uma em um arquivo markdown separado. Dessa forma, eu decidi publicá-las como _conjuntos de arquivos_, criando um DOI para cada _conjunto_ de arquivos (versões da mesma postagem em outras línguas). Um repositório acadêmico on-line que aceita conjuntos de arquivos e provê DOIs é o [_figshare_][fig].

Assim, decidi auto-arquivar os conjuntos de postagens multilíngua no figshare e registrar DOIs para cada um. Criarei uma categoria de _YAML frontmatter_ denominada "doi" e identificarei cada postagem com ela. Utilizando uma marcação _Liquid_, poderei! então! inserir o DOI no título de cada postagem, criando um _rótulo de citação_. Para um exemplo, basta checar está postagem. O código da citação tem essa estrutura:

{% highlight liquid %}
{%raw%}{{ page.date | date: "%b %-d, %Y" }} (...) {{ page.author }}, (...) doi:{{ page.doi }}{%endraw%}
{% endhighlight %}

E o resultado é esse: {{ pagedate | date: "%b %-d, %Y" }} {{ page.author }}, doi:{{ page.doi }}

### Referências:

- [DOI, identifier interoperability][id-io]
- [DOI.org][doi]
- [Figshare][fig]


[id-io]: https://www.doi.org/factsheets/Identifier_Interoper.html
[doi]: http://www.doi.org
[fig]: http://www.figshare.com
