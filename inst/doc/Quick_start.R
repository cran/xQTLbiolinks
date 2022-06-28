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

## ---- message=FALSE, warning=FALSE, include=FALSE-----------------------------
temp1 <- tempfile(fileext=".zip")
download.file("https://github.com/dingruofan/exampleData/raw/master/env.zip", temp1)
load(unz(temp1,"env.Rdata"))
close(file(temp1))
rm(temp1)

## ---- results = 'hide', echo=TRUE, message=FALSE, warning=FALSE, eval=FALSE----
#  gwasDF <- fread("http://raw.githubusercontent.com/dingruofan/exampleData/master/gwas/AD/gwasDFsub.txt")
#  tissueSiteDetail="Brain - Cerebellum"

## ---- eval=TRUE---------------------------------------------------------------
head(gwasDF)

## ---- results = 'hide', echo=TRUE, message=FALSE, warning=FALSE, eval=FALSE----
#  sentinelSnpDF <- xQTLanalyze_getSentinelSnp(gwasDF, pValueThreshold = 5e-08)

## ---- eval=TRUE---------------------------------------------------------------
sentinelSnpDF

## ---- results = 'hide', echo=TRUE, message=FALSE, warning=FALSE, eval=FALSE----
#  traitsAll <- xQTLanalyze_getTraits(sentinelSnpDF, detectRange=1e6, tissueSiteDetail=tissueSiteDetail)

## ---- eval=TRUE---------------------------------------------------------------
traitsAll

## ---- results = 'hide', echo=TRUE, message=FALSE, warning=FALSE, eval=FALSE----
#  output <- xQTLanalyze_coloc(gwasDF, "CLNK", tissueSiteDetail=tissueSiteDetail) # using gene symbol

## ---- eval=TRUE---------------------------------------------------------------
output$coloc_Out_summary

## ---- results = 'hide', echo=TRUE, message=FALSE, warning=FALSE, eval=FALSE----
#  outputs <- rbindlist(lapply( unique(traitsAll$gencodeId), function(x){ # using gencode ID.
#             xQTLanalyze_coloc(gwasDF, x, tissueSiteDetail=tissueSiteDetail)$coloc_Out_summary }))

## ---- eval=TRUE---------------------------------------------------------------
outputs

## ---- results = 'hide', echo=TRUE, message=FALSE, warning=FALSE, eval=FALSE----
#  eqtlAsso <- xQTLdownload_eqtlAllAsso(gene="ENSG00000109684.14",
#                                       tissueLabel = tissueSiteDetail)
#  gwasEqtldata <- merge(gwasDF, eqtlAsso[,.(rsid=snpId, position=pos, maf, pValue)],
#                        by=c("rsid", "position"), suffixes = c(".gwas",".eqtl"))

## ---- results = 'hide', echo=TRUE, message=FALSE, warning=FALSE, eval=FALSE----
#  xQTLvisual_locusCompare(gwasEqtldata[,.(rsid, pValue.eqtl)],
#                         gwasEqtldata[,.(rsid, pValue.gwas)], legend_position = "bottomright")

## ---- compare.png, fig.align = 'center', out.width = "50%", echo=FALSE--------
# knitr::include_graphics("images/quick_start/compare.png")

## ---- results = 'hide', echo=TRUE, message=FALSE, warning=FALSE, eval=FALSE----
#  xQTLvisual_locusZoom(gwasEqtldata[,.(rsid, chrom, position, pValue.gwas)], legend=FALSE)

## ---- gwas_legendF.png, fig.align = 'center', out.width = "50%", echo=FALSE----
# knitr::include_graphics("images/quick_start/gwas_legendF.png")

## ---- results = 'hide', echo=TRUE, message=FALSE, warning=FALSE, eval=FALSE----
#  xQTLvisual_locusZoom(gwasEqtldata[,.(rsid, chrom, position, pValue.eqtl)],
#                       highlightSnp = "rs13120565", legend=FALSE)

## ---- eqtl_legendF.png, fig.align = 'center', out.width = "50%", echo=FALSE----
# knitr::include_graphics("images/quick_start/eqtl_legendF.png")

## ---- results = 'hide', echo=TRUE, message=FALSE, warning=FALSE, eval=FALSE----
#  xQTLvisual_eqtlExp("rs13120565", "ENSG00000109684.14", tissueSiteDetail = tissueSiteDetail)

## ---- exp.png, fig.align = 'center', out.width = "30%", echo=FALSE------------
# knitr::include_graphics("images/quick_start/exp.png")

## ---- results = 'hide', echo=TRUE, message=FALSE, warning=FALSE, eval=FALSE----
#  xQTLvisual_locusCombine(gwasEqtldata[,c("rsid","chrom", "position", "pValue.gwas", "pValue.eqtl")],
#                          highlightSnp="rs13120565")

## ---- xQTLvisual_locusCombine.png, fig.align = 'center', out.width = "90%", echo=FALSE----
# knitr::include_graphics("images/quick_start/xQTLvisual_locusCombine.png")

