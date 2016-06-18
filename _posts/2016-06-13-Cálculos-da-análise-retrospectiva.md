---
layout: post
title:  "Cálculos da análise retrospectiva"
date:   2016-06-13 16:03:45 -0300
categories: metodologia
---

## Curva de sobrevida da análise retrospectiva:

Os cálculos mostrados aqui usam o banco de dados de pacientes diagnosticados com DIPG entre 2000-2013, atualizados até 2014. O follow-up dos pacientes neste banco de dados é um pouco mais longo que nos dados originalmente usados para os cálculos do projeto e, portanto, terão algumas diferenças numéricas. Esta postagem ilustra como usar os dados obtidos de uma pesquisa clínica de forma transparente e totalmente reprodutível aos leitores. Incluindo tanto os dados de pacientes individuais (sem identificá-los) como o _script_ usado para realizar a análise dos dados, este é um exemplo das possibilidades do modelo de _open lab notebook_ e do paradigma de _open science_. Quando os dados do ensaio prospectivo forem coletados, serão igualmente publicados da mesma forma transparente, ficando permanentemente disponíveis para análise e crítica pelos interessados. Discuti a inspiração para esta abordagem nesta [postagem](http://fhcflx.github.io/pharmakon/jekyll/update/2016/05/01/Migrando-meu-blog-para-Github-Pages-usando-Jekyll.html) em outro blog.

Esta postagem usa o pacote [_knitr_](http://yihui.name/knitr/) para calcular os resultados ao mesmo tempo em que compila a página em html com [_jekyll_](https://jekyllrb.com/).
Utilizei, como guia, o excelente exemplo de [_yihui_](https://github.com/yihui/knitr).


```r
require(knitr)
require(RCurl)
require(survival)
dipg<-read.csv(text = getURL("https://raw.githubusercontent.com/fhcflx/valkyrie/gh-pages/assets/stat/dipg.csv"))
```


```r
plot(survfit(Surv(surv,status)~1,dipg),xlab="Meses")
```

![Sobrevida de pacientes com DIPG](/figure/source/2016-06-13-Cálculos-da-análise-retrospectiva/Sobrevida-1.png)

Grupo de pacientes com diagnóstico de DIPG tratados em nosso serviço, entre 2000 e 2013. O gráfico mostra a estimativa de probabilidade de sobrevida, calculada pelo método de Kaplan-Meier, usando a linguagem de programação R, pacote *survival*. O pacote *RCurl* foi adicionalmente utilizado para capturar os dados a partir do arquivo [.csv](https://github.com/fhcflx/valkyrie/blob/gh-pages/assets/stat/dipg.csv) armazenado no repositório do github. O gráfico mostra também o intervalo de confiança 95%.
Este é o resumo da variável de sobrevida, além da sobrevida em 12 meses e tempo de follow-up:


```
## Call: survfit(formula = Surv(surv, status) ~ 1, data = dipg)
## 
##       n  events  median 0.95LCL 0.95UCL 
##    55.0    42.0     9.0     7.3    13.8
```


```
## Call: survfit(formula = Surv(surv, status) ~ 1, data = dipg)
## 
##  time n.risk n.event survival std.err lower 95% CI upper 95% CI
##    12     16      30    0.383  0.0709        0.266         0.55
```

Mostrando uma mediana de sobrevida de 11.9929296 meses e sobrevida em 12 meses de 38.3 %.


```
## Call: survfit(formula = Surv(surv, ifelse(status < 1, 1, 0)) ~ 1, data = dipg)
## 
##       n  events  median 0.95LCL 0.95UCL 
##    55.0    13.0    19.6    13.8      NA
```

Mostrando uma mediana de follow-up de 27.961267 meses.

Aqui, o gráfico comparativo entre os pacientes que fizeram QT segundo um esquema HIT e os outros pacientes:


```r
plot(survfit(Surv(surv,status)~ifelse(QT1<10,0,1),dipg),xlab="Meses")
```

![Sobrevida de pacientes com DIPG, divididos por tratamento](/figure/source/2016-06-13-Cálculos-da-análise-retrospectiva/Sobrevida2-1.png)
E o resumo da sobrevida nos 2 grupos, com sobrevida aos 12 meses:

```
## Call: survfit(formula = Surv(surv, status) ~ ifelse(QT1 < 10, 0, 1), 
##     data = dipg)
## 
##                           n events median 0.95LCL 0.95UCL
## ifelse(QT1 < 10, 0, 1)=0 44     41      8     6.5    11.9
## ifelse(QT1 < 10, 0, 1)=1 11      1     NA      NA      NA
```

```
## Call: survfit(formula = Surv(surv, status) ~ ifelse(QT1 < 10, 0, 1), 
##     data = dipg)
## 
##                 ifelse(QT1 < 10, 0, 1)=0 
##         time       n.risk      n.event     survival      std.err 
##      12.0000      13.0000      29.0000       0.3234       0.0719 
## lower 95% CI upper 95% CI 
##       0.2093       0.4999 
## 
##                 ifelse(QT1 < 10, 0, 1)=1 
##         time       n.risk      n.event     survival      std.err 
##       12.000        3.000        1.000        0.857        0.132 
## lower 95% CI upper 95% CI 
##        0.633        1.000
```

Mostrando uma sobrevida aos 12 meses de 85.7 % para o grupo tratado com protocolo _as per_ HIT (n = 11 ) e de 32.3 % para os demais (n = 44 ).

Comparando os dois grupos com um teste não paramétrico que utiliza o estimador de Kaplan-Meier, o teste de log-rank, ou de Mantel-Haenszel (vide documentação do pacote [_survival_](https://cran.r-project.org/web/packages/survival/survival.pdf)).

```
## Call:
## survdiff(formula = Surv(surv, status) ~ ifelse(QT1 < 10, 0, 1), 
##     data = dipg)
## 
##                           N Observed Expected (O-E)^2/E (O-E)^2/V
## ifelse(QT1 < 10, 0, 1)=0 44       41    35.65     0.804      5.48
## ifelse(QT1 < 10, 0, 1)=1 11        1     6.35     4.512      5.48
## 
##  Chisq= 5.5  on 1 degrees of freedom, p= 0.0193
```
Comparando os dois grupos com um teste semiparamétrico, o modelo de riscos proporcionais de Cox (vide documentação do pacote [_survival_](https://cran.r-project.org/web/packages/survival/survival.pdf)).

```
## Call:
## coxph(formula = Surv(surv, status) ~ ifelse(QT1 < 10, 0, 1), 
##     data = dipg)
## 
##   n= 55, number of events= 42 
## 
##                           coef exp(coef) se(coef)      z Pr(>|z|)  
## ifelse(QT1 < 10, 0, 1) -2.0106    0.1339   1.0137 -1.983   0.0473 *
## ---
## Signif. codes:  0 '***' 0.001 '**' 0.01 '*' 0.05 '.' 0.1 ' ' 1
## 
##                        exp(coef) exp(-coef) lower .95 upper .95
## ifelse(QT1 < 10, 0, 1)    0.1339      7.468   0.01836    0.9765
## 
## Concordance= 0.57  (se = 0.035 )
## Rsquare= 0.134   (max possible= 0.99 )
## Likelihood ratio test= 7.91  on 1 df,   p=0.004916
## Wald test            = 3.93  on 1 df,   p=0.04732
## Score (logrank) test = 5.45  on 1 df,   p=0.01957
```
