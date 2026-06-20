library(here)

source(here("scripts", "01_clean_data.R"), local = FALSE)

# Create cleaned data folder if it doesn't exist
clean_path <- here("data", "cleaned")
if (!dir.exists(clean_path)) {
  dir.create(clean_path, recursive = TRUE)
}

# Save cleaned datasets
write.csv(renewYearly, here("data", "cleaned", "renewable_yearly_totals.csv"), row.names = FALSE)
write.csv(nonrenewYearly, here("data", "cleaned", "nonrenewable_yearly_totals.csv"), row.names = FALSE)