% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/visualize.R
\name{xQTLvisual_sqtlExp}
\alias{xQTLvisual_sqtlExp}
\title{Boxplot of normalized PSI stratified by genotypes for sQTL.}
\usage{
xQTLvisual_sqtlExp(
  variantName = "",
  phenotypeId = "",
  variantType = "auto",
  tissueSiteDetail = "",
  axis_text_size = 1.3,
  axis_title_size = 1.3,
  title_size = 1.4,
  xlab_text = "Genotypes",
  ylab_text = "Norm.Intron-Excision Ratio",
  ylim_v = NULL,
  title_text = "",
  jitter_color = NULL
)
}
\arguments{
\item{variantName}{(character) name of variant, dbsnp ID and variant id is supported, eg. "rs138420351" and "chr17_7796745_C_T_b38".}

\item{phenotypeId}{A character string. Format like: "chr1:497299:498399:clu_54863:ENSG00000239906.1"}

\item{variantType}{(character) options: "auto", "snpId" or "variantId". Default: "auto".}

\item{tissueSiteDetail}{(character) details of tissues in GTEx can be listed using \code{tissueSiteDetailGTExv8} or \code{tissueSiteDetailGTExv7}}

\item{axis_text_size}{(numberic) text size of the axis labels}

\item{axis_title_size}{(numberic) text size of the axis title}

\item{title_size}{(numberic) text size of the title of the plot}

\item{xlab_text}{(character) Lable for x-axis}

\item{ylab_text}{(character) Lable for x-axis}

\item{ylim_v}{(numeric vector) Set scale limits}

\item{title_text}{(character) Title of the plot}

\item{jitter_color}{(A character vector) Set the point color.}
}
\value{
A list containing variant detail, expression profile and a ggplot object.
}
\description{
Boxplot of normalized PSI stratified by genotypes for sQTL.
}
