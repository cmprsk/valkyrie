---
layout: post
comments: true
title:  "Comments via Disqus in Project VALKYRIE's homepage"
date:   2016-06-24 16:03:45 -0300
categories: valquiria
ref: disqus
lang: en
permalink: /disqus-comments/
doi: 10.6084/m9.figshare.3489968
tags: pediatric cancer, brain tumors, diffuse intrinsic pontine glioma, clinical trial, disqus, jekyll, project valkyrie
---

Beginning today, I configured comments in posts. Using the instructions found [here][disqus-jekyll-install] and also [here][disqus-jekyll], I created and cofigured a [Disqus][disqus] account and added the following code in a _disqus.html_ file in my **\_includes**:

{% highlight html %}
  {{ "{% if page.comments " }}%}
  {% include  disqus.html %}
  {{ "{% endif " }}%}
{% endhighlight %}

E adicionando a seguinte _tag_ [Liquid][liquid] no modelo _post.html_:

{% highlight liquid %}
  {{ "{% include  disqus.html " }}%}
{% endhighlight %}


To configure Disqus comments in some [Jekyll][jekyll] blog, I suggest using the [universal code][disqus-embed].
Cooments can be moderated, answered, and curated on Disqus, and comment history will be shown in the page. All VALKYRIE readers are invated to opinate, suggest, or just comment and add his/her experience and ideas. All contributions are wellcome!

### References:

- [Jekyll][jekyll]
- [Disqus][disqus]
- [Disqus, Universal Embed Code][disqus-embed]
- [Disqus, Jekyll Installation Instructions][disqus-jekyll-install]
- [Disqus, Adding Disqus to a Jekyll blog][disqus-jekyll]
- [Liquid, Liquid for designers][liquid]

[jekyll]: https://jekyllrb.com
[disqus]: https://disqus.com
[disqus-embed]: https://disqus.com/admin/universalcode/
[disqus-jekyll-install]: https://help.disqus.com/customer/portal/articles/472138-jekyll-installation-instructions
[disqus-jekyll]: http://sgeos.github.io/jekyll/disqus/2016/02/14/adding-disqus-to-a-jekyll-blog.html
[liquid]: https://github.com/Shopify/liquid/wiki/liquid-for-designers
