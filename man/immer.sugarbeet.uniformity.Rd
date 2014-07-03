\name{immer.sugarbeet.uniformity}
\alias{immer.sugarbeet.uniformity}
\docType{data}
\title{
  Uniformity study of sugarbeets with measurements of yield, sugar, purity
}
\description{
  A uniformity study of sugarbeets.
}

\format{
  A data frame with 600 observations on the following 5 variables.
  \describe{
    \item{\code{row}}{Row}
    \item{\code{col}}{Column}
    \item{\code{yield}}{Yield, pounds}
    \item{\code{sugar}}{Sugar percentage}
    \item{\code{purity}}{Apparent purity}
  }
}
\details{
  Planted in 1930.  Field conditions were uniform.  Beets were planted
  in rows 22 inches apart.  After thinning, one beet was left in each
  12-inch unit.  At harvest, the field was marked out in plot 33 feet
  long, with a 2-foot alley between plots to minimize carrover from the
  harvester.  A sample of 10 beets was taken uniformly (approximately
  every third beet) and measured for sugar percentage and apparent
  purity.  The beets were counted at weighing time and the yields were
  calculated on the basis of 33 beets per plot.

  Immer found that aggregating the data from one row to two
  resulted in a dramatic reduction in the standard error (for yield).
}
\source{
  F. R. Immer. 1932.
  Size and shape of plot in relation to field experiments with sugar beets.
  \emph{Jour. Agr. Research}, 44, 649--668.
}
\examples{
dat <- immer.sugarbeet.uniformity

# Immer numbers rows from the top
desplot(yield~col*row, data=dat, tick=TRUE, flip=TRUE,
        main="immer.sugarbeet.uniformity - yield")
desplot(sugar~col*row, data=dat, tick=TRUE, flip=TRUE,
        main="immer.sugarbeet.uniformity - sugar")
desplot(purity~col*row, data=dat, tick=TRUE, flip=TRUE,
        main="immer.sugarbeet.uniformity - purity")
pairs(dat[,c('yield','sugar','purity')], main="immer.sugarbeet.uniformity")
}
\keyword{datasets}