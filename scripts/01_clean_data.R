library(here)
library(dplyr)

# run this script with:
# source(here("scripts", "01_clean_data.R"), local = FALSE)

# import the data set
production <- read.csv(here("data", "raw", "electricity-generation-dataset.csv"))

# define renewable vs nonrenewable
renewables <- c("Hydro", "Wind", "Solar", "Biomass")
nonrenewables <- c("Nuclear", "Coal", "Natural Gas", "Oil and Diesel")

# conversion to factor type required for sorting
production$Source <- as.factor(production$Source)

# renewable energy source subset
renew_df <- production[production$Source %in% renewables,]
renewYearly <- renew_df %>%
  group_by(Year) %>%
  summarise(TotalRenewable = sum(Data, na.rm = TRUE))

# non-renewable energy source subset
nonrenew_df <- production[production$Source %in% nonrenewables,]
nonrenewYearly <- nonrenew_df %>%
  group_by(Year) %>%
  summarise(TotalNonrenewable = sum(Data, na.rm = TRUE))
