---
layout: post
comments: true
title:  "A workflow to open clinical science"
date:   2016-06-27 16:03:45 -0300
categories: valquiria
ref: workflow
lang: en
permalink: /workflow/
doi: 10.6084/m9.figshare.3764571.v1
tags: pediatric cancer, brain tumors, diffuse intrinsic pontine glioma, clinical trial, doi, jekyll, workflow, open science
---

At this point we can sketch a workflow for the open science clinical trial notebook. This workflow is not intended for everyone and should not replace any established to-do routine unless this will conform with the objectives of the beholder. This is an example, not a recipe.

First, writing of experimental notes, personal remarks, team discussions, brainstorm sessions, consensus, bibliographic research, external authoritative opinions, invited specialist overseeing, tabulated results, statistic calculations, preliminary academic writings, preprint fragments, draft papers, essentially any piece of textual content, even asset manifestos and shopping lists. Any textual production should be written in plain, ascii or equivalent non-formated text. Format of file to write can be just .txt, or full blown [Markdown][mrkdwn] (.md or .markdown) or any equivalent. Data must be rigorously [de-identified][de-id], and extra steps must be taken in order to avoid secondary re-identification. If one needs to maintain identified records (as is often the case), they must be kept in traditional ways, safely secured.

Second, embed the plain text in a [GitHub Flavored Markdown (GFM)][gfm] template, like this one. The particular use of GFM over other Markdown variants is because we use [GitHub Pages][gthb-pgs] for internet serving. GitHub Pages renders Markdown text into html via [Jekyll][jkyll] (see its [documentation][gthb-pgs-jkyll]). There is an extra step for statistic analysis scripts written in [R programming language][r]. They must be inserted in .Rmd format files. These files can be easily parsed as Markdown using the packages [_knitr_][kntr] and [_servr_][srvr] from R. It all ends in a Markdown format file ready to be parsed in html by Jekyll. The GFM file must have at least a [YAML][yaml] frontmatter. We standardized the template's YAML [frontmatter][yml-frntmttr] like the one in this document. Ours has tags and categories, [doi][d], permalink, lang and ref (for multilingual support), title, comments and layout variables.

Third, deploy directly the file in [GitHub][gthb] (in an appropriate repository previously created for this) and GitHub Pages will take care of the rest (serving to the web). It is recommended that this step be done locally before deploying to the internet, to detect and correct any bugs in the code used before publishing the final version. To ensure transparency, control and reproducibility, we installed locally [Git][gt] (a versioning control software) and Jekyll (a Markdown to html versatile parser). Additionally, we installed Jekyll plugins to permit Twitter integration ([jekyll-twitter-plugin][jkyll-twttr-plgn]), comments via [Disqus][dsqs], [multilingual][mltlngl] support. None of this is really indispensable. However, serving locally with Jekyll is a good ideia to avoid errors before final deployment.

Fourth, deposit the important files (.Rmd, Markdown) in [figshare][fgshr] and publish the dataset publically, getting a DOI number for easy academic citation, traceability, and internet persistence. This seems to be a minor feat, but it is important to publicize your work. This alongside with social integration and comments implementation are the way of interacting with scientific community. After all, this is the prime motivation for [open science][opn-scnc].

It does not get more complicated than this. Actually, it is pretty simple and straightforward. Markdown is a very handy simple markup format that allows one to write in plain text. Jekyll takes care of parsing it to HTML format, so it can be deployed. Knitr and servr can parse R code chunks written in a .Rmd file and write a Markdown file ready to be parsed by Jekyll. This ensures reproducibility of statistical analysis and results. Git can securely version control the process, so every step is well documented and can be easily traced back. GitHub Pages serve the HTML files created by Jekyll in a friendly static site. And social integration is achieved via plugins.

This simple workflow does not need special training or resources. Essentially, it can be mantained in a one-man operation fashion, with quality and academic appropriateness and impact. There is really no limitations for its widespread use as a clinical research tool. In VALKYRIE, I have succesfully published de-identified individual patient data (including [medical images][mdcl]), I have used [licensed material][lcnsd] without any legal breaches, I have posted in academic format and published an online how-to guide for open clinical research. All of this was done in 2-3 months (counting learning  curve) by only one person with minimal resources.

In conclusion, in the era of easy and multiple-channel internet sharing, there is only one thing that separate us from successful real-time open clinical research: the will to do it.

### References:

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
