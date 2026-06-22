# Renewable vs Non-Renewable Energy Trends in Canada (2005-2016)
## Overview
This project analyzes how electricity generation from renewable and non‑renewable sources has changed in Canada from 2005 to 2016. The goal is to understand long‑term trends, compare variability, and evaluate whether production patterns shifted over time.

The analysis uses real data from the Government of Canada Open Data Portal and applies statistical methods including:
* Maximum Likelihood Estimation (MLE)
* Confidence intervals
* Two‑sample t‑tests
* Time‑series visualization
* Distribution comparisons

This project is part of a statistical analysis course and demonstrates reproducible workflows using R, tidyverse, and structured project organization.

## Project Structure
* data/raw/ - Original dataset from the Government of Canada
* data/cleaned/ - Aggregated yearly totals for renewable and non-renewable energy
* notebooks/ - R Markdown notebook (.Rmd) and knitted HTML (.nb.html)
* scripts/ - Optional scripts for data cleaning or model saving
* visuals/ - Final polished charts
* models/ - Saved model objects (MLE, trendlines)
* reports/ - Complete written analysis and detailed findings

## Data Source
The dataset includes:
* Region
* Source (Hydro, Wind, Solar, Biomass, Nuclear, Coal, Natural Gas, Oil & Diesel)
* Year (2005-2016)
* Energy Generated (GWh)

Data was downloaded from the Government of Canada Open Data Portal.

## Methods
The analysis includes:
1) Data Preparation
  * Filtered to include only the Canada region
  * Grouped energy sources into renewable and non‑renewable
  * Aggregated yearly totals for each category

2) Maximum Likelihood Estimation (MLE)
  * Estimated mean and standard deviation for:
      + Renewable energy generation
      + Non‑renewable energy generation
  * Used these estimates to compare central tendency and variability

3) Confidence Intervals
  * Constructed 95% CIs for:
      + Mean generation
      + Standard deviation
  * Compared uncertainty between renewable and non‑renewable sources

4) Hypothesis Testing
  * Two‑sample t‑tests comparing:
      + Renewable vs non‑renewable means
      + Early period (2005–2010) vs late period (2011–2016)

5) Visualizations
* Bar plot of yearly generation
* Time‑series plot with trendlines
* Boxplots for distribution comparisons

## Key Findings
1. Renewable energy consistently generated more electricity than non‑renewable sources
  * Renewable production was higher every year from 2005–2016
  * The gap widened over time

2. Renewable energy showed much higher variability
  * Renewable sources depend on weather conditions
  * Non‑renewable sources were more stable and predictable

3. Strong upward trend in renewable energy (2011–2016)
  * Later years showed significantly higher renewable output
  * Confirmed by a low p‑value in the period comparison test

4. Non‑renewable energy remained stable
  * No significant change between early and late periods
  * Production levels fluctuated only slightly year‑to‑year

5. Canada is trending toward cleaner energy
  * Renewable energy increased
  * Non‑renewable energy stayed controlled and limited
  * The overall direction aligns with national sustainability goals

## Tools and Technologies
- R
- tidyverse
- ggplot2
- here
- Base R statistical functions

## References
- Secretariat, T. B. of C., & Secretariat, T. B. of C. (n.d.). Open Government Portal. Open.canada.ca. https://open.canada.ca/data/en/dataset/2cdf43fc-d4aa-4604-9f21-29777d955810/resource/b751e0dc-1a00-417a-9f04-b4777adb521f
