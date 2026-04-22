required_packages <- c(
  "cli",
  "dplyr",
  "DT",
  "forcats",
  "ggplot2",
  "ggrepel",
  "here",
  "htmlwidgets",
  "janitor",
  "lintr",
  "lubridate",
  "patchwork",
  "plotly",
  "purrr",
  "quarto",
  "ragg",
  "readr",
  "renv",
  "scales",
  "styler",
  "tibble",
  "tidyr",
  "tidyverse",
  "viridisLite"
)

installed <- rownames(installed.packages())
missing <- setdiff(required_packages, installed)

if (length(missing) > 0) {
  install.packages(missing, repos = "https://cloud.r-project.org")
}

if (!requireNamespace("renv", quietly = TRUE)) {
  stop("Nie udało się zainstalować pakietu renv.", call. = FALSE)
}

if (!file.exists("renv.lock")) {
  message("Aby zamrozić zależności projektu, uruchom: renv::init(bare = TRUE); renv::snapshot()")
} else {
  message("Znaleziono renv.lock. Aby odtworzyć środowisko, uruchom: renv::restore()")
}
