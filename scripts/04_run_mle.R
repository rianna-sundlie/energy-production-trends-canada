library(here)

# 1. Load cleaned data
source(here("scripts", "01_clean_data.R"), local = FALSE)

# 2. Load likelihood function
source(here("scripts", "03_mle_function.R"), local = FALSE)

# 3. Run MLE for renewable
startRenew <- c(mean(renewYearly$TotalRenewable), 
                sd(renewYearly$TotalRenewable))
mleRenew <- optim(
  startRenew,
  logLikelihood,
  data = renewYearly$TotalRenewable,
  method = "L-BFGS-B",
  lower = c(-Inf, 1e-6)   # sd must be > 0
)

# 4. Run MLE for nonrenewable
startNonrenew <- c(mean(nonrenewYearly$TotalNonrenewable), 
                   sd(nonrenewYearly$TotalNonrenewable))
mleNonrenew <- optim(
  startNonrenew,
  logLikelihood,
  data = nonrenewYearly$TotalNonrenewable,
  method = "L-BFGS-B",
  lower = c(-Inf, 1e-6)
)