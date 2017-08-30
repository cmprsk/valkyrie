---
layout: post
comments: true
title:  "Grupo comparativo de um ensaio clínico brasileiro"
date:   2016-06-16 16:03:45 -0300
categories: metodologia
ref: previous
lang: pt
permalink: /estudo-anterior/
doi: 10.6084/m9.figshare.3749790
tags: pediatric cancer, brain tumors, diffuse intrinsic pontine glioma, clinical trial, historical control, project valkyrie
---

## Dados invididuais de pacientes:

Além do grupo controle histórico de nosso serviço, usaremos as informações publicadas em um estudo clínico brasileiro [publicado][broniscer] em 2000.




```r
plot(fit,xlab="Months")
```

![Survival of patients with DIPG in the Broniscer _et al_ trial](/figure/source/estudo-anterior/Sobrevida-1.png)
Grupo de pacientes com diagnóstico de DIPG (sintomas por menos de 6 meses, envolvimento de mais de 50% de um segmento da ponte ou dois ou mais segmentos) tratados com radioterapia (54 a 60 Gy) e tamoxifeno durante e após a RT (200mg/m<sup>2</sup>) no Hospital A.C. Camargo, em São Paulo. O gráfico mostra a estimativa de probabilidade de sobrevida, calculada pelo método de Kaplan-Meier, usando a linguagem de programação R, pacote *survival*. O pacote *RCurl* foi adicionalmente utilizado para capturar os dados a partir do arquivo .csv armazenado no repositório do github. O gráfico mostra também o intervalo de confiança 95%.

_Reprinted with permission. ©(2016) American Society of Clinical Oncology. All rights reserved. The authors, editors, and ASCO are not responsible for errors or omissions in the translation._


Este é o resumo da variável de sobrevida, além da sobrevida em 12 meses:


| records | n.max | n.start | events | median | 0.95LCL | 0.95UCL |
|:-------:|:-----:|:-------:|:------:|:------:|:-------:|:-------:|
|   29    |  29   |   29    |   21   | 10.36  |  8.557  |  17.21  |


```
## Call: survfit(formula = Surv(Survival..days./30.5, cens) ~ 1, data = bron)
## 
##  time n.risk n.event survival std.err lower 95% CI upper 95% CI
##    12      9      17    0.371  0.0952        0.224        0.613
```

Mostrando uma mediana de sobrevida de 10.4 meses e sobrevida em 12 meses de 37.1 %.

Este é o resumo do tempo de _follow-up_:


| records | n.max | n.start | events | median | 0.95LCL | 0.95UCL |
|:-------:|:-----:|:-------:|:------:|:------:|:-------:|:-------:|
|   29    |  29   |   29    |   8    | 21.87  |   16    |   NA    |

Mostrando uma mediana de follow-up de 21.9 meses.

Aqui, o gráfico comparativo entre os pacientes do grupo controle histórico de nosso serviço e os pacientes do ensaio de Broniscer _et al_:


```r
plot(fit2,xlab="Months",col=4)
lines(fit,col=2)
```

![Survival of patients with DIPG](/figure/source/estudo-anterior/Sobrevida2-1.png)

E o resumo da sobrevida nos 2 grupos, com sobrevida aos 12 meses:

| records | n.max | n.start | events | median | 0.95LCL | 0.95UCL |
|:-------:|:-----:|:-------:|:------:|:------:|:-------:|:-------:|
|   29    |  29   |   29    |   21   | 10.36  |  8.557  |  17.21  |



| records | n.max | n.start | events | median | 0.95LCL | 0.95UCL |
|:-------:|:-----:|:-------:|:------:|:------:|:-------:|:-------:|
|   31    |  31   |   31    |   29   |  11.4  |   8.1   |  15.6   |

```
## Call: survfit(formula = Surv(Survival..days./30.5, cens) ~ 1, data = bron)
## 
##  time n.risk n.event survival std.err lower 95% CI upper 95% CI
##    12      9      17    0.371  0.0952        0.224        0.613
```

```
## Call: survfit(formula = Surv(os, status) ~ 1, data = dipg, subset = (rt > 
##     4000 & chemo != 10))
## 
##  time n.risk n.event survival std.err lower 95% CI upper 95% CI
##    12     13      17    0.447    0.09        0.302        0.664
```

Mostrando uma sobrevida aos 12 meses de 37.1 % para  os pacientes do ensaio de Broniscer _et al_ (n = 29 ) e de 44.7 % para o grupo controle histórico de nosso serviço (n = 31 ).

A permissão para utilizar os dados da tabela principal do trabalho de [Broniscer _et al_][broniscer] foi-nos fornecida pela [ASCO][asco] em 2016. Estes dados estão protegidos por direitos autorais e não devem ser reutilizados sem a permissão do titular dos direitos.

### Referências:

- [Broniscer A, Leite CC, Lanchote VL, Machado TM, Cristófani LM. Radiation therapy and high-dose tamoxifen in the treatment of patients with diffuse brainstem gliomas: results of a Brazilian cooperative study. Brainstem Glioma Cooperative Group. J Clin Oncol. 2000 Mar;18(6):1246-53.][broniscer]
- [ASCO: American Society of Clinical Oncology][asco]

[broniscer]: http://jco.ascopubs.org/content/18/6/1246.long
[asco]: http://www.asco.org
