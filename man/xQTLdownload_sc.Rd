% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/download.R
\name{xQTLdownload_sc}
\alias{xQTLdownload_sc}
\title{Download all sc-eQTL associations for a specified gene}
\usage{
xQTLdownload_sc(
  gene = "BIN3",
  geneType = "geneSymbol",
  cell_type = "Astrocytes",
  cell_state = "",
  qtl_type = "Cell-type eQTL",
  study_name = "Bryois2022NN"
)
}
\arguments{
\item{gene}{(character) gene symbol or gencode id (versioned or unversioned are both supported).}

\item{geneType}{(character) options: "auto","geneSymbol" or "gencodeId". Default: "geneSymbol".}

\item{cell_type}{(character)cell types supported in the list of study_info from 'xQTLquery_scInfo'}

\item{cell_state}{(character)cell states supported in the list of study_info from 'xQTLquery_scInfo'}

\item{qtl_type}{(character)QTL types supported in the list of study_info from 'xQTLquery_scInfo'}

\item{study_name}{(character)study name supported in the list of study_info from 'xQTLquery_scInfo'}
}
\value{
A data.table object
}
\description{
Download all sc-eQTL associations for a specified gene
}
