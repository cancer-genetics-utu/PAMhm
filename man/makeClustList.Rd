\name{makeClustList}
\alias{makeClustList}
%- Also NEED an '\alias' for EACH other topic documented here.
\title{
  Wrapper around 'pam' to do the actual clustering
}
\description{
  Internal function not to be called by the user directly.
}
\usage{
makeClustList(xlslist, clusternum, metric = "manhatten")
}
%- maybe also 'usage' for other objects documented here.
\arguments{
  \item{xlslist}{
%%     ~~Describe \code{xlslist} here~~
}
  \item{clusternum}{
%%     ~~Describe \code{clusternum} here~~
}
  \item{metric}{
%%     ~~Describe \code{metric} here~~
}
}
\details{
%%  ~~ If necessary, more details than the description above ~~
}
\value{
%%  ~Describe the value returned
%%  If it is a LIST, use
%%  \item{comp1 }{Description of 'comp1'}
%%  \item{comp2 }{Description of 'comp2'}
%% ...
}
\references{
%% ~put references to the literature/web site here ~
}
\note{
%%  ~~further notes~~
}

%% ~Make other sections like Warning with \section{Warning }{....} ~

\seealso{
%% ~~objects to See Also as \code{\link{help}}, ~~~
}
\examples{
##---- Should be DIRECTLY executable !! ----
##-- ==>  Define data, use random,
##--	or do  help(data=index)  for the standard data sets.

## The function is currently defined as
function (xlslist, clusternum, metric = "manhatten")
{
    clustlist <- lapply(xlslist, function(x) {
        y <- list()
        y$dat <- x
        y$PAM <- lapply(clusternum, function(z) {
            p <- list()
            p$clusternum <- z
            p$PAM <- pam(x, z, metric = metric)
            p
        })
        y
    })
  }
}
% Add one or more standard keywords, see file 'KEYWORDS' in the
% R documentation directory.
\keyword{ ~kwd1 }
\keyword{ ~kwd2 }% __ONLY ONE__ keyword per line
