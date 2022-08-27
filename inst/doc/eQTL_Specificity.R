## ---- include = FALSE---------------------------------------------------------
knitr::opts_chunk$set(
  echo=TRUE,
  progress =FALSE,
  comment = "#>"
)

## ---- results = 'hide', echo=TRUE, message=FALSE, warning=FALSE, eval=FALSE----
#  library(data.table)
#  library(xQTLbiolinks)
#  library(stringr)

## ---- results = 'hide', echo=TRUE, message=FALSE, warning=FALSE, eval=FALSE----
#  propensityRes <- xQTLanalyze_propensity(gene="MMP7", variantName="rs11568818", study="")

## ---- message=FALSE, warning=FALSE, include=FALSE-----------------------------
temp1 <- tempfile(fileext=".zip")
download.file("https://github.com/dingruofan/exampleData/raw/master/MMP7.zip", temp1)
load(unz(temp1,"MMP7.env"))
close(file(temp1))
rm(temp1)

## ---- message=FALSE, warning=FALSE, eval=TRUE---------------------------------
names(propensityRes)

## ---- results = 'hide', echo=TRUE, message=FALSE, warning=FALSE, eval=FALSE----
#  xQTLvisual_qtlPropensity(propensityRes)

## ---- heatmap_MMP7.png, fig.align = 'center', out.width = "65%", echo=FALSE----
# knitr::include_graphics("images/eqtl_specificity/heatmap_MMP7.png")

