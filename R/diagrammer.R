#' @export
single_iv_dag <- function() {
  DiagrammeR::grViz("
      digraph mrdag {

      graph [rankdir=TB]

      node [shape=ellipse]
      U [label='Confounders']

      node [shape=plaintext, height=0.3, width=0.3]
      G [label='Genotype']
      X [label='Phenotype']
      Y [label='Outcome']

      { rank = same; G X Y }

      G -> X [minlen=3]
      U -> X
      U -> Y
      X -> Y [minlen=3]
      }
      ", height = 200)
}
