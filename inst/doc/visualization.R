## ---- include = FALSE---------------------------------------------------------
knitr::opts_chunk$set(
  echo=TRUE,
  progress =FALSE,
  comment = "#>"
)

## ---- results = 'hide', echo=TRUE, message=FALSE, warning=FALSE, eval=FALSE----
#  xQTLvisual_eqtl("KIF15")

## ---- xQTLvisual_eqtl.png, fig.align = 'center', out.width = "70%", fig.cap = "", echo=FALSE----
# knitr::include_graphics("images/visualization/xQTLvisual_eqtl.png")

## ---- results = 'hide', echo=TRUE, message=FALSE, warning=FALSE, eval=FALSE----
#   genes <- c("FNDC8", "S100Z", "AQP6", "AMOT", "C3orf38", "FOXL1", "COX11", "FCN3", "DDX58", "CFI", "MS4A18", "NUDT13", "HOXA4", "VSX1")
#   xQTLvisual_genesExp(genes, tissueSiteDetail="Lung")

## ---- xQTLvisual_genesExp.png, fig.align = 'center', out.width = "70%", fig.cap = "", echo=FALSE----
# knitr::include_graphics("images/visualization/xQTLvisual_genesExp.png")

## ---- results = 'hide', echo=TRUE, message=FALSE, warning=FALSE, eval=FALSE----
#  geneExpTissues <- xQTLvisual_geneExpTissues("TP53", tissues=c("Lung", "Brain","Ovary"))

## ---- visualization_tissueExp.png, fig.align = 'center', out.width = "70%", fig.cap = "", echo=FALSE----
# knitr::include_graphics("images/visualization/visualization_tissueExp.png")

## ---- results = 'hide', echo=TRUE, message=FALSE, warning=FALSE, eval=FALSE----
#  geneExpTissues <- xQTLvisual_geneExpTissues("TP53")

## ---- geneExpTissues.png, fig.align = 'center', out.width = "90%", fig.cap = "", echo=FALSE----
# knitr::include_graphics("images/visualization/geneExpTissues.png")

## ---- results = 'hide', echo=TRUE, message=FALSE, warning=FALSE, eval=FALSE----
#  expEqtl <- xQTLvisual_eqtlExp(variantName="rs78378222", gene ="TP53",
#                                tissueSiteDetail="Lung")

## ---- xQTLvisual_eqtlExp.png, fig.align = 'center', out.width = "30%", fig.cap = "", echo=FALSE----
# knitr::include_graphics("images/visualization/xQTLvisual_eqtlExp.png")

## ---- results = 'hide', echo=TRUE, message=FALSE, warning=FALSE, eval=FALSE----
#  expSqtl <- xQTLvisual_sqtlExp(variantName="chr11_66561248_T_C_b38",variantType="variantId",
#                                phenotypeId ="chr11:66348070:66353455:clu_8500:ENSG00000255468.6",
#                                tissueSiteDetail="Skin - Sun Exposed (Lower leg)")

## ---- xQTLvisual_sqtlExp.png, fig.align = 'center', out.width = "30%", fig.cap = "", echo=FALSE----
# knitr::include_graphics("images/visualization/xQTLvisual_sqtlExp.png")

## ---- results = 'hide', echo=TRUE, message=FALSE, warning=FALSE, eval=FALSE----
#  library(data.table)
#  gwasDF <- fread("https://gitee.com/stronghoney/exampleData/raw/master/gwasChr6Sub4.txt")
#  p_all <- xQTLvisual_locusZoom(gwasDF)
#  p_sub <- xQTLvisual_locusZoom(gwasDF, posRange="chr6:4.7e7-4.8e7", population ="EUR")
#  cowplot::plot_grid(p_all, p_sub, align = "h", ncol = 2)

## ---- visualization_locusZoom.png, fig.align = 'center', out.width = "90%", fig.cap = "", echo=FALSE----
# knitr::include_graphics("images/visualization/visualization_locusZoom.png")

## ---- results = 'hide', echo=TRUE, message=FALSE, warning=FALSE, eval=FALSE----
#  eqtlAsso <- xQTLdownload_eqtlAllAsso("RP11-385F7.1",
#                                       tissueLabel = "Brain - Cortex")
#  p_all <- xQTLvisual_locusZoom(eqtlAsso[,c("snpId", "chrom", "pos", "pValue")], highlightSnp="rs4711878" )
#  p_sub <- xQTLvisual_locusZoom(eqtlAsso[,c("snpId", "chrom", "pos", "pValue")], highlightSnp="rs4711878",
#                                posRange="chr6:47.3e6-47.9e6")
#  cowplot::plot_grid(p_all, p_sub, align = "h", ncol = 2)

## ---- visualization_locusZoom_eQTL1.png, fig.align = 'center', out.width = "90%", fig.cap = "", echo=FALSE----
# knitr::include_graphics("images/visualization/visualization_locusZoom_eQTL1.png")

## ---- results = 'hide', echo=TRUE, message=FALSE, warning=FALSE, eval=FALSE----
#  eqtlAssos <- xQTLdownload_eqtlAllAssoPos(chrom = "chr6", pos_lower=47.4e6, pos_upper = 47.7e6,
#                                           tissueLabel = "Brain - Cortex", p_upper=0.1)
#  p1 <- xQTLvisual_locusZoom(eqtlAssos[,c("snpId", "chrom", "pos", "pValue")], highlightSnp = "rs34744382")
#  eqtlAssos_gene <- xQTLdownload_eqtlAllAssoPos(chrom = "chr6", pos_lower=47.4e6, pos_upper = 47.7e6,
#                                                gene="RP11-385F7.1",tissueLabel = "Brain - Cortex", p_upper=0.1)
#  p2 <- xQTLvisual_locusZoom(eqtlAssos_gene[,c("snpId", "chrom", "pos", "pValue")], highlightSnp = "rs34744382")
#  cowplot::plot_grid(p1, p2, align = "h", ncol = 2)

## ---- visualization_locusZoom_eQTLpos.png, fig.align = 'center', out.width = "90%", fig.cap = "", echo=FALSE----
# knitr::include_graphics("images/visualization/visualization_locusZoom_eQTLpos.png")

## ---- results = 'hide', echo=TRUE, message=FALSE, warning=FALSE, eval=FALSE----
#  library(data.table)
#  eqtlDF <-fread("https://gitee.com/stronghoney/exampleData/raw/master/eqtl/eqtlAsso1.txt")
#  gwasDF <-fread("https://gitee.com/stronghoney/exampleData/raw/master/gwas/AD/gwasChr6Sub3.txt")
#  xQTLvisual_locusCompare( eqtlDF, gwasDF, legend_position="topleft")

## ---- visualization_locusCompare.png, fig.align = 'center', out.width = "50%", fig.cap = "", echo=FALSE----
# knitr::include_graphics("images/visualization/visualization_locusCompare.png")

## ---- results = 'hide', echo=TRUE, message=FALSE, warning=FALSE, eval=FALSE----
#  gwasEqtldata <- data.table::fread("http://raw.githubusercontent.com/dingruofan/exampleData/master/gwas/AD/gwasEqtldata.txt")
#  xQTLvisual_locusCombine(gwasEqtldata, highlightSnp="rs13120565")

## ---- xQTLvisual_locusCombine.png, fig.align = 'center', out.width = "90%", fig.cap = "", echo=FALSE----
# knitr::include_graphics("images/visualization/xQTLvisual_locusCombine.png")

## ---- results = 'hide', echo=TRUE, message=FALSE, warning=FALSE, eval=FALSE----
#  speDT <- xQTLanalyze_qtlSpecificity(gene="FLOT1", variantName="rs3130356", study="")
#  xQTLvisual_qtlSpecificity(speDT, outPlot = "heatmap")
#  xQTLvisual_qtlSpecificity(speDT, outPlot = "regression")

## ---- xQTL_visual_eQTLspecificity.png, fig.align = 'center', out.width = "90%", fig.cap = "", echo=FALSE----
# knitr::include_graphics("images/visualization/eQTLspecificity.png")

