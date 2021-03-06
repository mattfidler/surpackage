#' Bootstrapped Mean
#' @importFrom stats na.omit sd
#' @description Function to obtain a sampling distribution of means by bootstrapping.
#' @param x original sample, given as a numeric or logical object, to be used to generate bootstrapped samples.
#' @param B number of bootstrapped samples to be generated by randomly sampling with replacement.
#' @param n size of each bootstrapped sample. Default setting is the size of the original sample.
#' @return A list with components:
#' \item{Replications}{number of bootstrapped means computed.}
#' \item{mean}{mean of bootstrapped means.}
#' \item{se}{standard error, estimated as the standard deviation of bootstrapped means.}
#' \item{bootstrap.samples}{means of bootstrapped samples.}
#' @seealso \code{\link[base]{set.seed}}
#' @examples
#' # using simple vector
#' a = 1:10
#' set.seed(1234)
#' boot.mean(a, B = 500)
#'
#' # using variable from data frame
#' set.seed(1234)
#' boot.mean(Framingham$AGE3, B = 1000)
#' @export
boot.mean = function(x, B, n = length(x)){
  ifelse(n == length(x), n <- length(na.omit(x)), n <- n)
  x = na.omit(x)
  ind = 1:length(x)
  results = matrix(c(0), nrow = n, ncol = B)
  for(i in 1:B){
    newind = sample(ind, n, replace = T)
    results[,i] = x[newind]
  }
  b = colMeans(results)
  output = list(Replications = length(b), mean = mean(b), se = sd(b), bootstrap.samples = b)
  output
}
