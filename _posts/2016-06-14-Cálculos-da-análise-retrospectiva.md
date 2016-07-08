---
layout: post
comments: true
title:  "Cálculos da análise retrospectiva"
date:   2016-06-14 16:03:45 -0300
categories: metodologia
ref: retro
lang: pt
permalink: /retrospectiva/
---

## Curva de sobrevida da análise retrospectiva:

Os cálculos mostrados aqui usam o banco de dados de pacientes diagnosticados com DIPG entre 2000-2013, atualizados até 2014. O follow-up dos pacientes neste banco de dados é um pouco mais longo que nos dados originalmente usados para os cálculos do projeto e, portanto, terão algumas diferenças numéricas. Esta postagem ilustra como usar os dados obtidos de uma pesquisa clínica de forma transparente e totalmente reprodutível aos leitores. Incluindo tanto os dados de pacientes individuais (sem identificá-los) como o _script_ usado para realizar a análise dos dados, este é um exemplo das possibilidades do modelo de _open lab notebook_ e do paradigma de _open science_. Quando os dados do ensaio prospectivo forem coletados, serão igualmente publicados da mesma forma transparente, ficando permanentemente disponíveis para análise e crítica pelos interessados. Discuti a inspiração para esta abordagem nesta [postagem][jekyll-migrando] em outro blog.

Esta postagem usa o pacote [_knitr_][knitr] para calcular os resultados ao mesmo tempo em que compila a página em html com [_jekyll_][jekyll].
Utilizei, como guia, o excelente exemplo de [_yihui_][yihui] Para formatar tabelas usando mais do que o disponível no knitr, usei o pacote [pander][pander], como mostrado muito bem [aqui][pander-knitr]. Apenas observei o cuidado de passar a opção ```type = 'rmarkdown' ``` para o pander.


```r
require(pander)  
require(knitr)
require(RCurl)
require(survival)
dipg<-read.csv(text = getURL("https://raw.githubusercontent.com/fhcflx/valkyrie/gh-pages/_data/dipg.csv"))
attach(dipg)  
fit1 = survfit(Surv(os,status)~1)  
fit2 = survfit(Surv(os,ifelse(status<1,1,0))~1)  
fit3 = survfit(Surv(os,status)~ifelse(chemo<10,0,1))  
```


```r
plot(fit1,xlab="Meses")
```

![Sobrevida de pacientes com DIPG]({{ site.github.url }}/figure/source/2016-06-14-Cálculos-da-análise-retrospectiva/Sobrevida-1.png)

Grupo de pacientes com diagnóstico de DIPG tratados em nosso serviço, entre 2000 e 2013. O gráfico mostra a estimativa de probabilidade de sobrevida, calculada pelo método de Kaplan-Meier, usando a linguagem de programação R, pacote *survival*. O pacote *RCurl* foi adicionalmente utilizado para capturar os dados a partir do arquivo [.csv]({{ site.github.url }}/_data/dipg.csv) armazenado no repositório do github. O gráfico mostra também o intervalo de confiança 95%.
Este é o resumo da variável de sobrevida, além da sobrevida em 12 meses:


|  records  |  n.max  |  n.start  |  events  |  median  |  0.95LCL  |  0.95UCL  |
|:---------:|:-------:|:---------:|:--------:|:--------:|:---------:|:---------:|
|    56     |   56    |    56     |    42    |   9.5    |    7.3    |   13.8    |


```
## Call: survfit(formula = Surv(os, status) ~ 1)
##
##  time n.risk n.event survival std.err lower 95% CI upper 95% CI
##    12     17      30    0.395  0.0705        0.279        0.561
```

Mostrando uma mediana de sobrevida de 9.5 meses e sobrevida em 12 meses de 39.5 %.

Este é o resumo do tempo de _follow-up_:


|  records  |  n.max  |  n.start  |  events  |  median  |  0.95LCL  |  0.95UCL  |
|:---------:|:-------:|:---------:|:--------:|:--------:|:---------:|:---------:|
|    56     |   56    |    56     |    14    |    25    |   15.8    |    NA     |

Mostrando uma mediana de follow-up de 25 meses.

Aqui, o gráfico comparativo entre os pacientes que fizeram QT segundo um esquema HIT e os outros pacientes:


```r
plot(fit3,xlab="Meses")
```

![Sobrevida de pacientes com DIPG, divididos por tratamento]({{ site.github.url }}/figure/source/2016-06-14-Cálculos-da-análise-retrospectiva/Sobrevida2-1.png)

E o resumo da sobrevida nos 2 grupos, com sobrevida aos 12 meses:

|              &nbsp;              |  records  |  n.max  |  n.start  |  events  |  median  |  0.95LCL  |  0.95UCL  |
|:--------------------------------:|:---------:|:-------:|:---------:|:--------:|:--------:|:---------:|:---------:|
|  **ifelse(chemo < 10, 0, 1)=0**  |    44     |   44    |    44     |    41    |    8     |    6.5    |   11.9    |
|  **ifelse(chemo < 10, 0, 1)=1**  |    12     |   12    |    12     |    1     |    NA    |    NA     |    NA     |

```
## Call: survfit(formula = Surv(os, status) ~ ifelse(chemo < 10, 0, 1))
##
##                 ifelse(chemo < 10, 0, 1)=0
##         time       n.risk      n.event     survival      std.err
##      12.0000      13.0000      29.0000       0.3234       0.0719
## lower 95% CI upper 95% CI
##       0.2093       0.4999
##
##                 ifelse(chemo < 10, 0, 1)=1
##         time       n.risk      n.event     survival      std.err
##       12.000        4.000        1.000        0.875        0.117
## lower 95% CI upper 95% CI
##        0.673        1.000
```

Mostrando uma sobrevida aos 12 meses de 87.5 % para o grupo tratado com protocolo _as per_ HIT (n = 12 ) e de 32.3 % para os demais (n = 44 ).

Comparando os dois grupos com um teste não paramétrico que utiliza o estimador de Kaplan-Meier, o teste de log-rank, ou de Mantel-Haenszel (vide documentação do pacote [_survival_][survival]).


```
## Error in Surv(surv, status): objeto 'surv' não encontrado
```

```
## Error in if (tail(stdout, 1) == "") {: argumento tem comprimento zero
```

Comparando os dois grupos com um teste semiparamétrico, o modelo de riscos proporcionais de Cox (vide documentação do pacote [_survival_][survival]).


```
## Error in Surv(surv, status): objeto 'surv' não encontrado
```

```
## Error in if (tail(stdout, 1) == "") {: argumento tem comprimento zero
```

```
## Error in Surv(surv, status): objeto 'surv' não encontrado
```

Este resultado indica que existe a possibilidade de haver alguma diferença de sobrevida quando os pacientes recebem ácido valpróico juntamente com o tratamento.

``` Francisco H. C. Félix (Cancerologista Pediátrico, idealizador do projeto)```

### Referências:

- [Jekyll][jekyll]
- [Jekyll, Migrando meu blog para Github Pages usando Jekyll][jekyll-migrando]
- [Knitr, Elegant, flexible and fast dynamic report generation with R][knitr]
- [Knitr, Github][yihui]
- [pander: An R Pandoc Writer][pander]
- [pander, Using pander with kniter][pander-knitr]
- [Package 'survival'][survival]

[jekyll]: https://jekyllrb.com
[jekyll-migrando]: http://fhcflx.github.io/pharmakon/jekyll/update/2016/05/01/Migrando-meu-blog-para-Github-Pages-usando-Jekyll.html
[knitr]: http://yihui.name/knitr/
[yihui]: https://github.com/yihui/knitr
[pander]: http://rapporter.github.io/pander/
[pander-knitr]: http://rapporter.github.io/pander/knitr.html
[survival]: https://cran.r-project.org/web/packages/survival/survival.pdf
