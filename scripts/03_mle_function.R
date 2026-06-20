logLikelihood <- function(params, data){
  mu <- params[1]
  sd <- params[2]
  -sum(dnorm(data, mean = mu, sd = sd, log=TRUE))
}
