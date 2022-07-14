## ---- include = FALSE---------------------------------------------------------
knitr::opts_chunk$set(
  echo=TRUE,
  progress =FALSE,
  comment = "#>"
)

## ---- results = 'hide', echo=TRUE, message=FALSE, warning=FALSE, eval=TRUE----
library(data.table)
library(xQTLbiolinks)
library(stringr)

## ---- results = 'hide', echo=TRUE, message=FALSE, warning=FALSE, eval=FALSE----
#  gwasDF <- fread("29892016-GCST006085-EFO_0001663-build37.f.tsv.gz")
#  # extract columns.
#  gwasDF<- gwasDF[str_detect(variant_id, "^rs"),.(rsid=variant_id, chrom=chromosome, position= base_pair_location, pValue=p_value, AF=effect_allele_frequency, beta, se= standard_error)]
#  # tissue:
#  tissueSiteDetail="Prostate"

## ---- message=FALSE, warning=FALSE, include=FALSE-----------------------------
gwasDF <- example_Coloc_gwasDF

## ---- eval=TRUE---------------------------------------------------------------
head(gwasDF)

## ---- results = 'hide', echo=TRUE, message=FALSE, warning=FALSE, eval=FALSE----
#  sentinelSnpDF <- xQTLanalyze_getSentinelSnp(gwasDF, centerRange=1e6,
#                                              genomeVersion="grch37", grch37To38=TRUE)

## ---- message=FALSE, warning=FALSE, include=FALSE-----------------------------
sentinelSnpDF <- example_Coloc_sentinelSNP

## ---- eval=TRUE---------------------------------------------------------------
head(sentinelSnpDF)

## ---- results = 'hide', echo=TRUE, message=FALSE, warning=FALSE, eval=FALSE----
#  traitsAll <- xQTLanalyze_getTraits(sentinelSnpDF, detectRange=1e6, tissueSiteDetail=tissueSiteDetail)

## ---- message=FALSE, warning=FALSE, include=FALSE-----------------------------
tissueSiteDetail="Prostate"
traitsAll <- example_Coloc_traitsAll

## ---- eval=TRUE---------------------------------------------------------------
head(example_Coloc_traitsAll)

## ---- results = 'hide', echo=TRUE, message=FALSE, warning=FALSE, eval=FALSE----
#  genesAll<- unique(traitsAll$gencodeId)
#  colocResultAll <- data.table()
#  # 162 575 error
#  for(i in 1:length(genesAll)){
#    colocResult <- xQTLanalyze_coloc(gwasDF,
#                                     genomeVersion = "grch37", method="Both",
#                                     genesAll[i], tissueSiteDetail=tissueSiteDetail)
#    if(!is.null(colocResult)){ colocResultAll <- rbind(colocResultAll, colocResult$colocOut)}
#    message(format(Sys.time(), "== %Y-%b-%d %H:%M:%S ")," == Id:",i,"/",length(genesAll)," == Gene:",genesAll[i])
#  }

## ---- message=FALSE, warning=FALSE, include=FALSE-----------------------------
colocResultAll <- example_Coloc_colocResultAll

## ---- eval=TRUE---------------------------------------------------------------
head(colocResultAll)

## ---- results = 'hide', echo=TRUE, message=FALSE, warning=FALSE, eval=FALSE----
#  library(VennDiagram)
#  T <- venn.diagram( list(colocOut = colocResultAll[PP.H4.abf>=0.75]$traitGene,
#                     hyprcolocOut = colocResultAll[hypr_posterior>=0.5]$traitGene),
#                     filename = NULL,lwd=1,lty=1, width = 8000, height = 10000,
#                     fill=c('#ff7a45','#597ef7'), col=c('red','blue'), cat.col=c('red','blue'),
#                     main.cex = 0.45, sub.cex= 0.1,
#                     disable.logging = TRUE)
#  grid.draw(T)

## ---- venn_coloc_hyprcoloc, fig.align = 'center', out.width = "30%", echo=FALSE----
# knitr::include_graphics("images/prostate/venn_coloc_hyprcoloc.png", error = FALSE)

## ---- results = 'hide', echo=TRUE, message=FALSE, warning=FALSE, eval=FALSE----
#  colocResultAll <- fread("https://raw.githubusercontent.com/dingruofan/exampleData/master/colocResultAll.txt")

## ---- message=FALSE, warning=FALSE, include=FALSE-----------------------------
colocResultsig <- example_Coloc_colocResultsig

## ---- results = 'hide', echo=TRUE, message=FALSE, warning=FALSE, eval=FALSE----
#  colocResultsig <- colocResultAll[PP.H4.abf>0.75 & hypr_posterior>0.5][order(-PP.H4.abf)]

## ---- eval=TRUE---------------------------------------------------------------
head(colocResultsig)

## ----eval=TRUE, message=FALSE-------------------------------------------------
outGenes <- xQTLquery_gene(colocResultsig$traitGene)

## ---- eval=TRUE---------------------------------------------------------------
outGenes <- merge(colocResultsig[,.(gencodeId= traitGene, PP.H4.abf, candidate_snp, SNP.PP.H4, hypr_posterior)], 
                  outGenes[,.(geneSymbol, gencodeId, entrezGeneId, geneType)], by="gencodeId", sort=FALSE)
outGenes <- outGenes[geneType =="protein coding"]

## ---- eval=TRUE---------------------------------------------------------------
outGenes

## ---- results = 'hide', echo=TRUE, message=FALSE, warning=FALSE, eval=FALSE----
#  xQTLvisual_genesExp(outGenes$geneSymbol, tissueSiteDetail=tissueSiteDetail)

## ---- prostate_geneExpInOneTissue.png, fig.align = 'center', out.width = "50%", echo=FALSE----
# knitr::include_graphics("images/prostate/prostate_geneExpInOneTissue.png", error = FALSE)

## ---- results = 'hide', echo=TRUE, message=FALSE, warning=FALSE, eval=FALSE----
#  geneExpTissues <- xQTLvisual_geneExpTissues("MMP7", log10y = TRUE)

## ---- prostate_exp_multissues.png, fig.align = 'center', out.width = "90%", echo=FALSE----
# knitr::include_graphics("images/prostate/prostate_exp_multissues.png")

## ---- results = 'hide', echo=TRUE, message=FALSE, warning=FALSE, eval=FALSE----
#  xQTLvisual_eqtl("MMP7")

## ---- prostate_eqtlTissues.png, fig.align = 'center', out.width = "90%", echo=FALSE----
# knitr::include_graphics("images/prostate/prostate_eqtlTissues.png")

## ---- message=FALSE, warning=FALSE, include=FALSE-----------------------------
t1 <- tempfile()
utils::download.file("https://raw.githubusercontent.com/dingruofan/exampleData/master/gwasEqtldata.txt", t1)
gwasEqtldata <- data.table::fread(t1)
close(file(t1))
rm(t1)

## ---- results = 'hide', echo=TRUE, message=FALSE, warning=FALSE, eval=FALSE----
#  # Download all eQTL associations of gene  MMP7 in prostate:
#  eqtlAsso <- xQTLdownload_eqtlAllAsso(gene="MMP7",tissueLabel = tissueSiteDetail)
#  # Merge the variants of GWAS and eQTL dataset by rsid:
#  gwasEqtldata <- merge(gwasDF[,-c("AF")], eqtlAsso[,.(rsid=snpId, pValue)],
#                        by=c("rsid"), suffixes = c(".gwas",".eqtl"))

## ---- eval=TRUE---------------------------------------------------------------
gwasEqtldata

## ---- results = 'hide', echo=TRUE, message=FALSE, warning=FALSE, eval=FALSE----
#  xQTLvisual_locusCompare(gwasEqtldata[,.(rsid, pValue.eqtl)],
#                          gwasEqtldata[,.(rsid, pValue.gwas)], legend_position = "bottomright")

## ---- prostate_locuscompare.png, fig.align = 'center', out.width = "50%", echo=FALSE----
# knitr::include_graphics("images/prostate/prostate_locuscompare.png")

## ---- results = 'hide', echo=TRUE, message=FALSE, warning=FALSE, eval=FALSE----
#  xQTLvisual_locusZoom(gwasEqtldata[,.(rsid, chrom, position, pValue.gwas)], legend=FALSE)

## ---- prostate_locuszoom_gwas.png, fig.align = 'center', out.width = "50%", echo=FALSE----
# knitr::include_graphics("images/prostate/prostate_locuszoom_gwas.png")

## ---- results = 'hide', echo=TRUE, message=FALSE, warning=FALSE, eval=FALSE----
#  xQTLvisual_locusZoom(gwasEqtldata[,.(rsid, chrom, position, pValue.eqtl)], legend=FALSE)

## ---- prostate_locuszoom_eqtl.png, fig.align = 'center', out.width = "50%", echo=FALSE----
# knitr::include_graphics("images/prostate/prostate_locuszoom_eqtl.png")

## ---- results = 'hide', echo=TRUE, message=FALSE, warning=FALSE, eval=FALSE----
#  xQTLvisual_locusCombine(gwasEqtldata[,c("rsid","chrom", "position", "pValue.gwas", "pValue.eqtl")])

## ---- prostate_combined.png, fig.align = 'center', out.width = "90%", echo=FALSE----
# knitr::include_graphics("images/prostate/prostate_combined.png")

## ---- results = 'hide', echo=TRUE, message=FALSE, warning=FALSE, eval=FALSE----
#  xQTLvisual_eqtlExp("rs11568818", "MMP7", tissueSiteDetail = tissueSiteDetail)

## ---- prostate_eQTL_exp.png, fig.align = 'center', out.width = "40%", echo=FALSE----
# knitr::include_graphics("images/prostate/prostate_eQTL_exp.png")

## ---- results = 'hide', echo=TRUE, message=FALSE, warning=FALSE, eval=FALSE----
#  expMat <- xQTLdownload_exp(outGenes$gencodeId, tissueSiteDetail=tissueSiteDetail, toSummarizedExperiment =FALSE)

## ---- results = 'hide', echo=TRUE, message=FALSE, warning=FALSE, eval=FALSE----
#  corDT <- cor(t(expMat[,-1:-7]))
#  colnames(corDT) <- outGenes$geneSymbol
#  rownames(corDT) <- outGenes$geneSymbol

## ---- results = 'hide', echo=TRUE, message=FALSE, warning=FALSE, eval=FALSE----
#  library(corrplot)
#  corrplot(corDT, method="color",
#           type="upper",
#           order = "hclust",
#           addCoef.col = "#ff0099",
#           number.cex = 0.7)

## ---- prostate_cor.png, fig.align = 'center', out.width = "90%", echo=FALSE----
# knitr::include_graphics("images/prostate/prostate_cor.png")

## ---- results = 'hide', echo=TRUE, message=FALSE, warning=FALSE, eval=FALSE----
#  library(clusterProfiler)
#  library(org.Hs.eg.db)
#  ego <- enrichGO(gene = as.character(outGenes$entrezGeneId),
#                  OrgDb = org.Hs.eg.db,
#                  ont= "BP",
#                  pAdjustMethod ="none",
#                  readable = TRUE)
#  dotplot(ego, showCategory=15)

## ---- prostate_Go.png, fig.align = 'center', out.width = "80%", echo=FALSE----
# knitr::include_graphics("images/prostate/prostate_Go.png")

