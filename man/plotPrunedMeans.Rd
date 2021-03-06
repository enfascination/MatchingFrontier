\name{plotPrunedMeans}
\alias{plotPrunedMeans}
%- Also NEED an '\alias' for EACH other topic documented here.
\title{
  Plot covariate means for the removed observations along the frontier.
}
\description{
  \code{plotMeans()} plots means for the
  removed observations along the frontier.
}
\usage{
plotMeans(frontier.object,
          xlab = 'Number of Observations Pruned',
          main = 'Means Plot',
          xlim = c(1,max(frontier.object$frontier$Xs)),
          ylim = c(0, 1),
          cols = rainbow(length(frontier.object$match.on)),
          diff.in.means = FALSE,
          ...)
}
%- maybe also 'usage' for other objects documented here.
\arguments{
  \item{frontier.object}{
    An object generated by \code{makeFrontier()}
  }
  \item{xlab}{
    The label for the x-axis. Defaults to 'Number of Observations Pruned'.
  }
  \item{main}{
    The main label. Defaults to Means Plot'.
  }
  \item{xlim}{
    The x-axis limits. Defaults to the range of the frontier.
  }
  \item{ylim}{
    The y-axis limits. Defaults to (0, 1).
  }
  \item{cols}{
    The line colors. Defaults to the rainbow palette.
  }
  \item{diff.in.means}{
    If TRUE, means are the difference in means between
    treated and control groups. If FALSE (the default),
    means are the covariate means pooling across treated
    and control.
  }
  \item{\dots}{
    Additional arguments to be passed to \code{plot}.
  }
}
\details{
  \code{plotMeans()} wraps \code{plot} and uses \dots to
  pass additional arguments to the base \code{plot()} function.
}
\examples{
data(lalonde)

match.on <- colnames(lalonde)[!(colnames(lalonde) \%in\% c('re78', 'treat'))]
my.frontier <- makeFrontier(dataset = lalonde,
                            treatment = 'treat',
                            outcome = 're78',
                            match.on = match.on)

plotMeans(my.frontier)
}
\references{
  King, Gary, Christopher Lucas, and Richard
  Nielsen. "The Balance-Sample 
  Size Frontier in Matching Methods for Causal Inference." (2015).
}
