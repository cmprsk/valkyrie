---
layout: post
comments: true
title:  "Retrospective survival analysis of different treatments for DIPG"
date:   2016-06-14 16:03:45 -0300
categories: metodologia
ref: retro
lang: en
permalink: /retrospective/
doi: 10.6084/m9.figshare.3489959
tags: pediatric cancer, brain tumors, diffuse intrinsic pontine glioma, clinical trial, retrospective analysis, open science, jekyll, knitr
---

## Retrospective analysis survival curve:

Calculations shown here use data from patients diagnosed with DIPG between 2000-2013, with follow-up until 2014. Follow-up time of the patients in this database is a bit longer than that from the original data used to design VALKYRIE project, hence there are some numerical differences. This post illustrate how to present clinical research data in a transparent and fully reproducible way to an audience.   Including individual patient data (de-identified) as well as the _script_ used to perform statistical analysis of data, this is an example of the possibilities of _open lab notebook_ and _open science_ paradigm. When the prospective trial data are collected, they will be equally published in the same format, becoming permanently available to analysis and criticism by interested third parties. I discussed the inspiration to this approach in this [post][jekyll-migrando] in a personal blog.

This post uses package [_knitr_][knitr] to calculate results at the same time of html parsing with [_jekyll_][jekyll].
I used the excellent example of [_yihui_][yihui] as guide. To format tables with more than that available in knitr, I used package [pander][pander], as very well depicted [here][pander-knitr]. I only made sure to pass the ```type = 'rmarkdown' ``` option to pander.


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

![Survival of patients with DIPG]({{site.baseurl}}/figure/source/retrospectiva/Sobrevida-1.png)

Patients diagnosed with DIPG in our service between 2000 and 2013. Graph shows survival probability estimate, Kaplan-Meier estimate method, R programming language, package *survival*. Package *RCurl* was additionally used to fecth data from a [.csv][csv] file in github repository. Graph also shows 95% confidence interval.
This is the overall survival and 12-month survival summary:



| records | n.max | n.start | events | median | 0.95LCL | 0.95UCL |
|:-------:|:-----:|:-------:|:------:|:------:|:-------:|:-------:|
|   56    |  56   |   56    |   42   |  9.5   |   7.3   |  13.8   |


```
## Call: survfit(formula = Surv(os, status) ~ 1)
##
##  time n.risk n.event survival std.err lower 95% CI upper 95% CI
##    12     17      30    0.395  0.0705        0.279        0.561
```

Median overall survival was 9.5 months and survival at 12 months was 39.5 %.

This is the _follow-up_ variable summary:



| records | n.max | n.start | events | median | 0.95LCL | 0.95UCL |
|:-------:|:-----:|:-------:|:------:|:------:|:-------:|:-------:|
|   56    |  56   |   56    |   14   |   25   |  15.8   |   NA    |

Follow-up median was 25 monrhs.

Here, graph comparing patients that were treated _as per_ HIT protocols _versus_ other patients:



```r
plot(fit3,xlab="Meses")
```

![Sobrevida de pacientes com DIPG, divididos por tratamento]({{site.baseurl}}/figure/source/retrospectiva/Sobrevida2-1.png)

Summary of overall survival and 12-month survival in both groups:


|             &nbsp;             | records | n.max | n.start | events | median | 0.95LCL | 0.95UCL |
|:------------------------------:|:-------:|:-----:|:-------:|:------:|:------:|:-------:|:-------:|
| **ifelse(chemo < 10, 0, 1)=0** |   44    |  44   |   44    |   41   |   8    |   6.5   |  11.9   |
| **ifelse(chemo < 10, 0, 1)=1** |   12    |  12   |   12    |   1    |   NA   |   NA    |   NA    |

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

12-month survival was 87.5 % for patients treated _as per_ HIT (n = 12 ) and 32.3 % for the others (n = 44 ).

Comparing both groups with a non-parametric test that uses Kaplan-Meier estimate, log-rank or Mantel-Haenszel test (see [_survival_][survival] package documentation).


|             &nbsp;             | N  | Observed | Expected | (O-E)^2/E | (O-E)^2/V |
|:------------------------------:|:--:|:--------:|:--------:|:---------:|:---------:|
| **ifelse(chemo < 10, 0, 1)=0** | 44 |    41    |  33.81   |   1.529   |   8.035   |
| **ifelse(chemo < 10, 0, 1)=1** | 12 |    1     |  8.189   |   6.311   |   8.035   |

Table: Call: Surv(os, status) ~ ifelse(chemo < 10, 0, 1) Chisq = 8.035346
on 1 degrees of freedom, p = 0.004587

Comparing both groups with a semiparametric test, Cox proportional risks model (see [_survival_][survival] package documentation).


|            &nbsp;            |  coef  | exp(coef) | se(coef) |   z    |    p    |
|:----------------------------:|:------:|:---------:|:--------:|:------:|:-------:|
| **ifelse(chemo < 10, 0, 1)** | -2.315 |  0.0988   |  1.013   | -2.285 | 0.02233 |

Table: Fitting Proportional Hazards Regression Model: Surv(os, status) ~ ifelse(chemo < 10, 0, 1)

Likelihood ratio test=11.76  on 1 df, p=0.0006041988  n= 56, number of events= 42

```
## Call:
## coxph(formula = Surv(os, status) ~ ifelse(chemo < 10, 0, 1),
##     data = dipg)
##
##   n= 56, number of events= 42
##
##                             coef exp(coef) se(coef)      z Pr(>|z|)  
## ifelse(chemo < 10, 0, 1) -2.3147    0.0988   1.0131 -2.285   0.0223 *
## ---
## Signif. codes:  0 '***' 0.001 '**' 0.01 '*' 0.05 '.' 0.1 ' ' 1
##
##                          exp(coef) exp(-coef) lower .95 upper .95
## ifelse(chemo < 10, 0, 1)    0.0988      10.12   0.01356    0.7197
##
## Concordance= 0.585  (se = 0.036 )
## Rsquare= 0.189   (max possible= 0.99 )
## Likelihood ratio test= 11.76  on 1 df,   p=0.0006042
## Wald test            = 5.22  on 1 df,   p=0.02233
## Score (logrank) test = 8  on 1 df,   p=0.004679
```

This result indicates that there may be a possible difference in survival when patients are treated _as per_ HIT protocols (with valproic acid).

### References:

- [Jekyll][jekyll]
- [Jekyll, Migrando meu blog para Github Pages usando Jekyll][jekyll-migrando]
- [Knitr, Elegant, flexible and fast dynamic report generation with R][knitr]
- [Knitr, Github][yihui]
- [pander: An R Pandoc Writer][pander]
- [pander, Using pander with kniter][pander-knitr]
- [Package 'survival'][survival]
- [DIPG database][csv]

[jekyll]: https://jekyllrb.com
[jekyll-migrando]: /pharmakon/jekyll/update/2016/05/01/Migrando-meu-blog-para-Github-Pages-usando-Jekyll.html
[knitr]: http://yihui.name/knitr/
[yihui]: https://github.com/yihui/knitr
[pander]: http://rapporter.github.io/pander/
[pander-knitr]: http://rapporter.github.io/pander/knitr.html
[survival]: https://cran.r-project.org/web/packages/survival/survival.pdf
[csv]:https://github.com/fhcflx/valkyrie/blob/master/data/
