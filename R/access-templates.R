#' @export
tikz_template <- function() {
  system.file("templates", "tikz-template.tex", package = "mrdags")
  # file.copy(from = system.file("templates", "tikz-template.tex", package = "mrdags"),
  #           to = "tikz-template.tex",
  #           overwrite = TRUE)
  # "tikz-template.tex"
}

