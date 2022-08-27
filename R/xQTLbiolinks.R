#' @title  Tissue name and tissue id mapping of GTEx V8.
#' @description
#'  A dataset containing the 54 tissues' name and corresponding ID of GTEx V8.
#' @docType data
#' @keywords internal
#' @name tissueSiteDetailGTExv8
#' @format A data frame with 54 rows and 2 variables
#' @source \url{https://gtexportal.org/home/}
NULL


#' @title Tissue name and tissue id mapping of GTEx V7.
#' @description
#'  A dataset containing the 53 tissues' name and corresponding ID of GTEx V7.
#' @docType data
#' @keywords internal
#' @name tissueSiteDetailGTExv7
#' @format A data frame with 53 rows and 2 variables:
#' @source \url{https://gtexportal.org/home/}
NULL

#' @title samples used in GTEx eQTL analysis.
#' @description
#'  A dataset containing the 49 tissues' name and corresponding sample number.
#' @docType data
#' @keywords internal
#' @name sampleNum
#' @format A data frame with 49 rows and 2 variables:
#' @source \url{https://gtexportal.org/home/}
NULL

#' @title Gene annotations (chr1-chr22).
#' @description
#'  A dataset containing the gene information.
#' @docType data
#' @keywords internal
#' @name gencodeGeneInfoAllGranges
#' @format A GRanges object
#' @source \url{https://gtexportal.org/home/}
NULL

#' @title Gene types in GTEx V8 and V7
#' @description
#'  A dataset containing the classification of genes
#' @docType data
#' @keywords internal
#' @name gencodeGenetype
#' @format A list
#' @source \url{https://gtexportal.org/home/}
NULL

#' @title data for vignette
#' @description
#'  head 6 rows of gwasDF of GLGC_CG0276_result.txt(GCST006085)
#' @docType data
#' @keywords internal
#' @name example_Coloc_gwasDF
#' @format A Data.table
#' @source \url{http://ftp.ebi.ac.uk/pub/databases/gwas/summary_statistics/GCST006001-GCST007000/GCST006085/harmonised/29892016-GCST006085-EFO_0001663-build37.f.tsv.gz}
NULL

#' @title data for vignette
#' @description
#'  head 6 rows of sentinelSnpDF of xQTLanalyze_getSentinelSnp
#' @docType data
#' @keywords internal
#' @name example_Coloc_sentinelSNP
#' @format A Data.table
#' @source xQTLanalyze_getSentinelSnp
NULL

#' @title data for vignette
#' @description
#'  head 6 rows of traitsAll of xQTLanalyze_getTraits
#' @docType data
#' @keywords internal
#' @name example_Coloc_traitsAll
#' @format A Data.table
#' @source xQTLanalyze_getTraits
NULL

#' @title data for vignette
#' @description
#'  head 6 rows of traitsAll of xQTLanalyze_coloc
#' @docType data
#' @keywords internal
#' @name example_Coloc_colocResultAll
#' @format A Data.table
#' @source xQTLanalyze_coloc
NULL

#' @title data for vignette
#' @description
#'  head 5 rows of hyprcoloc results from xQTLanalyze_coloc
#' @docType data
#' @keywords internal
#' @name example_Coloc_hyprcolocResultAll
#' @format A Data.table
#' @source xQTLanalyze_coloc
NULL

#' @title data for vignette
#' @description
#'  head 6 rows of traitsAll of significant results from xQTLanalyze_coloc
#' @docType data
#' @keywords internal
#' @name example_Coloc_colocResultsig
#' @format A Data.table
#' @source xQTLanalyze_coloc
NULL

#' @title data for vignette
#' @description
#'  a dataset containing all study-tissues mapping relationships.
#' @docType data
#' @keywords internal
#' @name ebi_study_tissues
#' @format A Data.table
#' @source \url{https://www.ebi.ac.uk/eqtl/api-docs/#accessing-the-api} or EBIquery_allTerm
NULL

utils::globalVariables("tissueSiteDetailGTExv8")
utils::globalVariables("tissueSiteDetailGTExv7")
utils::globalVariables("sampleNum")
utils::globalVariables("gencodeGeneInfoAllGranges")
utils::globalVariables("gencodeGenetype")
# utils::globalVariables("ebi_qtl_groups")
utils::globalVariables("ebi_study_tissues")

utils::globalVariables("example_Coloc_gwasDF")
utils::globalVariables("example_Coloc_sentinelSNP")
utils::globalVariables("example_Coloc_traitsAll")
utils::globalVariables("example_Coloc_colocResultAll")
utils::globalVariables("example_Coloc_colocResultsig")
utils::globalVariables("example_Coloc_hyprcolocResultAll")

