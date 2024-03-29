% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/visualize.R
\name{xQTLvisual_genoBox}
\alias{xQTLvisual_genoBox}
\title{Boxplot of values stratified by genotypes with customized data}
\usage{
xQTLvisual_genoBox(
  genoDT,
  axis_text_size = 1.3,
  axis_title_size = 1.3,
  title_size = 1.4,
  xlab_text = "Genotypes",
  ylab_text = "Normalized expression",
  ylim_v = NULL,
  title_text = "",
  jitter_color = NULL
)
}
\arguments{
\item{genoDT}{(Data.framt) including two columns, "value" and "genotypes"}

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
A ggplot object.
}
\description{
Boxplot of values stratified by genotypes with customized data
}
\examples{
\donttest{
url1 <- "http://bioinfo.szbl.ac.cn/xQTL_biolinks/xqtl_data/eqtl/eqtlExpLabel.txt"
genoDT <- data.table::fread(url1)
box_plot <- xQTLvisual_genoBox(genoDT, title_size=1.6, title_text="Geno-Exp association" )
}
}
