# Load dependencies
library(here)

# Source the cleaning + MLE script
source(here("scripts", "01_clean_data.R"), local = FALSE)

# Create models directory if it doesn't exist
model_path <- here("models")
if (!dir.exists(model_path)) {
  dir.create(model_path, recursive = TRUE)
}

# Save MLE model objects
saveRDS(mleRenew, file = here("models", "mle_renewable.rds"))
saveRDS(mleNonrenew, file = here("models", "mle_nonrenewable.rds"))

# Save trendline models
renew_trend <- lm(renewYearly$TotalRenewable ~ renewYearly$Year)
nonrenew_trend <- lm(nonrenewYearly$TotalNonrenewable ~ nonrenewYearly$Year)

saveRDS(renew_trend, file = here("models", "renewable_trend_model.rds"))
saveRDS(nonrenew_trend, file = here("models", "nonrenewable_trend_model.rds"))
