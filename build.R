#!/usr/bin/env Rscript
require(knitr)
base.dir <- NULL
base.url <- "/"
fig.path <- "figure/"
opts_knit$set(base.dir = base.dir, base.url = base.url)
opts_chunk$set(fig.path = fig.path)
files=list.files(path='_source',full.names=T,pattern = "[.]Rmd$")
for (f in files) knit(f)
files = list.files(pattern = "^2016")
for (f in files) file.rename(f,paste0('_posts/',f))
