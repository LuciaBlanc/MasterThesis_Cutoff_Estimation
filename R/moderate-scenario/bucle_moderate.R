library(quarto)
library(tidyverse)
library(gapminder)

setwd(r"(I:\CTebe\2_Projectes\2025_01TFMLBlanc\3_CodiR)")

seeds <- sample(1:10000, 50) |> 
  as.character()

reports <-
  tibble(
    input = "03_Analysis_2025_01TFMLBlanc_moderate_v1_loop_v2.qmd",
    output_file = str_glue("Moderate_{seeds}_v2.html"),
    execute_params = map(seeds, ~ list(report_seed = .))
  )

pwalk(reports, quarto_render)