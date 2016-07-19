---
layout: post
comments: true
title:  "Jekyll posts with a DOI number"
date:   2016-06-29 16:03:45 -0300
categories: valquiria
ref: doi-number
lang: en
permalink: /doi-number/
doi: 10.6084/m9.figshare.3491690.v1
tags: pediatric cancer, brain tumors, diffuse intrinsic pontine glioma, clinical trial, figshare, doi, jekyll
---

The next step in the publishing of this _open clinical trial notebook_ is to get a _DOI_ (Digital Object Identifier) for each post. DOIs are [persistent interoperable identifiers][id-io], internet uniform resource locators (URL) with the characteristic of being persistent and not subject to 'link rot'. This makes them useful for identification and citation of academic material. A not-for-profit organization, the [International DOI Foundation][doi], is the governance and management body for the Registration Agencies that provides DOI numbers.  

How could I accomplish the task of getting a doi number for each post of this open notebook? Every post lives as a single markdown file that is parsed as html by Jekyll for internet publishing. So, the most straightforward way is linking each markdown file to a unique DOI. However, each post has in fact _two_ versions, one in portuguese and the other in english, each one in a separate markdown file. I decided for publishing them as filesets, generating a DOI for each _set_ of files (multilingual versions of the same post). An online academic repository service that accepts the archiving of filesets and provides DOI numbers is [_figshare_][fig].

Therefore, I decided to self-archive the filesets of multilingual posts in figshare and get DOI numbers for them. I will create a _YAML frontmatter_ category named "doi" and identify each post wih it. Using a _Liquid_ tag, I can then place the DOI number in the title of each post, along with date and author, creating a _citation info tag_. One can check that in this post. The citation is in this format:

{% highlight liquid %}
{%raw%}{{ page.date | date: "%b %-d, %Y" }} (...) {{ page.author }}, (...) doi:{{ page.doi }}{%endraw%}
{% endhighlight %}

And gives out this result: {{ page.date | date: "%b %-d, %Y" }} {{ page.author }}, doi:{{ page.doi }}

### References:

- [DOI, identifier interoperability][id-io]
- [DOI.org][doi]
- [Figshare][fig]


[id-io]: https://www.doi.org/factsheets/Identifier_Interoper.html
[doi]: http://www.doi.org
[fig]: http://www.figshare.com
