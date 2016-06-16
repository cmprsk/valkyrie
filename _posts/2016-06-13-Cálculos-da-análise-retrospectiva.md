---
layout: post
title:  "Cálculos da análise retrospectiva"
date:   2016-06-13 16:03:45 -0300
categories: metodologia
---

## Curva de sobrevida da análise retrospectiva:




{% highlight r %}
plot(survfit(Surv(surv,status)~1,dipg),xlab="Meses")
{% endhighlight %}

![Sobrevida de pacientes com DIPG](figure/source/2016-06-13-Cálculos-da-análise-retrospectiva/Sobrevida-1.png)

Grupo de pacientes com diagnóstico de DIPG tratados em nosso serviço, entre 2000 e 2013. O gráfico mostra a estimativa de probabilidade de sobrevida, calculada pelo método de Kaplan-Meier, usando a linguagem de programação R, pacote *survival*. O pacote *RCurl* foi adicionalmente utilizado para capturar os dados a partir do arquivo [.csv](https://github.com/fhcflx/valkyrie/blob/gh-pages/assets/stat/dipg.csv) armazenado no repositório do github. O gráfico mostra também o intervalo de confiança 95%.
Este é o resumo da variável de sobrevida, além da sobrevida em 12 meses e tempo de follow-up:


{% highlight r %}
survfit(Surv(surv,status)~1,dipg)
{% endhighlight %}



{% highlight text %}
## Call: survfit(formula = Surv(surv, status) ~ 1, data = dipg)
## 
## records   n.max n.start  events  median 0.95LCL 0.95UCL 
##    55.0    55.0    55.0    42.0     9.0     7.3    13.8
{% endhighlight %}

{% highlight r %}
summary(survfit(Surv(surv,status)~1,dipg),time=12)
{% endhighlight %}



{% highlight text %}
## Call: survfit(formula = Surv(surv, status) ~ 1, data = dipg)
## 
##  time n.risk n.event survival std.err lower 95% CI upper 95% CI
##    12     16      30    0.383  0.0709        0.266         0.55
{% endhighlight %}

{% highlight r %}
survfit(Surv(surv,ifelse(status<1,1,0))~1,dipg)
{% endhighlight %}



{% highlight text %}
## Call: survfit(formula = Surv(surv, ifelse(status < 1, 1, 0)) ~ 1, data = dipg)
## 
## records   n.max n.start  events  median 0.95LCL 0.95UCL 
##    55.0    55.0    55.0    13.0    19.6    13.8      NA
{% endhighlight %}

Aqui, o gráfico comparativo entre os pacientes que fizeram QT segundo um esquema HIT e os outros pacientes:


{% highlight r %}
plot(survfit(Surv(surv,status)~ifelse(QT1<10,0,1),dipg),xlab="Meses")
{% endhighlight %}

![Sobrevida de pacientes com DIPG, divididos por tratamento](figure/source/2016-06-13-Cálculos-da-análise-retrospectiva/Sobrevida2-1.png)
E o resumo da sobrevida nos 2 grupos, com sobrevida aos 12 meses:

{% highlight r %}
survfit(Surv(surv,status)~ifelse(QT1<10,0,1),dipg)
{% endhighlight %}



{% highlight text %}
## Call: survfit(formula = Surv(surv, status) ~ ifelse(QT1 < 10, 0, 1), 
##     data = dipg)
## 
##                          records n.max n.start events median 0.95LCL
## ifelse(QT1 < 10, 0, 1)=0      44    44      44     41      8     6.5
## ifelse(QT1 < 10, 0, 1)=1      11    11      11      1     NA      NA
##                          0.95UCL
## ifelse(QT1 < 10, 0, 1)=0    11.9
## ifelse(QT1 < 10, 0, 1)=1      NA
{% endhighlight %}

{% highlight r %}
summary(survfit(Surv(surv,status)~ifelse(QT1<10,0,1),dipg),time=12)
{% endhighlight %}



{% highlight text %}
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
{% endhighlight %}
