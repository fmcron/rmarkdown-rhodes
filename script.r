library(RWordPress)
library(knitr)
library(xml2)
library(bookdown)
library(markdown)
library(rmarkdown)
library(rsconnect)
library(XML)


opts_knit$set(upload.fun = imgur_upload, base.url = NULL) 
opts_chunk$set(fig.width = 6, fig.height = 6, cache = TRUE, tidy=TRUE,
              tidy.opts=list(width=70), collapse=TRUE) 
# options(WordpressLogin = c(fmcron = "gamba2002!@#$%"), 
#         WordpressURL = "https://notesonr.com/xmlrpc.php",
#     markdown.HTML.options=c(markdownHTMLOptions(default=T), 
#                 options=c("toc")))
# knit2wp('index.Rmd', title = "Teste bookdown", publish=FALSE,
#         shortcode=c(TRUE,TRUE), collapse=TRUE)
# 

converte <- c("index.Rmd")

render_book(converte)
publish_book(render="server", account="fmcron", server="bookdown.org")

