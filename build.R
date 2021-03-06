local({
  # fall back on '/' if baseurl is not specified
  baseurl = servr:::jekyll_config('.', 'baseurl', '/')
  knitr::opts_knit$set(base.url = baseurl)
  # fall back on 'kramdown' if markdown engine is not specified
  markdown = servr:::jekyll_config('.', 'markdown', 'kramdown')
  # see if we need to use the Jekyll render in knitr
  if (markdown == 'kramdown') {
    knitr::render_jekyll()
  } else knitr::render_markdown()
  
  # input/output filenames are passed as two additional arguments to Rscript
  a = commandArgs(TRUE)
  d = gsub('^_|[.][a-zA-Z]+$', '', a[1])
  knitr::opts_chunk$set(
    fig.path   = sprintf('figure/%s/', d),
    cache.path = sprintf('cache/%s/', d)
  )
  # these settings are only for myself, and they will not apply to you, but
  # you may want to adapt them to your own website
  knitr::opts_chunk$set(fig.path = sprintf('%s/', gsub('^.+/', '', d)))
  knitr::opts_knit$set(
    base.dir = './images/' ,
    base.url = 'http://curso-r.github.io/verao2016/images/'
  )
  
  if (stringr::str_detect(a[1], "apresentacao")) {
    rmarkdown::render(a[1], output_dir = "_posts/", output_file = a[2])
  } else {
    knitr::opts_knit$set(width = 70)
    knitr::knit(a[1], a[2], quiet = TRUE, encoding = 'UTF-8', envir = .GlobalEnv) 
  }
  
  # knitr::opts_knit$set(width = 70)
  # knitr::knit(a[1], a[2], quiet = TRUE, encoding = 'UTF-8', envir = .GlobalEnv)
})
