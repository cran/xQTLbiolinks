% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/anno.R
\name{xQTLanno_genomic}
\alias{xQTLanno_genomic}
\title{annotate all signals in GWAS / QTL dataset by genome location}
\usage{
xQTLanno_genomic(snpInfo = "", p_cutoff = 5e-08, genomeVersion = "hg38")
}
\arguments{
\item{snpInfo}{A data.table/data.frame with three columns: chromosome, position, and P-value.}

\item{p_cutoff}{Cutoff of p-values of significant variants that will be annotated}

\item{genomeVersion}{"hg38" (default) or "hg19". Note: hg19 will be converted to hg38 automatically.}
}
\value{
A data.table object of variants' genomics distribution
}
\description{
annotate all signals in GWAS / QTL dataset by genome location
}
