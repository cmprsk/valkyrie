---
layout: post
comments: true
title:  "Um fluxo de trabalho para a ciência clínica aberta"
date:   2016-06-27 16:03:45 -0300
categories: valquiria
ref: workflow
lang: pt
permalink: fluxo-trabalho/
doi: 10.6084/m9.figshare.3764571.v1
tags: pediatric cancer, brain tumors, diffuse intrinsic pontine glioma, clinical trial, doi, jekyll, workflow, open science
---

Neste ponto, podemos esboçar um fluxo de trabalho para o caderno de ciência clínica aberta. Esse fluxo de trabalho não se destina a todos e não deve substituir qualquer rotina de tarefas estabelecida, a menos que este esteja de acordo com os objetivos de quem lê. Este é um exemplo, não uma receita.

Primeiro, a escrita de notas experimentais, observações pessoais, discussões em equipe, sessões criativas, consensos, pesquisa bibliográfica, opiniões de autoridades, pareceres de especialistas convidados, resultados tabulados, cálculos estatísticos, escritos acadêmicos preliminares, fragmentos de pré-publicações, rascunhos de documentos, essencialmente, qualquer pedaço de conteúdo de texto, mesmo manifestos de ativos e listas de compras. Qualquer produção textual deve ser escrita em linguagem simples, ASCII ou texto não formatado equivalente. Formatos de arquivo para gravar podem ser desde .txt até [Markdown][mrkdwn] (.md ou .markdown) ou qualquer equivalente. Os dados devem ser rigorosamente [desidentificados][de-id], e medidas adicionais devem ser tomadas para evitar a re-identificação secundária. Se é preciso manter registros identificados (como é frequentemente o caso), eles devem ser mantidos de forma tradicional, em condições de segurança.

Em segundo lugar, incorporar o texto simples em um modelo escrito em [GitHub Flavored Markdown (GFM)][GFM], como este. O uso particular de GFM sobre outras variantes de Markdown é porque nós usamos o [GitHub Pages][gthb-pgs] para publicar na internet. GitHub Pages torna o texto Markdown em HTML via [Jekyll][jkyll] (ver a sua [documentação][gthb-pgs-jkyll]). Há um passo extra para scripts de análise estatística escritos em [linguagem de programação R][r]. Eles devem ser inseridos em arquivos de formato .Rmd. Esses arquivos podem ser facilmente transcritos em formato Markdown usando os pacotes [_knitr_][kntr] e [_servr_][srvr] de R. E tudo termina em um arquivo de formato Markdown pronto para ser transformado em HTML pelo Jekyll. O arquivo em GFM deve ter pelo menos uma seção [YAML][yaml] (_front matter_). Padronizamos o modelo de [_front matter_][yml-frntmttr] YAML como o que existe neste documento. O nosso tem _tags_ e _categories_, [doi][d], permalink, lang e ref (para suporte multilíngue), título (_title_), comentários (_comments_) e variáveis ​​de layout.

Em terceiro lugar, implementar diretamente o arquivo no [GitHub][gthb] (em um repositório adequado criado anteriormente para isso) e o GitHub Pages vai cuidar do resto (publicar na web). Recomenda-se que esta etapa seja feita localmente antes da publicação na internet, para detectar e corrigir eventuais erros no código usado antes de publicar a versão final. Para garantir a transparência, controle e reprodutibilidade, foi instalado localmente o [Git][gt] (um software de controle de versões) e Jekyll (um interpretador versátil de Markdown para HTML). Além disso, instalamos _plugins_ do Jekyll para permitir a integração com o Twitter ([jekyll-twitter-plugin][jkyll-twttr-plgn]), comentários via [Disqus][dsqs], suporte [multilíngue][mltlngl]. Nada disso é realmente indispensável. No entanto, servir localmente com Jekyll é uma boa ideia para evitar erros antes da implementação final.

Em quarto lugar, depositar os arquivos importantes (.RMmd, Markdown) no [figshare][fgshr] e publicar o conjunto de dados publicamente, obtendo um número DOI para facilitar a citação acadêmica, rastreabilidade e persistência na internet. Este parece ser um passo menor, mas é importante para divulgar o seu trabalho. A integração social e implementação de coemntários são a maneira de interagir com a comunidade científica. Afinal, esta é a principal motivação para a [ciência aberta][opn-scnc].

Não fica mais complicado do que isso. Na verdade, é bastante simples e direto. Markdown é um formato de marcação simples e muito útil que permite escrever em texto simples. Jekyll cuida de interpretá-lo para o formato HTML, para que ele possa ser implementado. Knitr e servr podem analisar pedaços de código R escritos em um arquivo .Rmd e escrever um arquivo Markdown pronto para ser analisado pelo Jekyll. Isto assegura a reprodutibilidade dos resultados e análise estatística. Git pode controlarde forma segura a versão do processo, de modo que cada passo está bem documentado e pode ser facilmente rastreado. GitHub Pages serve os arquivos HTML criados pelo Jekyll em um site estático amigável. E a integração social é alcançada através de _plugins_.

Esse fluxo de trabalho simples não precisa de treinamento ou recursos especiais. Essencialmente, ele pode ser mantido na forma de uma operação de um homem só, com qualidade e adequação académica e impacto. Não há realmente nenhuma limitação para a sua utilização generalizada como uma ferramenta de pesquisa clínica. Em VALQUIRIA, já publiquei com sucesso dados de pacientes individuais desidentificados (incluindo [imagens médicas][mdcl]), [material licenciado][lcnsd] sem quaisquer violações legais, postagens em formato acadêmico e uma rotina para a investigação clínica aberta. Tudo isso foi feito em 2-3 meses (contando a curva de aprendizagem) por apenas uma pessoa com o mínimo de recursos.

Em conclusão, na era do compartilhamento de internet fácil e multi-canal, só há uma coisa que nos separa da pesquisa clínica aberta em tempo real e bem sucedida: a vontade de fazê-lo.

### Referências:

- [Daring Fireball: Markdown][mrkdwn]
- [VALKYRIE - De-identification - anonymization][de-id]
- [Mastering Markdown][gfm]
- [GitHub Pages - Websites for you and your projects][gthb-pgs]
- [Jekyll - Transform your plain text into static websites and blogs][jkyll]
- [Using Jekyll as a static site generator with GitHub Pages][gthb-pgs-jkyll]
- [The R Project for Statistical Computing][r]
- [knitr - Elegant, flexible and fast dynamic report generation with R][kntr]
- [servr - A simple HTTP server to serve files under a given directory based on the httpuv package][srvr]
- [YAML 1.2][yaml]
- [Jekyll - Front Matter][yml-frntmttr]
- [doi - Identifier inteoperability][d]
- [GitHub Inc.][gthb]
- [Git][gt]
- [jekyll-twitter-plugin - A Liquid tag plugin for Jekyll that renders Tweets from Twitter API][jkyll-twttr-plgn]
- [Disqus - Jekyll Installation Instrunctions][dsqs]
- [Making Jekyll multilingual][mltlngl]
- [Figshare][fgshr]
- [Open Science: Your guide to Open Access publishing and Open Science][opn-scnc]
- [VALKYRIE - Analysis of images][mdcl]
- [VALKYRIE - Standard treatment for brain tumor patients][lcnsd]


[mrkdwn]: https://daringfireball.net/projects/markdown/
[de-id]: {{site.github.url}}/de-identification/
[gfm]: https://guides.github.com/features/mastering-markdown/
[gthb-pgs]: https://pages.github.com
[jkyll]: https://jekyllrb.com
[gthb-pgs-jkyll]: https://help.github.com/articles/using-jekyll-as-a-static-site-generator-with-github-pages/
[r]: https://www.r-project.org
[kntr]: http://yihui.name/knitr/
[srvr]: https://github.com/yihui/servr
[yaml]: http://yaml.org
[yml-frntmttr]: https://jekyllrb.com/docs/frontmatter/
[d]: https://www.doi.org/factsheets/Identifier_Interoper.html
[gthb]:https://github.com
[gt]: https://git-scm.com
[jkyll-twttr-plgn]: https://github.com/rob-murray/jekyll-twitter-plugin
[dsqs]: https://help.disqus.com/customer/portal/articles/472138-jekyll-installation-instructions
[mltlngl]: https://www.sylvaindurand.org/making-jekyll-multilingual/
[fgshr]: http://www.figshare.com
[opn-scnc]: http://openscience.com
[mdcl]: {{site.github.url}}/image-analysis/
[lcnsd]: {{site.github.url}}/standard-treatment/
