## ---- include = FALSE---------------------------------------------------------
knitr::opts_chunk$set(
  echo=TRUE,
  progress =FALSE,
  comment = "#>"
)
options(rmarkdown.html_vignette.check_title = FALSE)

## ---- colocalization_framework.png, fig.align = 'center', out.width = "70%", echo=FALSE----
# knitr::include_graphics("images/quick_start/colocalization_framework.png")

## ---- results = 'hide', echo=TRUE, message=FALSE, warning=FALSE, eval=FALSE----
#  library(data.table)
#  library(xQTLbiolinks)
#  library(stringr)
#  library(coloc)

## ---- results = 'hide', echo=TRUE, message=FALSE, warning=FALSE, eval=FALSE----
#  gwasDF <- fread("https://raw.githubusercontent.com/dingruofan/exampleData/master/gwas/AD/gwasDFsub.txt")
#  tissueSiteDetail="Brain - Cerebellum"

## ---- eval=FALSE--------------------------------------------------------------
#  head(gwasDF)

## ---- results = 'hide', echo=TRUE, message=FALSE, warning=FALSE, eval=FALSE----
#  sentinelSnpDF <- xQTLanalyze_getSentinelSnp(gwasDF, pValueThreshold = 5e-08)

## ---- eval=FALSE--------------------------------------------------------------
#  sentinelSnpDF

## ---- results = 'hide', echo=TRUE, message=FALSE, warning=FALSE, eval=FALSE----
#  traitsAll <- xQTLanalyze_getTraits(sentinelSnpDF, detectRange=1e6, tissueSiteDetail=tissueSiteDetail)

## ---- eval=FALSE--------------------------------------------------------------
#  traitsAll

## ---- results = 'hide', echo=TRUE, message=FALSE, warning=FALSE, eval=FALSE----
#  output <- xQTLanalyze_coloc(gwasDF, "CLNK", tissueSiteDetail=tissueSiteDetail) # using gene symbol

## ---- eval=FALSE--------------------------------------------------------------
#  output$coloc_Out_summary

## ---- results = 'hide', echo=TRUE, message=FALSE, warning=FALSE, eval=FALSE----
#  outputs <- rbindlist(lapply( unique(traitsAll$gencodeId), function(x){ # using gencode ID.
#             xQTLanalyze_coloc(gwasDF, x, tissueSiteDetail=tissueSiteDetail, method = "Both")$colocOut }))

## ---- eval=FALSE--------------------------------------------------------------
#  outputs

## ---- results = 'hide', echo=TRUE, message=FALSE, warning=FALSE, eval=FALSE----
#  xQTLvisual_eqtl("ENSG00000109684.14")

## ---- eqtl_multiple_tissues, fig.align = 'center', out.width = "80%", echo=FALSE----
# knitr::include_graphics("images/quick_start/eQTL_multiple_tissue.png")

## ---- results = 'hide', echo=TRUE, message=FALSE, warning=FALSE, eval=FALSE----
#  eqtlAsso <- xQTLdownload_eqtlAllAsso(gene="ENSG00000109684.14",
#                                       tissueLabel = tissueSiteDetail)
#  gwasEqtldata <- merge(gwasDF, eqtlAsso[,.(rsid=snpId, position=pos, maf, pValue)],
#                        by=c("rsid", "position"), suffixes = c(".gwas",".eqtl"))

## ---- results = 'hide', echo=TRUE, message=FALSE, warning=FALSE, eval=FALSE----
#  xQTLvisual_locusCompare(gwasEqtldata[,.(rsid, pValue.eqtl)],
#                          gwasEqtldata[,.(rsid, pValue.gwas)], legend_position = "bottomright")

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

## ---- exp.png, fig.align = 'center', out.width = "45%", echo=FALSE------------
# knitr::include_graphics("images/quick_start/exp.png")

## ---- results = 'hide', echo=TRUE, message=FALSE, warning=FALSE, eval=FALSE----
#  xQTLvisual_locusCombine(gwasEqtldata[,c("rsid","chrom", "position", "pValue.gwas", "pValue.eqtl")],
#                          highlightSnp="rs13120565")

## ---- xQTLvisual_locusCombine.png, fig.align = 'center', out.width = "90%", echo=FALSE----
# knitr::include_graphics("images/quick_start/xQTLvisual_locusCombine.png")

## ---- results = 'hide', echo=TRUE, message=FALSE, warning=FALSE, eval=FALSE----
#  multi_tissue_coloc <- xQTLvisual_coloc(gene="ENSG00000109684.14", variantName="rs13120565",
#                                        tissueLabels = c("Brain - Cerebellar Hemisphere",
#                                                          "Brain - Cerebellum", "Thyroid", "Lung",
#                                                          "Cells - EBV-transformed lymphocytes"))

## ---- propensity.png, fig.align = 'center', out.width = "70%", echo=FALSE-----
# knitr::include_graphics("images/quick_start/propensity.png")

