#' @importFrom dagitty dagitty
#' @importFrom ggdag ggdag tidy_dagitty theme_dag
#' @export
ggdag_single_iv_dag <- function() {
  mrdag <- dagitty::dagitty('dag {
    G -> X -> Y
    X <- U -> Y
    G [pos="0,0"]
    X [e, pos="1,0"]
    U [pos="1.5,0.4"]
    Y [o, pos="2,0"]
  }')
  
  ggmrdag <- ggdag::tidy_dagitty(mrdag)
  ggdag::ggdag(ggmrdag) + ggdag::theme_dag()
}

#' @importFrom ggdag dagify ggdag theme_dag
#' @export
ggdag_multiple_genotype_dag <- function() {
  coords <- list(x = c(
    G1 = 0,
    G2 = 0,
    G3 = 0,
    X = 1,
    Y = 2,
    U = 1.5
  ),
  y = c(
    G1 = 0.5,
    G2 = 0,
    G3 = -0.5,
    X = 0,
    Y = 0,
    U = 1
  ))
  
  mrdag <- ggdag::dagify(
    X ~ G1 + G2 + G3 + U,
    Y ~ X + U,
    exposure = "X",
    outcome = "Y",
    coords = coords
  )
  
  ggdag::ggdag(mrdag) + ggdag::theme_dag()
}
