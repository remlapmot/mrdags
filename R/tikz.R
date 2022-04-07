#' @export
tikz_single_iv_dag <- function() {
  system.file("templates", "tikz-single-iv-dag.Rmd", package = "mrdags")
}

#' @export
tikz_multiple_iv_dag <- function() {
  system.file("templates", "tikz-multiple-iv-dag.Rmd", package = "mrdags")
}

#' @export
tikz_swig_iv_bw <- function() {
  system.file("templates", "tikz-swig-iv-bw.Rmd", package = "mrdags")
}

#' @export
tikz_swig_iv_color <- function() {
  system.file("templates", "tikz-swig-iv-color.Rmd", package = "mrdags")
}

#' @export
tikz_swig_mvmr_pleiotropy <- function() {
  system.file("templates", "tikz-swig-mvmr-pleiotropy.Rmd", package = "mrdags")
}

#' @export
tikz_swig_mvmr_confounder <- function() {
  system.file("templates", "tikz-swig-mvmr-confounder.Rmd", package = "mrdags")
}

#' @export
tikz_swig_mvmr_collider <- function() {
  system.file("templates", "tikz-swig-mvmr-collider.Rmd", package = "mrdags")
}

#' @export
tikz_swig_mvmr_mediator <- function() {
  system.file("templates", "tikz-swig-mvmr-mediator.Rmd", package = "mrdags")
}

#' @export
tikz_dag_mvmr_pleiotropy <- function() {
  system.file("templates", "tikz-dag-mvmr-pleiotropy.Rmd", package = "mrdags")
}

#' @export
tikz_dag_mvmr_confounder <- function() {
  system.file("templates", "tikz-dag-mvmr-confounder.Rmd", package = "mrdags")
}

#' @export
tikz_dag_mvmr_collider <- function() {
  system.file("templates", "tikz-dag-mvmr-collider.Rmd", package = "mrdags")
}

#' @export
tikz_dag_mvmr_mediator <- function() {
  system.file("templates", "tikz-dag-mvmr-mediator.Rmd", package = "mrdags")
}
