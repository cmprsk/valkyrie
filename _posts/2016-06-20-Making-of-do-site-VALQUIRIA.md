---
layout: post
comments: true
title:  "_Making of_ do site do Projeto VALQUIRIA"
date:   2016-06-20 16:03:45 -0300
categories: valquiria
ref: making
lang: pt
permalink:
doi: 10.6084/m9.figshare.3494342
tags: open science, open notebook science, open clinical trial, jekyll, markdown, static site, git, github
---

Para iniciar este site, usei o programa [Jekyll][jkyll], que é um interpretador de markdown para [HTML][html] que gera páginas web estáticas. Falar assim dá a impressão que o Jekyll faz algo "mágico" com o código e _voilà!_, temos uma página estática. Para começar, não existe segredo nenhum em uma página web estática. A maioria das páginas que navegamos na web é dinâmica, contém elementos que são gerados durante a renderização da página, exigindo trabalho do lado do servidor. Qualquer dos provedores de blogs populares, como [Blogger][blggr] e [Wordpress][wrdprss] serve páginas dinâmicas. As páginas dinâmicas são customizáveis e têm um número enorme de _gadgets_, _plugins_ e _hackings_ possíveis. Podem ter efeitos em tempo real fantásticos e complexos. No entanto, o preço que se cobra é o maior tempo para carregar a página (nenhum problema numa conexão banda larga de alta qualidade, mas esta não é bem a regra em todo lugar) e maior chance de problemas de incompatibilidade com navegadores ou plataformas móveis. Hoje em dia, uma grande prioridade tem sido dada a plataformas móveis.

Páginas estáticas, em contraposição, não são nada mais que códigos html praticamente sem nenhum outro tipo de código adicional (especialmente [PHP][php]). No princípio, a web estava repleta de páginas estáticas. O servidor apenas renderiza a página, sem necessidade de processar códigos. Isso torna as páginas estáticas mais rápidas (a diferença de velocidade é notável mesmo numa banda larga), às custas de maior simplicidade e menos recursos. A ênfase atual em sites minimalistas e responsivos (que adaptam-se facilmente a diversos tipos de dispositivos móveis) veio com a pluralidade de máquinas móveis que acessam a internet hoje em dia, com milhares de especificações diferentes de tamanho e resolução de tela. Desenvolvedores que trabalham com páginas dinâmicas ficam malucos. Tem ocorrido uma "troca inteligente" entre as potencialidades de códigos dinâmicos que são interpretados no servidor (PHP, principalmente) e a universalidade e simplicidade do HTML "quase puro" das páginas estáticas modernas. Truques e a utilização de programas modernos estão fazendo com que a opção por páginas estáticas não pareça um "retrocesso". Na verdade, hoje em dia é muito _cool_ fazer seu próprio site estático.

Dito isto, o Jekyll é um programa criado pelo fundador do [GitHub][gthb], [Tom Preston-Werner][tpw], escrito em [Ruby][rby], que funciona gerando automaticamente sites estáticos. Ele tem um tema básico minimalista que pode ser completamente customizado. Um de seus principais atrativos é o fato de ser um interpretador (_parser_) de [Markdown][mrkdwn], uma forma simplificada de HTML que existe em vários formatos ou "sabores" (_flavors_), criada originalmente como um conversor de texto simples em html por John Gruber. Para quem já experimentou escrever em HTML ou mesmo para quem apenas usa processadores de texto populares, as várias formas de markdown parecem excepcionais ferramentas para formatar texto na web (ou mesmo fora dela). Markdown tem ficado muito popular, justificadamente, e o fato de Jekyll aceitar que suas páginas sejam escritas nesta linguagem facilita enormemente seu uso. Um parêntese aqui: escrever postagens em provedores de blogs dinâmicos é tão simples quanto usar um processador de texto, e pode parecer mais fácil á primeira vista. Quando você percebe, porém, que markdown permite que você escreva apenas em texto simples e automaticamente faz uma formatação básica do texto, isso lhe dá a dimensão de quanto tempo pode ser economizado.

Para quem é averso ao uso de linguagens de programação e linhas de comando, usar Jekyll pode realmente parecer um sério desafio no início. Sempre existirão os servidores populares de blogs, e estes já estão começando a oferecer serviços em páginas [estáticas][sttc]. Porém, para quem tem interesse específico em uma página estática altamente customizável e tem experiência mínima com linguagem de programação, Jekyll é uma boa opção. Para servir a página na web, a melhor opção é o serviço do [Github Pages][gthb-pgs], o qual é [integrado][jkyll-gthb-pgs] ao Jekyll. Para tanto, é necessário usar o [Git][gt], um [sistema de controle de versão distribuído][dcvs] desenvolvido e utilizado pela comunidade de desenvolvedores de Linux. Um sistema de controle de versão registra todas as modificações realizadas em arquivos ou conjuntos de arquivos, provendo acesso a todas as versões anteriores em qualquer tempo de um projeto. O git administra localmente as mudanças em um projeto e atribui um código [SHA][sh] a cada versão registrada. Dessa forma, ele assegura confiabilidade e segurança ao desenvolvimento de sistemas. Git e GitHub têm sido cada vez mais usados por cientistas da área da biologia quantitativa, em especial em projetos que implementam [ciência aberta (_open science_)][opn-scnc] e [cadernos de pesquisa abertos (_open notebook science_)][opn-ntbk-scnc].

Assim, escolhi usar Jekyll para criar o site de VALQUIRIA e escrever suas postagens em formato markdown. Instalei Git localmente e sincronizei os conteúdos com o GitHub remotamente, servindo a página a partir do GitHub Pages. Isso resolveu a parte da implementação deste projeto de [ensaio clínico aberto (_open clinical trial_)][opn-clncl-trl].


### Referências:

- [Jekyll][jkyll]
- [Blogger][blggr]
- [Wordpress][wrdprss]
- [HTML - HyperText Markup Language][html]
- [PHP: Hypertext Preprocessor][php]
- [GitHub][gthb]
- [Tom Preston-Werner at Github][tpw]
- [Ruby (programming language)][rby]
- [Daring fireball - Markdown, by John Gruber][mrkdwn]
- [Wordpress.com Support - Set a Static "Home" Page (Front Page)][sttc]
- [GitHub Pages][gthb-pgs]
- [Using Jekyll as a static site generator with GitHub Pages][jkyll-gthb-pgs]
- [Git - distributed is the new centralized][gt]
- [Git, Primeiros passos - Sobre Controle de Versão][dcvs]
- [Secure Hash Algorithm][sh]
- [Open Science][opn-scnc]
- [Wellcome to my Lab Notebook - Carl Boettiger][opn-ntbk-scnc]
- [Open clinical trials. Jeffrey M. Drazen, M.D., Stephen Morrissey, Ph.D., and Gregory D. Curfman, M.D. N Engl J Med 2007; 357:1756-1757 DOI: 10.1056/NEJMe0706501][opn-clncl-trl]

[jkyll]: https://jekyllrb.com
[blggr]: https://www.blogger.com
[wrdprss]: https://wordpress.com
[php]: https://pt.wikipedia.org/wiki/PHP
[html]: https://pt.wikipedia.org/wiki/HTML
[gthb]: https://github.com/
[tpw]: https://github.com/mojombo
[rby]: https://en.wikipedia.org/wiki/Ruby_(programming_language)
[mrkdwn]: https://daringfireball.net/projects/markdown/
[sttc]: https://en.support.wordpress.com/pages/front-page/
[gthb-pgs]: https://pages.github.com/
[jkyll-gthb-pgs]:https://help.github.com/articles/using-jekyll-as-a-static-site-generator-with-github-pages/
[gt]: https://git-scm.com/
[dcvs]: https://git-scm.com/book/pt-br/v1/Primeiros-passos-Sobre-Controle-de-Vers%C3%A3o
[sh]: https://en.wikipedia.org/wiki/Secure_Hash_Algorithm
[opn-scnc]: https://en.wikipedia.org/wiki/Open_science
[opn-ntbk-scnc]: http://www.carlboettiger.info/2010/11/08/welcome-to-my-lab-notebook.html
[opn-clncl-trl]: http://dx.doi.org/10.1056/NEJMe0706501
