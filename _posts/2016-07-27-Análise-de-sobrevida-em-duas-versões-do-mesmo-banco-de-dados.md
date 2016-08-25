---
layout: post
comments: true
title:  "Análise de sobrevida em duas versões do mesmo banco de dados"
date:   2016-07-27 16:03:45 -0300
categories: metodologia
ref: survival
lang: pt
permalink: /analise-sobrevida/
doi: 10.6084/m9.figshare.3759075.v1
tags: pediatric cancer, brain tumors, diffuse intrinsic pontine glioma, clinical trial, survival analysis, valproic acid
---



### Introdução:

Tumores pontinos intrínsecos difusos (_diffuse intrinsic pontine gliomas_, DIPG) são os tumores cerebrais de maior mortalidade na faixa etária de crianças e adolescentes (0-18 anos). Crianças com mediana de idade de 7 anos são as mais acometidas, sem diferença de [gênero][rational]. [1] Não existe tratamento curativo eficaz. Em sua maioria, são gliomas da região ventral da ponte cujo padrão de crescimento principal é infiltrativo, acometendo a maior parte ou virtualmente todo o diâmetro seccional da ponte. Via de regra, não forma uma massa tumoral captante de contraste e não tem limites precisos na [imagem por ressonância magnética][imagem]. [2]

Nosso grupo de pesquisa estuda ativamente esta doença. As informações que temos sobre pacientes com DIPG vêm da base de dados que estamos montando desde 2009. Esta base de dados, atualmente, é totalmente digital e baseada num servidor na nuvem. Várias versões dela já existiram, mais ou menos bem documentadas ao longo do tempo. Duas versões diferentes, em momentos diferentes, deram origem aos dois conjuntos de dados publicados neste projeto. São como dois instantâneos diferentes, cada um mostrando o aspecto de parte da base de dados num momento específico. Esta postagem tem por objetivo a comparação destes dois instantâneos através da análise de sobrevida. Ou seja, faremos a mesma análise retrospectiva nas duas bases de dados diferentes.

A primeira versão tenta recapitular o momento exato do conjunto de dados quando o projeto VALQUIRIA foi escrito, em 2014. Infelizmente, essa versão exata do banco de dados não foi salva, apenas uma versão próxima. Então, utilizei a versão que havia sido armazenada em 2014, fazendo uma única modificação (inclusão do paciente 56). Os dados foram desidentificados como já descrevi [anteriormente][historico] [3] e a base de dados foi salva num arquivo [.csv][csv] [4] armazenado no repositório do projeto. O arquivo inclui todos os pacientes com diagnóstico de DIPG entre 2000-2013, independente do tratamento realizado.

A segunda versão é da base de dados de 2015 (os instantâneos são sempre gravados no fim do ano) e inclui pacientes diagnosticados com tumores de tronco cerebral entre 2000-2015, difusos ou focais, tratados ou não. Igualmente, apenas uma mudança foi realizada (troca do rótulo de **topografia** do paciente 64 de _ponte focal_ para _DIPG_). Ela também está armazenada no mesmo servidor em formato [.csv][csv]. [4]

A análise de sobrevida que foi usada para [desenhar][design] o estudo VALQUIRIA [5] foi uma análise retrospectiva na qual comparamos o desfecho (sobrevida global) de pacientes com DIPG diagnosticados entre 2000-2013 tratados com pelo menos 40 Gy de RT e dois tipos diferentes de quimioterapia (QT): tratados de acordo com um protocolo [HIT do GPOH][dipg-poster] [6] _versus_ tratados com outros protocolos de QT (ou sem QT). É essa análise que será repetida nas duas versões da base de dados.

### Metodologia:

As bases de dados estão armazenadas num repositório do Github, publicamente acessíveis. Elas não contem elementos que possam identificar os pacientes, muito embora mostrem dados individuais dos pacientes (foram [desidentificadas][deid] [7]). Suas informações foram adquiridas através do pacote [_RCurl_][curl] [8] da linguagem de programação R [9]. Utilizando o pacote [_knitr_][knitr] [10], um script escrito na linguagem R foi executado para realizar a análise de sobrevida usando o pacote [_survival_][survival] [11] e as informações capturadas a partir dos arquivos das bases de dados. Os cálculos realizados foram: computação de estimativa de curva de sobrevida com o método de Kaplan-Meier (KM) [12], teste de log-rank ou de Mantel-Haenszel para comparação entre duas curvas de sobrevida obtidas pelo método de KM [13], e cálculo do tempo de seguimento (calculado a partir dos sobreviventes, quando os houvesse). Apenas as informações dos pacientes portadores de DIPG e que receberasm pelo menos 40 Gy de radioterapia (RT) foram utilizadas, em ambas as versões da base de dados. As comparações realizadas foram feitas entre pacientes tratados de acordo com protocolos do HIT [6] e pacientes tratados apenas com RT ou também de acordo com protocolos do COG [14]. O script foi gravado num arquivo [.Rmd][rmd] [15] armazenado no Github, o qual foi, a um só tempo, analisado e implementado, dando origem a uma versão escrita em formato [Markdown][markdown] [16], utilizando o pacote [_servr_][servr] [17] e o programa [Jekyll 3.2.1][jekyll] [18]. O arquivo .md foi salvo num repositório local e, em seguida, comitado (sincronizado) para o GitHub Pages, ficando à disposição na internet. Todos os arquivos podem ser publicamente acessados. O texto atual constitui, então, informação científica completamente reprodutível por terceiros.

### Resultados e discussão:

Os dados tabulados (tabelas 1 e 2) mostram apenas os pacientes com DIPG tratados com RT de ambas as versões da base de dados. A diferença entre as duas versões é um número maior de casos na segunda versão (6 casos a mais, principalmente no grupo tratado com esquemas do COG) e maior tempo de seguimento dos casos (maior impacto nos casos tratados com esquemas do HIT, pois eram casos mais novos). Embora o tempo de seguimento tenda a não afetar o estimador de Kaplan-Meier, nesse caso ocorreu um impacto diferencial importante em apenas um dos grupos comparados. Isso modificou sobremaneira os resultados da análise de sobrevida, como veremos a seguir.

**Tabela 1: pacientes com diagnóstico de DIPG, diagnosticados entre 2000-2013, tratados com RT (dose total mínima de 40 Gy)**

---
*1-A.Tratados com QT as per protocolos do COG, ou sem QT*

|   | sex|  age|   os| status| ecog| chemo| tt.chemo| cycles1|   rt| tt.rt|  ttp| os2| vpa|
|:--|---:|----:|----:|------:|----:|-----:|--------:|-------:|----:|-----:|----:|---:|---:|
|4  |   1| 11.6|  9.0|      1|   NA|     1|      259|       3| 5400|   153|  6.9|  63|   0|
|5  |   0|  5.9|  8.1|      1|   NA|     1|      226|       4| 5040|    16|  6.2|  56|   0|
|6  |   1|  9.9|  7.5|      1|   NA|     1|       NA|      NA| 5400|    NA|  2.5| 150|   0|
|7  |   1|  7.7| 23.3|      1|   NA|     1|       15|      28| 5400|   389| 10.5| 389|   0|
|9  |   0|  6.1|  7.3|      1|   NA|     1|      216|       2| 5400|    35|  6.8|  17|   0|
|10 |   1|  6.7|  3.9|      1|   NA|     0|       NA|      NA| 5400|    NA|  2.2|  52|   0|
|13 |   1|  2.8|  4.9|      1|    3|     1|      122|       4| 5400|    NA|  4.0|  27|   1|
|14 |   0| 11.0| 30.1|      1|    1|     1|       65|      50| 5400|   141| 26.3| 116|   1|
|15 |   0|  8.5|  5.3|      1|    2|     1|       24|      14| 5400|    32|  5.1|   8|   1|
|16 |   0| 13.4| 10.1|      1|    1|     1|       NA|      NA| 5400|    NA|  8.2|  58|   1|
|17 |   0| 12.8| 46.2|      1|    1|     1|       11|      NA| 5400|    NA| 21.5| 753|   1|
|19 |   0|  5.1|  7.3|      1|    3|     1|       24|      16| 5040|    88|  6.0|  39|   1|
|21 |   1|  3.3| 13.4|      1|    1|     1|       47|      26| 5400|    98| 10.6|  84|   1|
|22 |   1|  7.4| 17.4|      1|    3|     1|        0|      43| 5400|    61| 15.2|  69|   1|
|23 |   1|  8.4| 14.0|      1|    3|     1|        4|      22| 5400|    11| 11.6|  74|   1|
|24 |   1|  7.5| 16.2|      1|    2|     1|       45|      45| 5400|    86| 12.0| 128|   1|
|27 |   1|  6.7|  9.5|      1|    4|     1|       NA|      NA| 5400|    NA|  9.5|   0|   1|
|28 |   1| 15.8| 11.9|      1|    1|     1|       NA|      NA| 5400|    NA|  9.1|  87|   1|
|30 |   1|  8.6| 15.6|      1|    3|     1|       15|      27| 5400|   122|  7.0| 263|   1|
|31 |   0|  8.6| 13.8|      1|    3|     1|       22|       8| 5400|    28|  7.0| 207|   1|
|32 |   0|  5.9|  4.8|      1|    4|     1|       NA|      NA| 5400|    NA|   NA|  NA|   1|
|33 |   0|  3.6| 12.5|      1|    1|     1|       18|      NA| 5400|    31|  9.5|  90|   1|
|34 |   0|  6.2| 11.4|      1|    2|     1|       10|      NA| 5400|    18|  7.8| 110|   1|
|36 |   1| 14.1|  3.8|      1|    3|     1|       NA|      NA| 5400|    NA|  2.3|  46|   1|
|38 |   1| 12.0| 21.0|      1|    2|     1|       22|      NA| 5400|    29| 15.1| 180|   1|
|39 |   0|  6.5|  5.0|      1|    1|     0|       NA|      NA| 5400|    NA|   NA|  NA|   1|
|40 |   1|  3.7| 16.9|      1|    1|     9|       35|      NA| 5400|    26| 10.3| 199|   1|
|42 |   1|  5.2| 13.8|      0|    0|     1|        7|      NA| 5400|   220|  6.7| 216|   1|
|46 |   1|  8.8| 10.2|      1|    1|     9|       78|       7| 5400|    27|  7.9|  71|   1|
|47 |   1|  6.2|  8.0|      1|    1|     9|       98|      NA| 5400|    20|  4.8|  96|   0|
|49 |   1|  4.3| 10.4|      0|    3|     9|      102|      NA| 5400|    40|  9.3|  35|   1|

---
<br>
*1-B.Tratados com QT as per protocolos do HIT*

|   | sex| age|   os| status| ecog| chemo| tt.chemo| cycles1|   rt| tt.rt|  ttp| os2| vpa|
|:--|---:|---:|----:|------:|----:|-----:|--------:|-------:|----:|-----:|----:|---:|---:|
|43 |   1| 6.9| 15.8|      0|    1|    10|        5|      NA| 5400|    32|  5.0| 330|   1|
|44 |   1| 5.7|  5.2|      1|    1|    10|       34|      NA| 5400|    30|   NA|  NA|   1|
|45 |   1| 8.3| 12.9|      0|    1|    10|       22|      NA| 5400|    28| 12.1|  26|   1|
|48 |   0| 7.3| 11.4|      0|    3|    10|      235|      NA| 5400|   226|   NA|  NA|   1|
|50 |   0| 3.5|  6.7|      0|    2|    10|      100|      NA| 5400|    19|  6.7|   2|   1|
|51 |   1| 3.7|  5.6|      0|    2|    10|       68|      NA| 5400|    22|  5.5|   2|   0|
|52 |   0| 6.0|  4.0|      0|    4|    10|       NA|      NA| 5400|    76|   NA|  NA|   1|
|53 |   0| 9.4|  3.3|      0|    3|    10|       NA|      NA| 5400|    52|   NA|  NA|   1|
|54 |   1| 5.7|  1.4|      0|    3|    10|       19|      NA| 5400|    NA|   NA|  NA|   1|
|55 |   0| 5.7|  0.6|      0|    1|    10|       23|      NA| 5400|    NA|   NA|  NA|   1|
|56 |   1| 4.0| 25.0|      0|    0|    10|       71|      NA| 5400|    36|   NA|  NA|   0|

---
---
<br>

**Tabela 2: pacientes com diagnóstico de DIPG, diagnosticados entre 2000-2015, tratados com RT (dose total mínima de 40 Gy)**

---
*2-A.Tratados com QT as per protocolos do COG, ou sem QT*

|   | sex|  age|   os| status| ecog| lpps| chemo| tt.chemo| cycles| delta.chemo|   rt| ttp| ttp2| vpa|
|:--|---:|----:|----:|------:|----:|----:|-----:|--------:|------:|-----------:|----:|---:|----:|---:|
|8  |   1| 11.6|  9.0|      1|   NA|   NA|     1|      259|      3|          14| 5400| 211|   NA|   0|
|9  |   0|  5.9|  8.1|      1|    0|    0|     1|      226|     NA|          15| 5040|  NA|   NA|   0|
|10 |   1|  9.9|  7.4|      1|   NA|   NA|     1|       NA|     NA|           0| 5400|  77|   NA|   0|
|11 |   1|  7.7| 23.2|      1|   NA|   NA|     1|       15|     28|         297| 5400| 319|   NA|   0|
|14 |   0|  6.1|  7.3|      1|   NA|   NA|     1|      216|      2|           7| 5400| 206|   NA|   0|
|16 |   1|  6.7|  3.9|      1|   NA|   NA|     0|       NA|     NA|          NA| 5400|  68|   NA|   0|
|22 |   1|  2.8|  4.9|      1|    3|   NA|     1|      122|      4|          28| 5400| 122|   NA|   1|
|24 |   0| 11.0| 30.1|      1|    1|   NA|     1|       65|     50|         531| 5400| 801|   NA|   1|
|26 |   0|  8.5|  5.3|      1|    2|   NA|     1|       24|     14|         128| 5400| 154|   NA|   1|
|27 |   0| 13.4| 10.1|      1|    1|   NA|     1|       NA|     NA|          NA| 5400| 249|   NA|   1|
|29 |   0| 12.8| 46.1|      1|    0|    0|     1|       11|     NA|         962| 5400| 653|  429|   1|
|33 |   0|  5.1|  7.3|      1|    0|    0|     1|       24|     NA|         159| 5040| 184|   NA|   1|
|35 |   1|  3.3| 13.4|      1|    0|    0|     1|       47|     NA|         277| 5400| 338|   NA|   1|
|36 |   1|  7.4| 17.4|      1|    3|   40|     1|        0|     43|         500| 5400| 462|   NA|   1|
|37 |   1|  8.4| 14.0|      1|    3|   NA|     1|        4|     22|         336| 5400| 353|   NA|   1|
|39 |   1|  7.6| 15.1|      1|    0|    0|     1|       14|     NA|         328| 5400|  NA|   NA|   1|
|43 |   1|  6.7|  9.4|      1|    4|   NA|     1|       NA|     NA|          NA| 5400| 288|   NA|   1|
|44 |   1| 15.8| 11.9|      1|    1|   NA|     1|       NA|     NA|          NA| 5400| 276|   NA|   1|
|46 |   1|  8.6| 15.6|      1|    3|   NA|     1|       15|     27|         197| 5400| 212|  163|   1|
|49 |   0|  8.6| 13.7|      1|    3|   NA|     1|       22|      8|         111| 5400| 212|   NA|   1|
|50 |   0|  5.9|  4.8|      1|    4|   NA|     1|       NA|     NA|          NA| 5400|  NA|   NA|   1|
|51 |   0|  3.6| 12.4|      1|    1|   NA|     1|       18|     NA|          NA| 5400| 289|   NA|   1|
|52 |   0|  6.2| 11.4|      1|    2|   60|     1|       12|     NA|         234| 5400| 239|   78|   1|
|55 |   1| 14.1|  3.8|      1|    3|   NA|     1|       NA|     NA|          NA| 5400|  71|   NA|   1|
|58 |   1| 12.0| 21.0|      1|    2|   60|     1|       22|     NA|         453| 5400| 460|  136|   1|
|59 |   0|  6.5|  5.0|      1|    1|   70|     0|       NA|     NA|          NA| 5400|  88|   NA|   1|
|60 |   1|  3.7| 16.8|      1|    1|   80|     9|       35|     NA|         287| 5400| 314|  160|   1|
|62 |   1|  5.2| 17.4|      1|    0|   90|     1|        7|     NA|         203| 5400| 204|  194|   1|
|67 |   1|  8.8| 10.2|      1|    1|   80|     9|       78|     NA|         195| 5400| 239|   NA|   1|
|68 |   1|  6.2|  8.0|      1|    1|    0|     9|       98|     NA|          63| 5400| 147|   NA|   0|
|70 |   1|  4.3| 24.8|      1|    3|   40|     9|      102|     NA|         357| 5400| 583|   NA|   1|
|81 |   0| 17.6| 14.2|      0|    0|  100|     9|       NA|     NA|          NA| 5400|  NA|   NA|   0|
|83 |   1|  3.5| 11.0|      0|    1|   90|     9|       47|     NA|          NA| 5400|  NA|   NA|   0|
|84 |   1| 11.0|  9.7|      0|    1|   70|     0|       NA|     NA|          NA| 5400|  NA|   NA|   0|
|86 |   0|  6.0|  6.8|      0|    3|   40|     0|       NA|     NA|          NA| 5400|  NA|   NA|   0|
|87 |   1|  8.5|  0.9|      0|    1|   80|     0|       NA|     NA|          NA| 5400|  NA|   NA|   0|

---
<br>
*2-B.Tratados com QT as per protocolos do HIT*

|   | sex| age|   os| status| ecog| lpps| chemo| tt.chemo| cycles| delta.chemo|   rt| ttp| vpa|
|:--|---:|---:|----:|------:|----:|----:|-----:|--------:|------:|-----------:|----:|---:|---:|
|48 |   1| 4.4| 12.1|      1|    3|   NA|    10|        1|     10|         113| 5400| 170|   1|
|63 |   1| 6.9| 20.6|      1|    1|   70|    10|        5|     NA|         147| 5400| 152|   1|
|64 |   1| 4.0| 25.0|      0|    0|  100|    10|       71|     NA|          NA| 5400|  NA|   1|
|66 |   1| 8.3| 15.7|      1|    1|   80|    10|       22|     NA|         342| 5400| 368|   1|
|69 |   0| 7.3| 15.4|      1|    3|   40|    10|      235|     NA|         182| 5400|  NA|   1|
|71 |   0| 3.5|  7.2|      1|    2|    0|    10|      100|     NA|          NA| 5400| 203|   1|
|72 |   1| 3.7| 12.4|      1|    2|   60|    10|       68|     NA|          NA| 5400| 168|   0|
|73 |   0| 6.0| 11.6|      1|    4|   20|    10|      150|     NA|          NA| 5400|  NA|   1|
|74 |   0| 9.4|  9.2|      1|    3|   40|    10|      122|     NA|          NA| 5400| 262|   1|
|76 |   1| 5.7| 16.5|      1|    3|   40|    10|       19|     NA|         275| 5400| 304|   1|
|77 |   0| 5.7|  8.8|      1|    1|   80|    10|       23|     NA|         199| 5400| 199|   1|
|79 |   0| 5.6| 15.2|      1|    1|   80|    10|       26|     NA|         226| 5400| 236|   0|

---
---
<br>

#### Análise de sobrevida:

Ambas as versões da base de dados mostram um grupo maior de pacientes com DIPG que foram tratados ou apenas com RT, ou também com esquemas de QT de acordo com protocolos do COG. Na segunda versão, este grupo tem 5 pacientes a mais (20%). Resumo da variável de sobrevida, além da sobrevida em 12 meses, ilustrando que essas variáveis praticamente não mudaram:

```Primeira versão do banco de dados - apenas RT/ RT+COG```

>
> |  records  |  n.max  |  n.start  |  events  |  median  |  0.95LCL  |  0.95UCL  |
> |:---------:|:-------:|:---------:|:--------:|:--------:|:---------:|:---------:|
> |    31     |   31    |    31     |    29    |   11.4   |    8.1    |   15.6    |


```
## Call: survfit(formula = Surv(os, status) ~ 1, data = dipg, subset = (rt >
##     4000 & chemo != 10))
##
##  time n.risk n.event survival std.err lower 95% CI upper 95% CI
##    12     13      17    0.447    0.09        0.302        0.664
```

```Segunda versão do banco de dados - apenas RT/ RT+COG```

>
> |  records  |  n.max  |  n.start  |  events  |  median  |  0.95LCL  |  0.95UCL  |
> |:---------:|:-------:|:---------:|:--------:|:--------:|:---------:|:---------:|
> |    36     |   36    |    36     |    31    |   11.9   |    9.4    |   16.8    |


```
## Call: survfit(formula = Surv(os, status) ~ 1, data = brainstem, subset = (topo ==
##     "DIPG" & rt > 4000 & chemo != 10))
##
##  time n.risk n.event survival std.err lower 95% CI upper 95% CI
##    12     15      17    0.493  0.0872        0.349        0.698
```

O tempo de seguimento (_follow-up_) também praticamente não se modificou.
Resumo do tempo de seguimento (obtido pelo método clássico de calcular o seguimento dos sobreviventes):

```Primeira versão do banco de dados - apenas RT/ RT+COG```

>
>   * 29 observations deleted due to missingness
>
> <!-- end of list -->
>
>
>
>
> |  records  |  n.max  |  n.start  |  events  |  median  |  0.95LCL  |  0.95UCL  |
> |:---------:|:-------:|:---------:|:--------:|:--------:|:---------:|:---------:|
> |     2     |    2    |     2     |    2     |   12.1   |   10.4    |    NA     |

```Segunda versão do banco de dados - apenas RT/ RT+COG```

>
>   * 31 observations deleted due to missingness
>
> <!-- end of list -->
>
>
>
>
> |  records  |  n.max  |  n.start  |  events  |  median  |  0.95LCL  |  0.95UCL  |
> |:---------:|:-------:|:---------:|:--------:|:--------:|:---------:|:---------:|
> |     5     |    5    |     5     |    5     |   9.7    |    6.8    |    NA     |

Como pode ser visto nas tabelas 1 e 2, uma quantidade considerável de pacientes deste grupo, em ambas as versões da base de dados, recebeu ácido valpróico (VPA) concomitante ao tratamento. Assim, a comparação entre os tipos diferentes de tratamento com QT ficou contaminado, pois também faz parte da hipótese do projeto que o tratamento com VPA talvez modifique a sobrevida. Para tentar reduzir este viés, foi necessário refazer os cálculos, levando em consideração apenas os pacientes que NÃO foram tratados com VPA.
Resumo da variável de sobrevida, além da sobrevida em 12 meses:

```Primeira versão do banco de dados - apenas RT/ RT+COG, sem VPA```

>
> |  records  |  n.max  |  n.start  |  events  |  median  |  0.95LCL  |  0.95UCL  |
> |:---------:|:-------:|:---------:|:--------:|:--------:|:---------:|:---------:|
> |     7     |    7    |     7     |    7     |    8     |    7.3    |    NA     |


```
## Call: survfit(formula = Surv(os, status) ~ 1, data = dipg, subset = (rt >
##     4000 & chemo != 10 & vpa == 0))
##
##  time n.risk n.event survival std.err lower 95% CI upper 95% CI
##    12      1       6    0.143   0.132       0.0233        0.877
```

```Segunda versão do banco de dados - apenas RT/ RT+COG, sem VPA```

>
> |  records  |  n.max  |  n.start  |  events  |  median  |  0.95LCL  |  0.95UCL  |
> |:---------:|:-------:|:---------:|:--------:|:--------:|:---------:|:---------:|
> |    12     |   12    |    12     |    7     |    9     |    7.4    |    NA     |


```
## Call: survfit(formula = Surv(os, status) ~ 1, data = brainstem, subset = (topo ==
##     "DIPG" & rt > 4000 & chemo != 10 & vpa == 0))
##
##  time n.risk n.event survival std.err lower 95% CI upper 95% CI
##    12      2       6    0.404   0.155         0.19        0.859
```

Tempo de seguimento:

```Primeira versão do banco de dados - apenas RT/ RT+COG, sem VPA```

>
> |  records  |  n.max  |  n.start  |  events  |  median  |  0.95LCL  |  0.95UCL  |
> |:---------:|:-------:|:---------:|:--------:|:--------:|:---------:|:---------:|
> |     7     |    7    |     7     |    7     |    8     |    7.3    |    NA     |

O tempo de seguimento da primeira versão da base de dados (pacientes tratados com esquemas diferentes dos HIT), excluindo os pacientes que receberam VPA, não é diferente da própria mediana de sobrevida, uma vez que todos os pacientes incluídos alcançaram o evento (óbito), ou seja, não existem sobreviventes neste subgrupo.

```Segunda versão do banco de dados - apenas RT/ RT+COG, sem VPA```

>
>   * 7 observations deleted due to missingness
>
> <!-- end of list -->
>
>
>
>
> |  records  |  n.max  |  n.start  |  events  |  median  |  0.95LCL  |  0.95UCL  |
> |:---------:|:-------:|:---------:|:--------:|:--------:|:---------:|:---------:|
> |     5     |    5    |     5     |    5     |   9.7    |    6.8    |    NA     |

Nas duas versões da base de dados, os grupos tratados com QT segundo protocolos HIT são menores. No entanto, ocorre uma diferença importante de tempo de seguimento entre as duas versões. Isso se reflete numa diferença também grande no número de pacientes censurados, o que implica, em última análise, numa mudança de desfechos e, logo, de resultado final.
Resumo da variável de sobrevida, além da sobrevida em 12 meses:

```Primeira versão do banco de dados - apenas RT+HIT```

>
> |  records  |  n.max  |  n.start  |  events  |  median  |  0.95LCL  |  0.95UCL  |
> |:---------:|:-------:|:---------:|:--------:|:--------:|:---------:|:---------:|
> |    11     |   11    |    11     |    1     |    NA    |    NA     |    NA     |


```
## Call: survfit(formula = Surv(os, status) ~ 1, data = dipg, subset = (rt >
##     4000 & chemo == 10))
##
##  time n.risk n.event survival std.err lower 95% CI upper 95% CI
##    12      3       1    0.857   0.132        0.633            1
```

```Segunda versão do banco de dados - apenas RT+HIT```

>
> |  records  |  n.max  |  n.start  |  events  |  median  |  0.95LCL  |  0.95UCL  |
> |:---------:|:-------:|:---------:|:--------:|:--------:|:---------:|:---------:|
> |    12     |   12    |    12     |    11    |   13.8   |   11.6    |    NA     |


```
## Call: survfit(formula = Surv(os, status) ~ 1, data = brainstem, subset = (topo ==
##     "DIPG" & rt > 4000 & chemo == 10))
##
##  time n.risk n.event survival std.err lower 95% CI upper 95% CI
##    12      8       4    0.667   0.136        0.447        0.995
```

Diferença do tempo de seguimento (calculado na primeira versão do banco de dados pela função KM inversa, pois quase todos os pacientes ainda estavam vivos):

```Primeira versão do banco de dados - apenas RT+HIT```

>
> |  records  |  n.max  |  n.start  |  events  |  median  |  0.95LCL  |  0.95UCL  |
> |:---------:|:-------:|:---------:|:--------:|:--------:|:---------:|:---------:|
> |    11     |   11    |    11     |    10    |   6.7    |     4     |    NA     |

```Segunda versão do banco de dados - apenas RT+HIT```

>
> |  records  |  n.max  |  n.start  |  events  |  median  |  0.95LCL  |  0.95UCL  |
> |:---------:|:-------:|:---------:|:--------:|:--------:|:---------:|:---------:|
> |    12     |   12    |    12     |    11    |   13.8   |   11.6    |    NA     |

Neste ponto, já é possível concluir que, apesar do tempo de seguimento usualmente não interferir sobremaneira na estimativa do método de Kaplan-Meier [19], o que realmente ocorreu foi uma grande mudança nos desfechos. Enquanto que, na primeira versão da base de dados, quase todos os pacientes tratados de acordo com esquema HIT foram censurados e quase nenhum experimentara o evento estudado (óbito), o contrário ocorreu na segunda versão da base de dados. Nessa segunda versão, com um tempo de seguimento pouco mais de 6 meses maior, a grande parte dos pacientes havia experimentado o evento e quase não haviam pacientes censurados. Isso ilustra a importância de assegurar que o tempo de seguimento dos pacientes seja pelo menos clinicamente significante, compatível com o tempo de evolução natural da doença estudada [20].

Como um bônus final, a partir da segunda versão da base de dados é possível realizar uma nova análise de sobrevida retrospectiva, dessa vez comparando pacientes tratados com QT de acordo com protocolos HIT (associado com VPA), com pacientes tratados com outros esquemas (ou apenas RT) e, rigorosamente, SEM o uso de VPA. Os resultados são os que seguem:

```Primeira versão do banco de dados - RT/RT+COG versus RT+HIT```

>
> |              &nbsp;               |  N  |  Observed  |  Expected  |  (O-E)^2/E  |  (O-E)^2/V  |
> |:---------------------------------:|:---:|:----------:|:----------:|:-----------:|:-----------:|
> |  **ifelse(chemo == 10, 0, 1)=0**  | 11  |     1      |   5.004    |    3.204    |    3.931    |
> |  **ifelse(chemo == 10, 0, 1)=1**  | 31  |     29     |     25     |   0.6413    |    3.931    |
>
> Table: Call: Surv(os, status) ~ ifelse(chemo == 10, 0, 1) Chisq = 3.931154
> on 1 degrees of freedom, p = 0.047399

```Segunda versão do banco de dados - RT/RT+COG versus RT+HIT```

>
> |              &nbsp;               |  N  |  Observed  |  Expected  |  (O-E)^2/E  |  (O-E)^2/V  |
> |:---------------------------------:|:---:|:----------:|:----------:|:-----------:|:-----------:|
> |  **ifelse(chemo == 10, 0, 1)=0**  | 12  |     11     |   11.83    |    0.058    |   0.08403   |
> |  **ifelse(chemo == 10, 0, 1)=1**  | 36  |     31     |   30.17    |   0.02274   |   0.08403   |
>
> Table: Call: Surv(os, status) ~ ifelse(chemo == 10, 0, 1) Chisq = 0.084035
> on 1 degrees of freedom, p = 0.771903

```Segunda versão do banco de dados - RT/RT+COG (sem VPA) versus RT+HIT```

>
> |  &nbsp;   |  N  |  Observed  |  Expected  |  (O-E)^2/E  |  (O-E)^2/V  |
> |:---------:|:---:|:----------:|:----------:|:-----------:|:-----------:|
> |  **g=1**  | 12  |     7      |   5.648    |   0.3236    |   0.4999    |
> |  **g=2**  | 12  |     11     |   12.35    |    0.148    |   0.4999    |
>
> Table: Call: Surv(os, status) ~ g Chisq = 0.499920
> on 1 degrees of freedom, p = 0.479535

Um gráfico construído a partir da comparação dos grupos g1 e g2, cada um com 12 pacientes:

![Sobrevida de pacientes com DIPG]({{site.github.url}}/figure/source/2016-07-27-Análise-de-sobrevida-em-duas-versões-do-mesmo-banco-de-dados/Sobrevida-1.png?raw=True)

```
## Call: survfit(formula = Surv(os, status) ~ g, data = brainstem, subset = (topo ==
##     "DIPG" & rt > 4000))
##
##    24 observations deleted due to missingness
##      n events median 0.95LCL 0.95UCL
## g=1 12      7    9.0     7.4      NA
## g=2 12     11   13.8    11.6      NA
```
É bem evidente que não parece existir diferença entre as curvas. Isso indicaria que o tratamento proposto no nosso projeto de ensaio clínico não correlaciona-se com modificação de sobrevida, em especial que o uso de ácido valpróico não parece ter efeito? Guardadas as limitações da análise retrospectiva e o número limitado de pacientes nesta comparação, esta é uma conclusão possível.

### Referências:

1. Felix FHC. Diagnostic criteria for DIPG (2016). Figshare, doi:[10.6084/m9.figshare.3489941.v1][imagem]
2. Felix FHC. A little about the trial's rational (2016). Figshare, doi:[10.6084/m9.figshare.3489917.v1][rational]
3. Felix FHC. Historical control group (2016). Figshare, doi:[10.6084/m9.figshare.3489956.v2][historico]
4. Felix FHC. Banco de dados de pacientes portadores de tumor pontino intrínseco difuso (2016). Repositório do Github, disponível em: [https://github.com/fhcflx/valkyrie/tree/master/data][csv]
5. Felix FHC. Estimate of the number of patients (2016). Figshare, doi:[10.6084/m9.figshare.3489947.v1][design]
6. Felix F and Fontenele J. Chemoradiotherapy with etoposide, cisplatin, and ifosfamide associated with valproic acid for patients with diffuse intrinsic pontine glioma [v1; not peer reviewed]. F1000Research 2015, 4:1301 (poster) [Portuguese] (doi:[10.7490/f1000research.1111018.1][dipg-poster])
7. Felix FHC. De-identification - anonymization (2016). Figshare, doi:[10.6084/m9.figshare.3545471.v1][deid]
8. Duncan Temple Lang, the CRAN team (2016). RCurl: General Network (HTTP/FTP/...) Client Interface for R, [https://CRAN.R-project.org/package=RCurl][curl]
9. R Core Team. R: A Language and Environment for Statistical Computing, 2016, [https://www.R-project.org/][r]
10. Yihui Xie (2016). knitr: A General-Purpose Package for Dynamic Report Generation in R, [http://yihui.name/knitr/][knitr]
11. Terry M Therneau (2015). A Package for Survival Analysis in S, [http://CRAN.R-project.org/package=survival][survival]
12. Kablfleisch, J. D. and Prentice, R. L. (1980). The Statistical Analysis of Failure Time Data. New York:Wiley.
13. Harrington, D. P. and Fleming, T. R. (1982). A class of rank test procedures for censored survival data. Biometrika 69, 553-566.
14. Felix FH, de Araujo OL, da Trindade KM, Trompieri NM, Fontenele JB (2014).
Retrospective evaluation of the outcomes of children with diffuse intrinsic
pontine glioma treated with radiochemotherapy and valproic acid in a single
center. J Neurooncol. 116(2):261-6. doi:[10.1007/s11060-013-1280-6](http://dx.doi.org/10.1007/s11060-013-1280-6).
15. Felix FHC (2016). Análise de sobrevida em duas versões do mesmo banco de dados. Arquivo .Rmd armazenado em repositório do GitHub. [https://github.com/fhcflx/valkyrie/blob/gh-pages/_source/2016-07-27-Análise-de-sobrevida-em-duas-versões-do-mesmo-banco-de-dados.Rmd][rmd]
16. John Gruber (2004). [Markdown][markdown], © 2002–2016 The Daring Fireball Company LLC.
17. Yihui Xie (2016). servr: A Simple HTTP Server to Serve Static Files or Dynamic Documents, [https://CRAN.R-project.org/package=servr][servr]
18. GitHub (2016). [Jekyll, a blog-aware, static site generator in Ruby.][jekyll] @ MIT License.
19. Shuster J. (1991). Median follow up in clinical trials. [J. Clin. Oncol.][shuster], 9, 191-192.
20. Altman DG, De Stavola BL, Love SB, Stepniewska KA (1995). Review of survival analyses published in cancer journals. [Br J Cancer][altman] 72:511–518

[imagem]: http://dx.doi.org/10.6084/m9.figshare.3489941.v1
[rational]: http://dx.doi.org/10.6084/m9.figshare.3489917.v1
[csv]: https://github.com/fhcflx/valkyrie/tree/master/data/
[historico]: http://dx.doi.org/10.6084/m9.figshare.3489956.v2
[design]: http://dx.doi.org/10.6084/m9.figshare.3489947.v1
[deid]: http://dx.doi.org/10.6084/m9.figshare.3545471.v1
[curl]: https://CRAN.R-project.org/package=RCurl
[r]: https://www.R-project.org/
[knitr]: http://yihui.name/knitr/
[survival]: http://CRAN.R-project.org/package=survival
[dipg-poster]: http://dx.doi.org/10.7490/f1000research.1111018.1
[servr]: https://CRAN.R-project.org/package=servr
[jekyll]: https://jekyllrb.com
[markdown]: https://daringfireball.net/projects/markdown/
[rmd]: https://github.com/fhcflx/valkyrie/blob/gh-pages/_source/2016-07-27-Análise-de-sobrevida-em-duas-versões-do-mesmo-banco-de-dados.Rmd
[shuster]: http://jco.ascopubs.org/content/9/1/191.long
[altman]: http://www.ncbi.nlm.nih.gov/pmc/articles/PMC2033978/pdf/brjcancer00042-0259.pdf
