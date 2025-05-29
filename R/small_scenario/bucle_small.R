library(quarto)
library(tidyverse)
library(gapminder)

setwd(r"(I:\CTebe\2_Projectes\2025_01TFMLBlanc\3_CodiR)")

seeds <- sample(1:10000, 9) |> 
  as.character()

reports <-
  tibble(
    input = "03_Analysis_2025_01TFMLBlanc_small_v4_loop_v2.qmd",
    output_file = str_glue("Small_v2_{seeds}.html"),
    execute_params = map(seeds, ~ list(report_seed = .))
  )

pwalk(reports, quarto_render)