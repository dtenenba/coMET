\name{snpLocationsUCSC}
\alias{snpLocationsUCSC}
%- Also NEED an '\alias' for EACH other topic documented here.
\title{
Create a SNP track from UCSC
}
\description{
Create a SNP track from UCSC using the Gviz bioconductor package
}
\usage{
snpLocationsUCSC(gen, chr, start, end, track)
}
%- maybe also 'usage' for other objects documented here.
\arguments{
 \item{gen}{
the name of the genome
}
  \item{chr}{
the chromosome of interest
}
  \item{start}{
the first position in the region of interest (the smallest value)
}
  \item{end}{
the last position in the region of interest (the largest value)
}
 
  \item{track}{
 The name of the database. Example "snp138"
}
}
%%\details{
%%  ~~ If necessary, more details than the description above ~~
%%}
\value{
An UcscTrack object of Gviz
}
\references{
http://genome-euro.ucsc.edu/cgi-bin/hgTrackUi?hgsid=202839739_2hYQ1BAOuBMAR620GjrtdrFAy6dn&c=chr6&g=snp141

http://bioconductor.org/packages/release/bioc/html/Gviz.html
}
\author{
Tiphaine Martin
}
%%\note{
%%  ~~further notes~~
%%}

%% ~Make other sections like Warning with \section{Warning }{....} ~

\seealso{
 \code{\link{snpLocationsUCSC}},  \code{\link{structureBiomart}},  \code{\link{COSMICTrack}}, 
  \code{\link{CoreillCNVTrack}}, \code{\link{ClinVarMainTrack}}, 
  \code{\link{ClinVarCnvTrack}}, 
}
\examples{
library("Gviz")
gen <- "hg19"
chr <- "chr7"
start <- 38290160
end <- 38303219

if(interactive()) {
  snpUCSCtrack<-snpLocationsUCSC(gen,chr,start,end,"snp138")
  plotTracks(snpUCSCtrack, from = start, to =end) 
} else {
  data(snpUCSCtrack)
  plotTracks(snpUCSCtrack, from = start, to =end) 
}

}
% Add one or more standard keywords, see file 'KEYWORDS' in the
% R documentation directory.
\keyword{ hplot }
