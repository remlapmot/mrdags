#' @importFrom DiagrammeR grViz
#' @export
single_iv_dag <- function(noborders = TRUE) {
  if (noborders) {
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
  } else {
  DiagrammeR::grViz("
      digraph mrdag {

      graph [rankdir=TB]

      node [shape=ellipse]
      U [label='Confounders']

      node [shape=box, height=0.3, width=0.3]
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
}

#' @importFrom DiagrammeR grViz
#' @export
multiple_iv_dag <- function(noborders = TRUE) {
  if (noborders) {
  DiagrammeR::grViz("
      digraph mrdag {

      graph [rankdir=TB, layout=neato]

      node [shape=ellipse]
      U [label='Confounders', pos='3,1!']

      node [shape=plaintext, height=0.3, width=0.3]
      G1 [label='<I>G@_{1}</I>', pos='0,0.75!']
      G2 [label='<I>G@_{2}</I>', pos='0,0!']
      G3 [label='<I>G@_{3}</I>', pos='0,-0.75!']
      X [label='Phenotype', pos='2,0!']
      Y [label='Outcome', pos='4,0!']

      { rank = same; G2 X Y }

      G1 -> X 
      G2 -> X 
      G3 -> X 
      U -> X
      U -> Y
      X -> Y 
      }
      ", height = 200)
  } else {
  DiagrammeR::grViz("
      digraph mrdag {

      graph [rankdir=TB, layout=neato]

      node [shape=ellipse]
      U [label='Confounders', pos='3,1!']

      node [shape=box, height=0.3, width=0.3]
      G1 [label='<I>G@_{1}</I>', pos='0,0.75!']
      G2 [label='<I>G@_{2}</I>', pos='0,0!']
      G3 [label='<I>G@_{3}</I>', pos='0,-0.75!']
      X [label='Phenotype', pos='2,0!']
      Y [label='Outcome', pos='4,0!']

      { rank = same; G2 X Y }

      G1 -> X
      G2 -> X
      G3 -> X
      U -> X
      U -> Y
      X -> Y
      }
      ", height = 200)
  }
}
