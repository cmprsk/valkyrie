---
layout: post
comments: true
title:  "Comparative group from a brazilian trial"
date:   2016-06-16 16:03:45 -0300
categories: metodologia
ref: previous
lang: en
permalink: /estudo-anterior/
---

## Individual patient data:

In addition to the historical control group of our service, we are to use the information published in a Brazilian clinical study [published][broniscer] in 2000.




```r
plot(fit,xlab="Months")
```

![Survival of patients with DIPG in the Broniscer _et al_ trial]({{site.github.url}}/figure/source/2016-06-16-Grupo-comparativo-brasileiro-publicado/Sobrevida-1.png)
Group of patients with DIPG (symptoms for less than 6 months, involvement of more than 50% of a pontine segment or two or more segments), treated with radiation (54 to 60 Gy) and tamoxifen during and after RT (200mg/m<sup>2</sup>) at the AC Camargo Hospital in Sao Paulo. The graph shows the estimated probability of survival calculated by the Kaplan-Meier method, using the R programming language, *survival* package. The package *RCurl* was used to capture the data from the .csv file stored on github repository. The graph also shows the 95% confidence interval.

_Reprinted with permission. ©(2016) American Society of Clinical Oncology. All rights reserved. The authors, editors, and ASCO are not responsible for errors or omissions in the translation._


This is the summary of overall survival, in addition to survival in 12 months:


|  records  |  n.max  |  n.start  |  events  |  median  |  0.95LCL  |  0.95UCL  |
|:---------:|:-------:|:---------:|:--------:|:--------:|:---------:|:---------:|
|    29     |   29    |    29     |    21    |  10.36   |   8.557   |   17.21   |


```
## Call: survfit(formula = Surv(Survival..days./30.5, cens) ~ 1, data = bron)
##
##  time n.risk n.event survival std.err lower 95% CI upper 95% CI
##    12      9      17    0.371  0.0952        0.224        0.613
```

Showing a median survival of 10.4 months and 12-month survival of 37.1%.

This is the summary of follow-up time:

|  records  |  n.max  |  n.start  |  events  |  median  |  0.95LCL  |  0.95UCL  |
|:---------:|:-------:|:---------:|:--------:|:--------:|:---------:|:---------:|
|    29     |   29    |    29     |    8     |  21.87   |    16     |    NA     |

Showing a median follow-up of 21.9 months.

Here, the comparison chart between the patients in the historical control group of our service and the patients from the Broniscer _et al_ trial:


```r
plot(fit2,xlab="Months",col=4)
lines(fit,col=2)
```

![Survival of patients with DIPG]({{site.github.url}}/figure/source/2016-06-16-Grupo-comparativo-brasileiro-publicado/Sobrevida2-1.png)

And the summary of overall survival of the two groups, with survival at 12 months:

|  records  |  n.max  |  n.start  |  events  |  median  |  0.95LCL  |  0.95UCL  |
|:---------:|:-------:|:---------:|:--------:|:--------:|:---------:|:---------:|
|    29     |   29    |    29     |    21    |  10.36   |   8.557   |   17.21   |



|  records  |  n.max  |  n.start  |  events  |  median  |  0.95LCL  |  0.95UCL  |
|:---------:|:-------:|:---------:|:--------:|:--------:|:---------:|:---------:|
|    31     |   31    |    31     |    29    |   11.4   |    8.1    |   15.6    |

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

Showing a survival at 12 months of 37.1% for patients in the Broniscer _et al_ trial (n = 29) and 44.7% in the historical control group of our service (n = 31).

Permission to use the data from the main table from [Broniscer _et al _][broniscer] was supplied to us by [ASCO][asco] in 2016. These data are protected by copyright and should not be reused without permission from rightholder.

### References:

- [Broniscer A, Leite CC, Lanchote VL, Machado TM, Cristófani LM. Radiation therapy and high-dose tamoxifen in the treatment of patients with diffuse brainstem gliomas: results of a Brazilian cooperative study. Brainstem Glioma Cooperative Group. J Clin Oncol. 2000 Mar;18(6):1246-53.][broniscer]
- [ASCO: American Society of Clinical Oncology][asco]

[broniscer]: http://jco.ascopubs.org/content/18/6/1246.long
[asco]: http://www.asco.org
