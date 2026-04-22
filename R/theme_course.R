theme_course <- function(base_size = 12, base_family = "") {
  ggplot2::theme_minimal(base_size = base_size, base_family = base_family) +
    ggplot2::theme(
      plot.title.position = "plot",
      plot.caption.position = "plot",
      plot.title = ggplot2::element_text(face = "bold", size = ggplot2::rel(1.15)),
      plot.subtitle = ggplot2::element_text(color = "#46515c"),
      plot.caption = ggplot2::element_text(color = "#68737d", size = ggplot2::rel(0.82)),
      axis.title = ggplot2::element_text(color = "#26313b"),
      axis.text = ggplot2::element_text(color = "#38444f"),
      panel.grid.minor = ggplot2::element_blank(),
      panel.grid.major.x = ggplot2::element_line(color = "#e6eaee", linewidth = 0.35),
      panel.grid.major.y = ggplot2::element_line(color = "#e6eaee", linewidth = 0.35),
      strip.text = ggplot2::element_text(face = "bold", color = "#26313b"),
      legend.position = "top",
      legend.title = ggplot2::element_text(face = "bold")
    )
}

scale_colour_course_d <- function(...) {
  ggplot2::scale_colour_viridis_d(option = "D", end = 0.88, ...)
}

scale_fill_course_d <- function(...) {
  ggplot2::scale_fill_viridis_d(option = "D", end = 0.88, ...)
}
