---
layout: post
comments: true
title:  "Estimate of the number of patients to enroll in a clinical trial - Project VALKYRIE"
date:   2016-06-09 16:03:45 -0300
categories: metodologia
lang: en
ref: numero
permalink: /sample-size/
doi: 10.6084/m9.figshare.3489947
tags: pediatric cancer, brain tumors, diffuse intrinsic pontine glioma, clinical trial, sample size, project valkyrie
---

When we designed the Valkyrie trial several different considerations were made on how to calculate the number of patients to be recruited for the trial. In the end, the decision fell on the way as described in the project [methodology][meto] (translated from portuguese):

  - #### 5.7.Sample size:

  - The sample size does not depend on the initial question, which is not
  comparative. However, in order to ascertain secondary outcomes, it was
  necessary to calculate the expected number of patients to be recruited.
  Using data available from patients already treated in our hospital
  (as discussed above) as a pilot group, assuming a hazard ratio of
  0.05 and choosing a statistical power of 80% and 0.5% alpha the
  minimum number of patients required in the experimental group (in a 1:2
  design) is 16 patients. We expect to require 2 years to recruit this sample.
  The comparison group to be used will be the historic control group
  of patients treated at our institution between 2000 and 2013, with
  schemes other than HIT (number of patients 31, suitable for this
  experimental design). The powerSurvEpi package of R language was used
  to calculate the sample size (R Development Core Team, 2012).

  - #### 5.8.Retrospective data to compose the historical control group:

  - The data collected for two other previous projects, "EPIDEMIOLOGIC PROFILE
  OF PEDIATRIC PATIENTS WITH BRAIN TUMOR TREATED IN ALBERT SABIN CHILDREN'S
  HOSPITAL ONCO-HEMATOLOGY SERVICE BETWEEN 2000 AND 2006" and "ASSESSMENT OF
  PEDIATRIC BRAIN TUMOR TREATMENT IN ALBERT SABIN CHILDREN'S HOSPITAL BETWEEN
  2007-2010" will be used as source of information. In addition, new data
  collected about the patients diagnosed and treated between 2011 and 2013 will
  complete the retrospective evaluation period. The data collection will follow
  the general methods in the above projects, but it will differ in the creation
  of a digital database, integrated into an electronic data collection and
  storage solution. The Google Drive (Google, 2013) and its resources are to be
  used. In this way, we will included in the retrospective evaluation all
  patients diagnosed between 2000 and 2013, a period of 14 years. As already
  reported above, in this period, 57 patients were diagnosed with DIPG. Of
  these, 31 patients were treated with radiotherapy and any treatment scheme
  other than HIT (Figure 2). These patients will be included in the comparative
  historical group.

[R (2.X - 3.X)][r] script (package [powerSurvEpi][power]) used to calculate the sample size in our study, with the results:

```
 > require (powerSurvEpi)
 > ssizeCT.default(power = 0.8, k = 0.5, pE = 0.14, pC = 0.63, RR = 0.05, alpha = 0.05)
nE nC
14 27
```

Where ``` power``` is the statistical power (beta, probability of type 2 error), ```k``` is the ratio between the number of patients in the experimental group and the number of patients in the control group, ```pE``` is the probability of failure (event) in *t* = 12 months in the experimental group (taken from the data of our historical pilot),```pC``` is the probability of failure (event) in  *t* = 12 months in the control group (taken from data from our historical control), ```RR``` is the hazard ratio (HR) in the historical pilot, and ```alpha```  is the probability of type 1 error. Results includes 2 elements: ```nE``` (number of participants in experimental group) and ```nC``` number of participants of control group). This calculation is an implementation of the method proposed by [Freedman (1982)][freedman].

These figures were obtained from the comparison I made between patients with HIT protocols and valproic acid *versus* patients treated *as per* the COG protocols, as shown in the [introduction][intro] of the project (translated from portuguese):

  - Between September 2002 and November 2013, 57 patients were
  diagnosed with DIPG in our hospital. The median
  overall (10 months, 95% CI 7.3 to 13.8) and progression-free (7
  months, 95% CI 6.2 to 9.5) survival of the whole group falls in the range
  expected by the scientific literature. Of those patients, 42 received
  radiotherapy (OS = 12 m and PFS = 9 m), while 53 received chemotherapy
  (OS = 10 m and PFS = 7 m). Forty patients received prophylactic valproic acid
  since diagnosis (OS SLP = 12 m and SLP = 9 m). Univariate comparison
  (Log-rank test) showed that both radiation (at least 40 Gy)
  as chemotherapy correlated with increased OS and PFS (p <
  0.001). Prophylaxis with VPA correlated with better PFS (p <
  0,001) and somewhat better OS (p = 0.05). Three chemotherapy protocols
  have been used to treat patients with DIPG. A protocol with weekly doses of
  carboplatin and vincristine, adapted from A9952 COG protocol [Ater 2012] for
  treating low grade glioma (37 patients), an oral temozolomide during and after
  RT protocol [Cohen 2011], adapted from ACNS0126 trial (4 patients) and
  a protocol with cisplatin, vincristine, etoposide and ifosfamide
  during RT and maintenance prednisone, adapted from HIT-GBM-C/D
  [Wolff, 2010a; Wolff 2011] (12 patients). Although the number of
  patients treated with the second scheme has been very small,
  curbing the statistical power of any comparison, it was possible
  to identify a large survival advantage in patients that
  used the adapted HIT (survival at 12 months **86%** against **37%** of other
  combined patients, p < 0.005, Figure 1). Fitting a
  Cox proportional hazards regression model, it followed that both radiotherapy
  (HR = 0.1; 95% CI = 0.04 to 0.3; p < 0.001) and chemotherapy adapted from
  HIT (**HR = 0.05**, 95% CI 0.006 to 0.36; p < 0.005) correlated with higher OS.
  Since almost all patients who received the HIT-adapted protocol
  also received VPA, it is impossible to separate the
  effects of the two components of the treatment on survival.

![amostra]({{ site.baseurl}}/assets/posts/2016-06-08-Cálculo-do-número-de-pacientes/pasted-image-30.png)
*Graph from the project's introduction, showing survival curve of DIPG patients treated in our service between 2000-2013, divided by treatment (blue, HIT protocols and valproic acid).*

### References:

- [VALKYRIE project, Methodology][meto]
- [R: A Language and Environment for Statistical Computing, R Foundation for Statistical Computing, Vienna, Austria, 2016][r]
- [Weiliang Qiu, Jorge Chavarro, Ross Lazarus, Bernard Rosner and Jing Ma. (2015). powerSurvEpi: Power and Sample Size Calculation for Survival Analysis of Epidemiological Studies. R package version 0.0.9.][power]
- [Freedman, L.S. (1982). Tables of the number of patients required in clinical trials using the log-rank test. Statistics in Medicine. 1: 121-129][freedman]
- [VALKYRIE project, Introduction][intro]

[meto]: {{site.github.url}}/projeto.md#5metodologia
[r]: https://www.R-project.org
[power]: http://CRAN.R-project.org/package=powerSurvEpi
[freedman]: http://onlinelibrary.wiley.com/doi/10.1002/sim.4780010204/full
[intro]: {{site.github.url}}/projeto.md#1introdução
