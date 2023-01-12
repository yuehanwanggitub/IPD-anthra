# In this file, write the R-code necessary to load your original data file
# (e.g., an SPSS, Excel, or SAS-file), and convert it to a data.frame. Then,
# use the function open_data(your_data_frame) or closed_data(your_data_frame)
# to store the data.

library(worcs)
install.packages("worcs")

install.packages("palmerpenguins")
library(palmerpenguins)

data <- palmerpenguins::penguins



open_data(
  data,
  filename = paste0(deparse(substitute(data)), ".csv"),
  codebook = paste0("codebook_", deparse(substitute(data)), ".Rmd"),
  value_labels = paste0("value_labels_", deparse(substitute(data)), ".yml"),
  worcs_directory = ".",
  save_expression = write.csv(x = data, file = filename, row.names = FALSE),
  load_expression = read.csv(file = filename, stringsAsFactors = TRUE),
  ...
)


install.packages("rmarkdown")
