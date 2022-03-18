#' @export
tikz_template <- function() {
  system.file("templates", "tikz-template.tex", package = "mrdags")
}

#' @export
tikz_swig_template <- function() {
  system.file("templates", "tikz-template-swig-tr.tex", package = "mrdags")
}
