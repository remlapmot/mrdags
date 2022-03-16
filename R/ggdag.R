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
