---
layout: post
comments: true
title:  "Making of VALKYRIE"
date:   2016-06-20 16:03:45 -0300
categories: valquiria
ref: making
lang: en
permalink:
doi: 10.6084/m9.figshare.3494342.v1
tags: open science, open notebook science, open clinical trial, jekyll, markdown, static site, git, github
---

To start this site, I used [Jekyll][jkyll] program, a markdown to [HTML][html] parser that generates static web pages. For starters, there is no secret in a static web page. Most of the pages you surf in the web are dynamic, containing elements that are generated during the rendering of the page, requiring server-side processing. Any of the popular blogging providers like [Blogger][blggr] and [Wordpress][wrdprss] serves dynamic pages. Dynamic pages are customizable and have a huge number of _gadgets_, _plugins_ and possible _hackings_. They really have awesome real-time effects and fantastic complexity. However, their price is a greater time to load the page (no problem in high-quality broadband, but this is not quite the rule everywhere) and greater chance of compatibility issues with browsers or mobile platforms. Nowadays, a high priority has been given to mobile platforms.

Static pages, in contrast, are nothing more than HTML code virtually devoid of any other type of additional code (especially [PHP][php]). In the beginning of the Web, it was full of static pages. The server renders the page without processing additional codes. This makes them faster  (the speed difference is noticeable even on a broadband), simple and resources sparing. The current emphasis on minimalist and responsive sites (which adapt easily to different types of mobile devices) came with the plurality of mobile machines that access the internet today, with thousands of different specifications of size and screen resolution. Developers working with dynamic pages are crazy. It has been a "smart trade-off" between the dynamic code potentials that are interpreted on the server (PHP, mainly) and the universality and simplicity of HTML "almost pure" in modern static pages. New tricks and the use of modern programs are making the choice for static pages not to look like a "step backwards". In fact, today is very _cool_ to make your own static website.

That said, Jekyll is a program created by the founder of [GitHub][gthb], [Tom Preston-Werner][tpw], written in [Ruby][rby], which automatically generates static websites. It has a minimalist highly customizable basic theme. One of its main attractions is the fact that it parses [Markdown][mrkdwn], a simplified form of HTML that exists in different formats or "flavors", originally created as a simple text to HTML converter by John Gruber. For those who have tried to write in HTML or even for those who only use popular word processors, markdown is an exceptional tool to format text on the web (or even beyond). Markdown has been very popular, justifiably, and the fact Jekyll pages are written in this language greatly facilitates its use. A note here: writing posts on blog dynamic providers is as simple as using a word processor, and it may seem easier at first sight. Then you realize that markdown allows you to write only in plain text and automatically formats text beautifully, and gives you a lot of saved time.

For those who dislike coding, the use of Jekyll can really be a bit of a challenge in the beginning. There will always be popular blog servers around, and they are now offering [static pages][sttc]. But for those who have interest in a static page highly customizable and have minimal experience with programming language, Jekyll is a good option. The best option to serve the web page is [Github Pages][gthb-pgs], which is [integrated][jkyll-gthb-pgs] to Jekyll. Therefore, you must use [Git][gt] a [distributed version control system][dcvs] developed and used by the Linux developer community. A version control system logs all changes to files or filesets, providing access to all previous versions at any time of a project. Git locally manages the changes in a project and assigns a [SHA][sh] code to each registered version. Thus, it ensures reliability and security to systems development. Git and GitHub have been increasingly used by scientists in the field of quantitative biology, especially in projects that implement [open science][opn-scnc] and [open research notebooks][opn -ntbk-scnc].

So I chose to use Jekyll to create the VALKYRIE site and write my posts in markdown format. I  installed Git locally, pushed content to GitHub remotely, and served it from GitHub Pages. This solved the part of the implementation of this  [open clinical trial][opn-clncl-trl] project.


### References:

- [Jekyll][jkyll]
- [Blogger][blggr]
- [Wordpress][wrdprss]
- [HTML - HyperText Markup Language][html]
- [PHP: Hypertext Preprocessor][php]
- [GitHub][gthb]
- [Tom Preston-Werner at Github][tpw]
- [Ruby (programming lnaguage)][rby]
- [Wordpress.com Support - Set a Static "Home" Page (Front Page)][sttc]
- [GitHub Pages][gthb-pgs]
- [Using Jekyll as a static site generator with GitHub Pages][jkyll-gthb-pgs]
- [Git - distributed is the new centralized][gt]
- [Git, Primeiros passos - Sobre Controle de Versão][dcvs]
- [Secure Hash Algorithm][sh]
- [Open Science][opn-scnc]
- [Wellcome to my Lab Notebook - Carl Boettiger][opn-ntbk-scnc]
- [Open clinical trials. Jeffrey M. Drazen, M.D., Stephen Morrissey, Ph.D., and Gregory D. Curfman, M.D. N Engl J Med 2007; 357:1756-1757 DOI: 10.1056/NEJMe0706501][opn-clncl-trl]

[jkyll]: https://jekyllrb.com
[blggr]: https://www.blogger.com
[wrdprss]: https://wordpress.com
[php]: https://en.wikipedia.org/wiki/PHP
[html]: https://en.wikipedia.org/wiki/HTML
[gthb]: https://github.com/
[tpw]: https://github.com/mojombo
[rby]: https://en.wikipedia.org/wiki/Ruby_(programming_language)
[sttc]: https://en.support.wordpress.com/pages/front-page/
[gthb-pgs]: https://pages.github.com/
[jkyll-gthb-pgs]:https://help.github.com/articles/using-jekyll-as-a-static-site-generator-with-github-pages/
[gt]: https://git-scm.com/
[dcvs]: https://git-scm.com/book/en/v2/Getting-Started-About-Version-Control
[sh]: https://en.wikipedia.org/wiki/Secure_Hash_Algorithm
[opn-scnc]: https://en.wikipedia.org/wiki/Open_science
[opn-ntbk-scnc]: http://www.carlboettiger.info/2010/11/08/welcome-to-my-lab-notebook.html
[opn-clncl-trl]: http://dx.doi.org/10.1056/NEJMe0706501
