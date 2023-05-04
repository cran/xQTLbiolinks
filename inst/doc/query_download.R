## ---- include = FALSE---------------------------------------------------------
knitr::opts_chunk$set(
  echo=TRUE,
  progress =FALSE,
  comment = "#>"
)
options(rmarkdown.html_vignette.check_title = FALSE)

## ---- results = 'hide', echo=TRUE, message=FALSE, warning=FALSE, eval=FALSE----
#  library(xQTLbiolinks)
#  library(data.table)
#  library(stringr)

## ---- results = 'hide', echo=TRUE, message=FALSE, warning=FALSE, eval=FALSE----
#  eQTL_sig1 <- xQTLquery_eqtlSig("rs201327123")
#  eQTL_sig1 <- xQTLquery_eqtlSig("chr1_14677_G_A_b38")
#  # Query significant eQTL associations with a variant id in a specified tissue:
#  eQTL_sig1 <- xQTLquery_eqtlSig("chr1_14677_G_A_b38",
#                      tissueSiteDetail="Skin - Sun Exposed (Lower leg)")

## ---- eval=FALSE--------------------------------------------------------------
#  eQTL_sig1

## ---- results = 'hide', echo=TRUE, message=FALSE, warning=FALSE, eval=FALSE----
#  varInfo <-  xQTLquery_varPos(chrom="chr1", pos=c(1102708))
#  eQTL_sig2 <- xQTLquery_eqtlSig(variantName=varInfo$snpId)

## ---- eval=FALSE--------------------------------------------------------------
#  head(eQTL_sig2)

## ---- results = 'hide', echo=TRUE, message=FALSE, warning=FALSE, eval=FALSE----
#  eQTL_sig3 <- xQTLquery_eqtlSig(genes="ATAD3B")
#  eQTL_sig3 <- xQTLquery_eqtlSig(genes=c("TP53", "SLC35E2B"), tissueSiteDetail= "Brain - Cerebellum")
#  eQTL_sig3 <- xQTLquery_eqtlSig(genes="ENSG00000141510.16")

## ---- eval=FALSE--------------------------------------------------------------
#  head(eQTL_sig3)

## ---- results = 'hide', echo=TRUE, message=FALSE, warning=FALSE, eval=FALSE----
#  eQTL_sig4 <- xQTLquery_eqtlSig(variantName="rs1641513", genes="TP53")
#  eQTL_sig4 <- xQTLquery_eqtlSig(variantName="chr1_1667948_A_G_b38",
#                       genes="SLC35E2B", tissueSiteDetail="Kidney - Cortex")

## ---- eval=FALSE--------------------------------------------------------------
#  eQTL_sig4

## ---- results = 'hide', echo=TRUE, message=FALSE, warning=FALSE, eval=FALSE----
#  # Query with a gene symbol:
#  eqtlMeta <- xQTLquery_eqtl(gene="TP53")
#  # Query with a variant-gene pair:
#  eqtlMeta <- xQTLquery_eqtl(variantName="rs1641513",gene="TP53")

## ---- eval=FALSE--------------------------------------------------------------
#  head(eqtlMeta)

## ---- results = 'hide', echo=TRUE, message=FALSE, warning=FALSE, eval=FALSE----
#  sQTL_sig1 <- xQTLquery_sqtlSig(variantName="rs201327123")
#  sQTL_sig1 <- xQTLquery_sqtlSig(variantName="chr1_14677_G_A_b38", tissueSiteDetail="Whole Blood")

## ---- eval=FALSE--------------------------------------------------------------
#  sQTL_sig1

## ---- results = 'hide', echo=TRUE, message=FALSE, warning=FALSE, eval=FALSE----
#  sQTL_sig2 <- xQTLquery_sqtlSig(genes="ENSG00000141510.16", tissueSiteDetail="Lung" )
#  sQTL_sig2 <- xQTLquery_sqtlSig(genes=c("ATAD3B", "MLH1"))

## ---- eval=FALSE--------------------------------------------------------------
#  sQTL_sig2

## ---- results = 'hide', echo=TRUE, message=FALSE, warning=FALSE, eval=FALSE----
#  sQTL_sig3 <- xQTLquery_sqtlSig(variantName="rs201327123", genes=c("WASH7P","RP11-206L10.2"))
#  sQTL_sig3 <- xQTLquery_sqtlSig(variantName="chr17_7465085_A_G_b38", genes="TP53",
#                                 tissueSiteDetail="Lung")

## ---- eval=FALSE--------------------------------------------------------------
#  sQTL_sig3

## ---- results = 'hide', echo=TRUE, message=FALSE, warning=FALSE, eval=FALSE----
#  eqtlAssos <- xQTLdownload_eqtlAllAsso(gene="MLH1", variantName = "rs13315355", study="")

## ---- results = 'hide', echo=TRUE, message=FALSE, warning=FALSE, eval=FALSE----
#  eqtlAssos <- xQTLdownload_eqtlAllAsso("ATP11B", tissueLabel="Muscle - Skeletal")

## ---- results = 'hide', echo=TRUE, message=FALSE, warning=FALSE, eval=FALSE----
#  eqtlAssos <- xQTLdownload_eqtlAllAsso(variantName="rs11568818", study="")

## ---- results = 'hide', echo=TRUE, message=FALSE, warning=FALSE, eval=FALSE----
#  eqtlAssos <- xQTLdownload_eqtlAllAsso(variantName="chr11_102530930_T_C_b38",
#                                     tissueLabel="Muscle - Skeletal", study="GTEx_V8")

## ---- results = 'hide', echo=TRUE, message=FALSE, warning=FALSE, eval=FALSE----
#  eqtlAssos <- xQTLdownload_eqtlAllAsso(gene="MMP7",tissueLabel = "CD4+ T cell", study="")

## ---- eval=FALSE--------------------------------------------------------------
#  eqtlAssos

## ---- results = 'hide', echo=TRUE, message=FALSE, warning=FALSE, eval=FALSE----
#  sqtlAssos <- xQTLdownload_sqtlAllAsso(genes=c("MMP7","TP53"), tissue="Lung")

## ---- eval=FALSE--------------------------------------------------------------
#  sqtlAssos

## ---- results = 'hide', echo=TRUE, message=FALSE, warning=FALSE, eval=FALSE----
#  aqtlAssos <- xQTLdownload_xqtlAllAsso(genes=c("MMP7"), tissue="Lung")

## ---- eval=FALSE--------------------------------------------------------------
#  aqtlAssos

## ---- results = 'hide', echo=TRUE, message=FALSE, warning=FALSE, eval=FALSE----
#  geneInfo <- xQTLquery_gene("TP53")
#  geneInfo <- xQTLquery_gene(c("tp53","naDK","SDF4") )
#  geneInfo <- xQTLquery_gene(c("ENSG00000210195.2","ENSG00000078808"))

## ---- eval=FALSE--------------------------------------------------------------
#  geneInfo

## ---- results = 'hide', echo=TRUE, message=FALSE, warning=FALSE, eval=FALSE----
#  varInfo <- xQTLquery_varId("rs12596338")
#  varInfo <- xQTLquery_varId("chr11_66561248_T_C_b38")
#  varInfo <- xQTLquery_varPos(chrom="chr1", pos=c(1102708,1105739))

## ---- eval=FALSE--------------------------------------------------------------
#  varInfo

## ---- results = 'hide', echo=TRUE, message=FALSE, warning=FALSE, eval=FALSE----
#  tissueAll <- xQTLquery_tissue() # fetch all tissues in GTEx
#  Brain <- xQTLquery_tissue("Brain")

## ---- eval=FALSE--------------------------------------------------------------
#  Brain

## ---- results = 'hide', echo=TRUE, message=FALSE, warning=FALSE, eval=FALSE----
#  sampleInfo <- xQTLquery_sampleByTissue("Brain - Amygdala" )
#  sampleInfo <- xQTLquery_sampleByTissue(tissueSiteDetail="Liver", pathologyNotesCategories=TRUE)
#  sampleIds <- c("GTEX-11NUK-0011-R4a-SM-DO12B", "GTEX-11ONC-0011-R4b-SM-DO93H",
#                 "GTEX-11DXY-0526-SM-5EGGQ", "GTEX-13OVJ-1026-SM-5IFGI")
#  sampleInfo <- xQTLquery_sampleBySampleId(sampleIds)

## ---- eval=FALSE--------------------------------------------------------------
#  sampleInfo

## ---- results = 'hide', echo=TRUE, message=FALSE, warning=FALSE, eval=FALSE----
#  eQTLexp <- xQTLdownload_eqtlExp(variantName="rs1641513",gene="TP53", tissueSiteDetail="Liver")

## ---- results = 'hide', echo=TRUE, message=FALSE, warning=FALSE, eval=FALSE----
#  eQTLexp <- xQTLdownload_eqtlExp(variantName="chr1_14677_G_A_b38",gene="ENSG00000228463.9",
#                                  tissueSiteDetail="Stomach")

## ---- eval=FALSE--------------------------------------------------------------
#  eQTLexp

## ---- results = 'hide', echo=TRUE, message=FALSE, warning=FALSE, eval=FALSE----
#  sQTLratio <- xQTLdownload_sqtlExp(variantName="rs1450891501",
#                                  phenotypeId="chr1:497299:498399:clu_54863:ENSG00000239906.1",
#                                  tissueSiteDetail="Lung")

## ---- results = 'hide', echo=TRUE, message=FALSE, warning=FALSE, eval=FALSE----
#  sQTLratio <- xQTLdownload_sqtlExp(variantName="chr1_1259424_T_C_b38",
#                                  phenotypeId=" chr1:1487914:1489204:clu_52051:ENSG00000160072.19",
#                                  tissueSiteDetail="Adipose - Subcutaneous")

## ---- eval=FALSE--------------------------------------------------------------
#  sQTLratio

## ---- results = 'hide', echo=TRUE, message=FALSE, warning=FALSE, eval=FALSE----
#  eGeneInfo <- xQTLdownload_egene(tissueSiteDetail="Prostate", recordPerChunk=2000)
#  eGeneInfo <- xQTLdownload_egene("TP53")

## ---- eval=FALSE--------------------------------------------------------------
#  eGeneInfo

## ---- results = 'hide', echo=TRUE, message=FALSE, warning=FALSE, eval=FALSE----
#  sGeneInfo <- xQTLdownload_sgene(tissueSiteDetail="Liver")
#  sGeneInfo <- xQTLdownload_sgene(gene="DDX11", tissueSiteDetail="Liver" )

## ---- eval=FALSE--------------------------------------------------------------
#  eGeneInfo

## ---- results = 'hide', echo=TRUE, message=FALSE, warning=FALSE, eval=FALSE----
#  expProfiles <- xQTLdownload_exp("ENSG00000210195.2", tissueSiteDetail="Liver")

## ---- results = 'hide', echo=TRUE, message=FALSE, warning=FALSE, eval=FALSE----
#  expProfiles <- xQTLdownload_exp("ENSG00000210195.2", tissueSiteDetail="Liver",
#                 toSummarizedExperiment=TRUE)
#  # extract expression profile from SummarizedExperiment object:
#  expDT <- SummarizedExperiment::assay(expProfiles)
#  # extract samples' detail from SummarizedExperiment object:
#  sampleDT <- SummarizedExperiment::colData(expProfiles)

## ---- results = 'hide', echo=TRUE, message=FALSE, warning=FALSE, eval=FALSE----
#  expProfiles <- xQTLdownload_exp(c("tp53","naDK","SDF4"),
#                                  tissueSiteDetail="Artery - Coronary",
#                                  pathologyNotesCategories=TRUE)

## ---- results = 'hide', echo=TRUE, message=FALSE, warning=FALSE, eval=FALSE----
#  expProfiles <- xQTLdownload_exp(c("ENSG00000141510.16","ENSG00000008130.15","ENSG00000078808"),
#                                 tissueSiteDetail="Artery - Coronary")

## ---- eval=FALSE--------------------------------------------------------------
#  expProfiles[,1:12]

## ---- results = 'hide', echo=TRUE, message=FALSE, warning=FALSE, eval=FALSE----
#  geneMedExp <- xQTLdownload_geneMedExp(genes=c("TP53", "IRF5"))

## ---- eval=FALSE--------------------------------------------------------------
#  geneMedExp

