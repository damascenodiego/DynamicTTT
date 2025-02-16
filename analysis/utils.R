list.of.packages <- c(
  "dplyr","ggplot2","psych",
  "knitr","likert", "scales",
  "ggrepel", "stringr", "data.table",
  "gridExtra" , "reshape2", "tidyverse",
  "effsize"
)

new.packages <- list.of.packages[!(list.of.packages %in% installed.packages()[,"Package"])]
if(length(new.packages)) install.packages(new.packages, dependencies = TRUE)
lapply(list.of.packages,require,character.only=TRUE)
